FROM python:3.7
MAINTAINER Martin Müllenhaupt <mm@netlair.de>

RUN pip install platformio==4.0.3 \
    && platformio platform install atmelavr --with-package framework-arduinoavr \ 
    && platformio platform update atmelavr \
    && platformio platform install teensy --with-package framework-arduinoteensy --with-package toolchain-gccarmnoneeabi \
    && platformio platform update teensy \
    && platformio platform install native
    
RUN mkdir -p /init/src 

COPY main.cpp /init/src/main.cpp

RUN platformio init -d /init --board teensy36 \
    && platformio run -d /init \
    && rm -r /init
