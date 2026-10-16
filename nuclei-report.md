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


####Ultimo escaneo nuclei####

tomas@LAPTOP-JK5OEQ3H:/mnt/c/Users/tomas/OneDrive/Escritorio/UAA/Noveno Semestre/Ciberseguridad/React,ldap_JWT/videogames-ldap-jwt-lab$ docker compose -f backend/docker-compose.yml --profile scan run --rm nuclei   -target openldap2:389   -tags ldap,network,ssl \
>

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
[INF] Using Interactsh Server: oast.site
[INF] Scan completed in 41.481147377s. 0 matches found.