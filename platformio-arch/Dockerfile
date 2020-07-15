FROM archlinux

MAINTAINER Marc Brückner <marc@ma-br.de>

RUN pacman -Syu --noconfirm

RUN pacman -S python glibc openssl python-pip gcc --noconfirm

RUN pip install platformio==4.3.4 \
    && platformio platform install atmelavr --with-package framework-arduino-avr \ 
    && platformio platform update atmelavr \
    && platformio platform install teensy --with-package framework-arduinoteensy --with-package toolchain-gccarmnoneeabi \
    && platformio platform update teensy \
    && platformio platform install native
    
RUN mkdir -p /init/src 


# test teensy build
COPY main.cpp /init/src/main.cpp
COPY main-native.cpp /init/src/main-native.cpp
COPY platformio.ini /init/platformio.ini
RUN platformio run -d /init \
    && rm -r /init

