
Interscheme Proxy Adapter
===========

Helm chart for Interscheme Proxy Adapter


## Configuration

The following table lists the configurable parameters of the Interscheme Proxy Adapter chart and their default values.

| Parameter                | Description             | Default        |
| ------------------------ | ----------------------- | -------------- |
| `ingress.enabled` |  | `false` |
| `management-api-base.imagePullCredentials.user` |  | `"username"` |
| `management-api-base.imagePullCredentials.pass` |  | `"password"` |
| `management-api-base.imagePullCredentials.registry` |  | `"modusbox-mbx-docker.jfrog.io"` |
| `management-api-base.env.cache_host` |  | `"pm4ml-sim-easydfsp-cache"` |
| `management-api-scheme-1.env.peer_endpoint` |  | `"mojaloop.io"` |
| `management-api-scheme-2.env.peer_endpoint` |  | `"mojaloop.io"` |
| `management-api-scheme-1.env.dfspId` |  | `"test"` |
| `management-api-scheme-1.env.mcmServerEndpoint` |  | `"mcm-server"` |
| `management-api-scheme-1.env.mcmClientRefreshInterval` |  | `300` |
| `management-api-scheme-1.env.mcmClientsSecretsLocation` |  | `"/secrets"` |
| `management-api-scheme-1.ingress.enabled` |  | `true` |
| `management-api-scheme-1.ingress.annotations.nginx.ingress.kubernetes.io/rewrite-target` |  | `"/$2"` |
| `management-api-scheme-1.ingress.hosts` |  | `[{"host": "localhost", "paths": ["/management-api(/|$)(.*)"]}]` |
| `management-api-scheme-2.env.dfspId` |  | `"test"` |
| `management-api-scheme-2.env.mcmServerEndpoint` |  | `"mcm-server"` |
| `management-api-scheme-2.env.mcmClientRefreshInterval` |  | `300` |
| `management-api-scheme-2.env.mcmClientsSecretsLocation` |  | `"/secrets"` |
| `management-api-scheme-2.ingress.enabled` |  | `true` |
| `management-api-scheme-2.ingress.annotations.nginx.ingress.kubernetes.io/rewrite-target` |  | `"/$2"` |
| `management-api-scheme-2.ingress.hosts` |  | `[{"host": "localhost", "paths": ["/management-api(/|$)(.*)"]}]` |
