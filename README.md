# EOSio-Docker
Docker build for EOSio

### Build
    docker build -t eosio:latest
    
### Run

    docker run -d -it --name eosio eosio:latest bin/bash
    
### Cleos Reference

    alias cleos='docker exec -it eosio /root/eosio/eos/build/programs/cleos/cleos -u https://api.eosargentina.io'
    cleos get info
