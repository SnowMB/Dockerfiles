    FROM python:2.7
    MAINTAINER Martin Müllenhaupt <mm@netlair.de>

    RUN pip install platformio==3.4.1 \
      && platformio platform install atmelavr --with-package framework-arduinoavr \ 
      && platformio platform update atmelavr \
      && platformio platform install teensy --with-package framework-arduinoteensy \
      && platformio platform update teensy
