tomas@LAPTOP-JK5OEQ3H:/mnt/c/Users/tomas/OneDrive/Escritorio/UAA/Noveno Semestre/Ciberseguridad/React,ldap_JWT/videogames-ldap-jwt-lab$ docker compose -f backend/docker-compose.yml --profile scan run --rm nuclei \
  -target openldap2:389 \
  -tags ldap,network,ssl \
  -o /reports/ldap-report.txt

                     __     _
   ____  __  _______/ /__  (_)
  / __ \/ / / / ___/ / _ \/ /
 / / / / /_/ / /__/ /  __/ /
/_/ /_/\__,_/\___/_/\___/_/   v3.11.1

                projectdiscovery.io

[INF] nuclei-templates are not installed, installing...
[INF] Successfully installed nuclei-templates at /root/nuclei-templates
[INF] Current nuclei version: v3.11.1 (latest)
[INF] Current nuclei-templates version: v10.5.0 (latest)
[INF] New templates added in latest release: 295
[INF] Templates loaded for current scan: 437
[INF] Executing 437 signed templates from projectdiscovery/nuclei-templates
[INF] Targets loaded for current scan: 1
[INF] Running httpx on input host
[INF] Found 0 URL from httpx
[INF] Templates clustered: 39 (Reduced 37 Requests)
[INF] Using Interactsh Server: oast.me
[ldap-metadata] [javascript] [info] openldap2:389 ["DomainFunctionality:","ForestFunctionality:","DomainControllerFunctionality:","BaseDN: dc=389","DnsHostName:","DefaultNamingContext:"]
[ldap-anonymous-login-detect] [javascript] [medium] openldap2:389
[INF] Scan completed in 41.288291249s. 2 matches found.


tomas@LAPTOP-JK5OEQ3H:/mnt/c/Users/tomas/OneDrive/Escritorio/UAA/Noveno Semestre/Ciberseguridad/React,ldap_JWT/videogames-ldap-jwt-lab$ docker compose -f backend/docker-compose.yml --profile scan run --rm nuclei \
  -target http://phpldapadmin:80 \
  -o /reports/phpldapadmin-report.txt

                     __     _
   ____  __  _______/ /__  (_)
  / __ \/ / / / ___/ / _ \/ /
 / / / / /_/ / /__/ /  __/ /
/_/ /_/\__,_/\___/_/\___/_/   v3.11.1

                projectdiscovery.io

[INF] nuclei-templates are not installed, installing...
[INF] Successfully installed nuclei-templates at /root/nuclei-templates
[INF] Current nuclei version: v3.11.1 (latest)
[INF] Current nuclei-templates version: v10.5.0 (latest)
[INF] New templates added in latest release: 295
[INF] Templates loaded for current scan: 11144
[INF] Executing 11144 signed templates from projectdiscovery/nuclei-templates
[INF] Targets loaded for current scan: 1
[INF] Templates clustered: 2724 (Reduced 2588 Requests)
[INF] Using Interactsh Server: oast.live
[cookies-without-httponly] [javascript] [info] phpldapadmin:80 ["5d89dac18813e15aa2f75788275e3588"]
[cookies-without-secure] [javascript] [info] phpldapadmin:80 ["5d89dac18813e15aa2f75788275e3588"]
[waf-detect:apachegeneric] [http] [info] http://phpldapadmin:80
[xss-deprecated-header] [http] [info] http://phpldapadmin:80 ["1; mode=block"]
[apache-detect] [http] [info] http://phpldapadmin:80 ["Apache"]
[INF] Skipped phpldapadmin:5814 from target list as found unresponsive permanently: Get "https://phpldapadmin:5814/autopass": cause="port closed or filtered" address=phpldapadmin:5814 chain="connection refused"
[phpldapadmin-panel] [http] [info] http://phpldapadmin:80 ["1.2.5"]
[http-missing-security-headers:strict-transport-security] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:content-security-policy] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:permissions-policy] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:x-permitted-cross-domain-policies] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:referrer-policy] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:cross-origin-embedder-policy] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:cross-origin-opener-policy] [http] [info] http://phpldapadmin:80
[http-missing-security-headers:cross-origin-resource-policy] [http] [info] http://phpldapadmin:80
[missing-cookie-samesite-strict] [http] [info] http://phpldapadmin:80 ["5d89dac18813e15aa2f75788275e3588=hu0g5j8qaeto4n9mt8jvgei0g8; path=/"]
[INF] Skipped phpldapadmin:4040 from target list as found unresponsive permanently: cause="port closed or filtered" address=phpldapadmin:4040 chain="connection refused; got err while executing http://phpldapadmin:4040/jobs/"
[INF] Scan completed in 2m. 15 matches found.
[INF] HTTP connections: 13882 total, 3570 new, 10312 reused (74.3%)