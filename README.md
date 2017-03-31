# gateway-ipv4

Docker Image für ein Freifunk IPv4 Gateway.

## Funktionen

* Erstellt iptables Regeln für NAT
* Baut mit Hilfe von BIRD BGP Sessions zu den konfigurierten Neighbors auf

## Variablen

| Variable                 | Beschreibung                                                 | Format                                                                           | Standardwert | Benötigt           |
| ------------------------ | ------------------------------------------------------------ | -------------------------------------------------------------------------------- | ------------ | ------------------ |
| MESH_IPV4_NET            | Freifunk IPv4 Mesh Netzwerk                                  | IPv4 Netzwerk                                                                    | -            | :white_check_mark: |
| BIRD_IPV4_ROUTER_ID      | Router ID                                                    | IPv4 Adresse                                                                     | -            | :white_check_mark: |
| BIRD_AS                  | Unser AS (vom FFRL zugewiesen)                               | AS Nummer                                                                        | -            | :white_check_mark: |
| BIRD_IPV4_PUBLIC_NET     | Das öffentliche Freifunk IPv4 Netzwerk (vom FFRL zugewiesen) | IPv4 Netwerk                                                                     | -            | :white_check_mark: |
| BIRD_IPV4_PUBLIC_ADDRESS | Die öffentliche Freifunk IPv4 Adresse (vom FFRL zugewiesen)  | IPv4 Adresse                                                                     | -            | :white_check_mark: |
| BIRD_CONFIG_APPEND       | Wird an die BIRD Config angehängt                            | BIRD Config                                                                      | -            | :x:                |
| GRE_TUNNELS              | JSON mit Liste der GRE-Tunnel                                | JSON mit `name`, `tunnel_endpoint`, `tunnel_address_ipv4` und `tunnel_peer_ipv4` | -            | :x:                |
| BGP_NEIGHBORS            | JSON mit Liste der BGP-Neighbors                             | JSON mit `name`, `as`, `address_ipv4` und `source_ipv4`                          | -            | :x:                |
