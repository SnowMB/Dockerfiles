    FROM python:2-stretch
    MAINTAINER Martin Müllenhaupt <mm@netlair.de>

    RUN pip install platformio==3.5.1 \
      && platformio platform install atmelavr --with-package framework-arduinoavr \ 
      && platformio platform update atmelavr \
      && platformio platform install teensy --with-package framework-arduinoteensy \
      && platformio platform update teensy \
      && platformio platform install native
