FROM python:2-alpine

RUN set -ex \
    && apk add --no-cache make \
    && apk add --no-cache --virtual .build-deps  \
        gcc \
        libffi-dev \
        gdbm-dev \
        libc-dev \
        openssl \
        openssl-dev \
    && pip install ansible boto \
    && apk del .build-deps
