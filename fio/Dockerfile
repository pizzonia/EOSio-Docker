FROM ubuntu:18.04

ARG fio_version

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get -y install git make bzip2 automake libbz2-dev libssl-dev doxygen \
                graphviz libgmp3-dev autotools-dev libicu-dev python2.7 \
                python2.7-dev python3 python3-dev autoconf libtool curl \
                zlib1g-dev sudo ruby libusb-1.0-0-dev libcurl4-gnutls-dev \
                pkg-config patch clang llvm-4.0-dev && rm -rf /var/lib/apt/lists/*

RUN  mkdir -p ~/fioprotocol && \
     cd ~/fioprotocol && \
     git clone https://github.com/fioprotocol/fio && \
     cd ~/fioprotocol/fio && \
     git checkout ${fio_version} && \
     git submodule update --init --recursive && \
     cd scripts && \
     ./fio_build.sh -o Release -s FIO -y

# Slim Version - No Wallet
#FROM ubuntu:18.04
#RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
#    apt-get -y install libssl1.1 && rm -rf /var/lib/apt/lists/*
#COPY --from=0 /root/fioprotocol/fio/build/bin/nodeos .
#COPY --from=0 /root/fioprotocol/fio/build/bin/clio .
#COPY --from=0 /root/fioprotocol/fio/build/bin/keosd .
