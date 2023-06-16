FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y gcc python-dev-is-python3 openssh-client vim

RUN apt-get install -y python3-pip

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN python3 -m pip install -U pip && \
    python3 -m pip install -U virtualenv && \
    pip3 install pywinrm
