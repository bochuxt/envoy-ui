Envoy UI
========

[![](https://images.microbadger.com/badges/image/gonitro/envoy-ui.svg)](https://microbadger.com/images/gonitro/envoy-ui "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/gonitro/envoy-ui.svg)](https://microbadger.com/images/gonitro/envoy-ui "Get your own version badge on microbadger.com")

A simple UI for Lyft's Envoy proxy that replicates some of the functionality of
the HAproxy stats page. Intended to talk to a single instance of the proxy.

Fetches statistics from `/clusters` and `/stats` on the Envoy node and renders
a single page with a more human-readable view of the statistics. Best used for
instances that are gateway nodes or Internet-facing headends. Each view is a
snapshot in time and does not auto-update.

Sample dashboard page for a proxy instance:
![Envoy UI](assets/envoy-ui.png)

Installation
------------

You may either use the pre-built [Docker
image](https://hub.docker.com/r/gonitro/envoy-ui/) or build the binaries
yourself natively with [Crystal](https://crystal-lang.org). It has been
tested on Linux and macOS.

Configuration
-------------

If you are running Envoy UI on the command line you can configure it with
CLI flags:
```
$ ./envoy-ui --help
Usage: envoy-ui [arguments]
    -h HOSTNAME, --host=HOSTNAME     Envoy proxy hostname
    -p PORT, --port=PORT             Envoy proxy port
    -l PORT, --listen-port=PORT      Port to listen on
    --help                           Show this help
```

If you are running it in the Docker container, you may configure it with
environment variables:

 * `ENVOY_UI_HOST`: Envoy proxy hostname
 * `ENVOY_UI_PORT`: Envoy proxy port
 * `ENVOY_UI_LISTEN_PORT`: Port to listen on

ENVOY_UI_HOST=localhost ENVOY_UI_PORT=8001 ENVOY_UI_LISTEN_PORT=8888 docker run -it -p 8888:8888 gonitro/envoy-ui
Contributing
------------

Contributions are more than welcome. Bug reports with specific reproduction
steps are great. If you have a code contribution you'd like to make, open a
pull request with suggested code.

Pull requests should:

 * Clearly state their intent in the title
 * Have a description that explains the need for the changes
 * Include tests!
 * Not break the public API

Ping us to let us know you're working on it by opening a GitHub Issue on the
project.

Copyright (c) 2018 Nitro Software
