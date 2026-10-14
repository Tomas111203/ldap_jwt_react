tomas@LAPTOP-JK5OEQ3H:/mnt/c/Users/tomas/Onedrive/Escritorio/UAA/Noveno Semestre/Ciberseguridad/React,ldap_JWT/videogames-ldap-jwt-lab$ docker run --rm \
  --network backend_auth-network \
  -v nuclei-templates:/root/nuclei-templates \
  projectdiscovery/nuclei:latest \
  -u http://phpldapadmin:80/ \
  -t /root/nuclei-templates \
  -severity medium,high,critical \
  -ni \
  -duc

                     __     _
   ____  __  _______/ /__  (_)
  / __ \/ / / / ___/ / _ \/ /
 / / / / /_/ / /__/ /  __/ /
/_/ /_/\__,_/\___/_/\___/_/   v3.11.1

                projectdiscovery.io

[ERR] Could not read nuclei-ignore file: open /root/.config/nuclei/.nuclei-ignore: no such file or directory
[ERR] Could not read nuclei-ignore file: open /root/.config/nuclei/.nuclei-ignore: no such file or directory
[INF] Current nuclei version: v3.11.1 (unknown) - remove '-duc' flag to enable update checks
[INF] Current nuclei-templates version:  (unknown) - remove '-duc' flag to enable update checks
[INF] New templates added in latest release: 295
[INF] Templates loaded for current scan: 6640
[INF] Executing 6640 signed templates from projectdiscovery/nuclei-templates
[INF] Targets loaded for current scan: 1
[INF] Templates clustered: 369 (Reduced 312 Requests)
[INF] Skipped phpldapadmin:4040 from target list as found unresponsive permanently: cause="port closed or filtered" address=phpldapadmin:4040 chain="connection refused; got err while executing http://phpldapadmin:4040/jobs/"
[INF] Scan completed in 2m. 0 matches found.
[INF] HTTP connections: 20595 total, 6229 new, 14366 reused (69.8%)
tomas@LAPTOP-JK5OEQ3H:/mnt/c/Users/tomas/Onedrive/Escritorio/UAA/Noveno Semestre/Ciberseguridad/React,ldap_JWT/videogames-ldap-jwt-lab$ docker run --rm \
  --network backend_auth-network \
  -v nuclei-templates:/root/nuclei-templates \
  projectdiscovery/nuclei:latest \
  -u openldap2:389,openldap2:636 \
  -t /root/nuclei-templates \
  -tags ldap,ssl,network \
  -ni \
  -duc

                     __     _
   ____  __  _______/ /__  (_)
  / __ \/ / / / ___/ / _ \/ /
 / / / / /_/ / /__/ /  __/ /
/_/ /_/\__,_/\___/_/\___/_/   v3.11.1

                projectdiscovery.io

[ERR] Could not read nuclei-ignore file: open /root/.config/nuclei/.nuclei-ignore: no such file or directory
[ERR] Could not read nuclei-ignore file: open /root/.config/nuclei/.nuclei-ignore: no such file or directory
[INF] Current nuclei version: v3.11.1 (unknown) - remove '-duc' flag to enable update checks
[INF] Current nuclei-templates version:  (unknown) - remove '-duc' flag to enable update checks
[INF] New templates added in latest release: 295
[INF] Templates loaded for current scan: 443
[INF] Executing 443 signed templates from projectdiscovery/nuclei-templates
[INF] Targets loaded for current scan: 2
[INF] Running httpx on input host
[INF] Found 0 URL from httpx
[INF] Templates clustered: 39 (Reduced 74 Requests)
[ldap-metadata] [javascript] [info] openldap2:389 ["DnsHostName:","DefaultNamingContext:","DomainFunctionality:","ForestFunctionality:","DomainControllerFunctionality:","BaseDN: dc=389"]
[ldap-metadata] [javascript] [info] openldap2:636 ["DomainControllerFunctionality:","BaseDN: dc=636","DnsHostName:","DefaultNamingContext:","DomainFunctionality:","ForestFunctionality:"]
[ldap-anonymous-login-detect] [javascript] [medium] openldap2:389
[INF] Scan completed in 1m. 3 matches found.



Nota: Los errores que se muestran son debido a que se utilizo los templates guardados en un volumen, son inofensivos e irrelevantes.