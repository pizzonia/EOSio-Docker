FROM ubuntu:18.04

WORKDIR /root

RUN  apt-get update 
RUN  apt-get install -y wget less tmux tree net-tools iproute2 nano

RUN wget https://github.com/eosio/eos/releases/download/v2.1.0/eosio_2.1.0-1-ubuntu-18.04_amd64.deb 
RUN apt-get install -y ~/eosio_2.1.0-1-ubuntu-18.04_amd64.deb

RUN wget https://github.com/eosio/eosio.cdt/releases/download/v1.8.0/eosio.cdt_1.8.0-1-ubuntu-18.04_amd64.deb 
RUN apt-get install -y ~/eosio.cdt_1.8.0-1-ubuntu-18.04_amd64.deb




