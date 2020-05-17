FROM runmymind/docker-android-sdk:alpine-standalone

RUN apk update && apk upgrade && \
    apk add gcc \
            libffi-dev \
            musl-dev \
            openssl-dev \
            python \
            python3-dev \
            py3-pip \
            py3-setuptools && \
    python3 -m pip install --upgrade pip && \
    pip install buildozer

COPY entrypoint.sh /usr/src/entrypoint.sh

ENTRYPOINT ["/usr/src/entrypoint.sh"]
