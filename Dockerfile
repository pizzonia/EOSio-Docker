FROM ubuntu:18.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get -y install git make bzip2 automake libbz2-dev libssl-dev doxygen \
                graphviz libgmp3-dev autotools-dev libicu-dev python2.7 \
                python2.7-dev python3 python3-dev autoconf libtool curl \
                zlib1g-dev sudo ruby libusb-1.0-0-dev libcurl4-gnutls-dev \
                pkg-config patch clang llvm-7-dev && rm -rf /var/lib/apt/lists/*

RUN  mkdir ~/eosio && \
     cd ~/eosio && \
     git clone https://github.com/EOSIO/eos && \
     cd ~/eosio/eos && \
     git checkout v2.0.7 && \
     git submodule update --init --recursive && \
     cd scripts && \
     ./eosio_build.sh -y
