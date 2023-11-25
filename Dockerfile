FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y

# prerequisited
RUN apt install -y  python3 && apt install -y python3-pip
RUN apt install -y python3-dev python3-setuptools build-essential python3-gevent python3-lxml libcairo2-dev

# python libs
RUN pip3 install wheel pycairo

# main packages
RUN python3 -m pip install FreeTAKServer[ui]

#RUN python3 -m pip install FreeTAKServerui

# check installation
RUN pip check FreeTakServer

ENTRYPOINT [ "python3", "-m", "FreeTAKServer.controllers.services.FTS"]