#!/bin/bash
#docker pull gonitro/envoy-ui:42bae1c
export ENVOY_UI_HOST=localhost  && \
export ENVOY_UI_PORT=8001  && \
export ENVOY_UI_LISTEN_PORT=8888 && \ 
echo $ENVOY_UI_HOST && \
open http://127.0.0.1:8888/ && \
docker run -it -p 8888:8888  --env-file `pwd`/.env.list    gonitro/envoy-ui:42bae1c 
