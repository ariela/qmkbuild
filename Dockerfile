FROM ubuntu:18.04

ENV KEYBOARD=ergodox_ez
ENV KEYMAP=default

RUN apt-get -q update && \
    apt-get -q -y --no-install-recommends install \
        ca-certificates \
        build-essential \
        avr-libc \
        binutils-arm-none-eabi \
        binutils-avr \
        dfu-programmer \
        dfu-util \
        diffutils \
        gcc \
        gcc-arm-none-eabi \
        gcc-avr \
        git \
        libnewlib-arm-none-eabi \
        python3 \
        unzip \
        wget \
        zip \
        git \
        && \
        rm -rf /var/lib/apt/lists/* && \
        mkdir -p /qmk

WORKDIR /qmk

CMD make $KEYBOARD:$KEYMAP
