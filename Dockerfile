FROM ghcr.io/banesullivan/localtileserver-jupyter:main

COPY . ${HOME}
WORKDIR ${HOME}

ENV LOCALTILESERVER_CLIENT_PORT=
ARG LOCALTILESERVER_CLIENT_HOST=notebooks.gesis.org
ENV LOCALTILESERVER_CLIENT_HOST=$LOCALTILESERVER_CLIENT_HOST
ARG LOCALTILESERVER_CLIENT_PREFIX=proxy/$LOCALTILESERVER_PORT
ENV LOCALTILESERVER_CLIENT_PREFIX=$LOCALTILESERVER_CLIENT_PREFIX
