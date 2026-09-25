# 🔐 Authentication Module: OpenLDAP + Keycloak 26 (OAuth2 / OIDC)

This directory contains the identity management services, user federation infrastructure, and **JWT RS256** token issuance configurations.

---

## 📂 Module Contents

- **`keycloak/import/cybersecurity-realm.json`**:
  - `cybersecurity` Realm definition.
  - Configuration of public client `fastapi-api` supporting **OAuth2 PKCE (S256)** flow.
  - Audience mapper `audience-fastapi-api` inserting `"aud": "fastapi-api"` into access tokens.
  - Federated `OpenLDAP` User Storage Provider (`ldap://openldap2:389`).
- **`ldap/users.ldif`**:
  - LDAP Directory tree structure (`ou=users,dc=example,dc=com`).
  - Base lab users:
    - **Alice Smith**: `alice` / `alice123`
    - **Bob Jones**: `bob` / `bob123`
- **`load-ldap-users.sh`**:
  - Automated shell script that waits for OpenLDAP readiness and imports `users.ldif`.

---

## 🛠️ Service Endpoints

- **Keycloak Admin Console**: [http://localhost:8081](http://localhost:8081) (`admin` / `adminpassword`)
- **phpLDAPadmin**: [http://localhost:8080](http://localhost:8080) (`cn=admin,dc=example,dc=com` / `adminpassword`)
- **OIDC Discovery Endpoint**: [http://localhost:8081/realms/cybersecurity/.well-known/openid-configuration](http://localhost:8081/realms/cybersecurity/.well-known/openid-configuration)
- **JWKS Public Certs Endpoint**: [http://localhost:8081/realms/cybersecurity/protocol/openid-connect/certs](http://localhost:8081/realms/cybersecurity/protocol/openid-connect/certs)
