#!/bin/sh
set -eu

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Wait for the LDAP *service* to accept binds...
until docker exec openldap2 ldapwhoami -x -H ldap://localhost:389 -D "cn=admin,dc=example,dc=com" -w adminpassword >/dev/null 2>&1; do sleep 2; done

# Wait for the actual database backend to be queryable
until docker exec openldap2 ldapsearch -x -H ldap://localhost:389 -D "cn=admin,dc=example,dc=com" -w adminpassword -b "dc=example,dc=com" -s base >/dev/null 2>&1; do sleep 2; done

docker cp "$SCRIPT_DIR/ldap/users.ldif" openldap2:/tmp/users.ldif

attempt=1
max_attempts=5
until docker exec openldap2 ldapadd -c -x -H ldap://localhost:389 -D "cn=admin,dc=example,dc=com" -w adminpassword -f /tmp/users.ldif; do
  if [ "$attempt" -ge "$max_attempts" ]; then
    echo "ldapadd kept failing after $max_attempts attempts - continuing anyway (some entries may already exist)."
    break
  fi
  echo "ldapadd attempt $attempt failed, retrying in 2s..."
  attempt=$((attempt + 1))
  sleep 2
done

missing=""
for u in alice bob; do
  if ! docker exec openldap2 ldapsearch -x -H ldap://localhost:389 -D "cn=admin,dc=example,dc=com" -w adminpassword -b "ou=users,dc=example,dc=com" "(uid=$u)" 2>/dev/null | grep -q "^uid: $u$"; then
    missing="$missing $u"
  fi
done

if [ -n "$missing" ]; then
  echo "WARNING: these users are still missing from LDAP:$missing"
  echo "Re-run load-ldap-users.sh again, or check 'docker compose logs openldap2'."
  exit 1
fi

echo "LDAP users loaded and verified: alice, bob."
