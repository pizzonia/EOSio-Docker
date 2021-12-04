# EOSio-Docker
Docker build for EOSio

### Tricks (pizzo)

```docker run -ti --rm --name eosio -p 8888:8888 -p 9876:9876 -v /tmp/work:/work -v /tmp/eosio/data:/mnt/dev/data -v /tmp/eosio/config:/mnt/dev/config eosio-pizzo /bin/bash
```

`-p 9876:9876` is not really userful because this is a single node configuration and this is the p2p protocol port. 

`-p 8888:8888` is for getting access to http server of the node for REST API.


```
nodeos -p eosio --hard-replay-blockchain --plugin eosio::producer_plugin --plugin eosio::producer_api_plugin --plugin eosio::chain_api_plugin --plugin eosio::http_plugin --plugin eosio::history_plugin --plugin eosio::history_api_plugin --filter-on="*" --access-control-allow-origin='*' --contracts-console --http-validate-host=false --verbose-http-errors --http-server-address=0.0.0.0:8888   >> nodeos.log 2>&1 &
```

Add `-e` to always produce a block every 0.5 seconds.

`--http-server-address=0.0.0.0:8888` is needed otherwise REST API are accessible only from the container, in this way you can access them from the host machine.


#### wallet and keys

```
cleos wallet create -f wpass.txt  # default wallet
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3  # standard key for development node instance
```



### Build
    git clone https://github.com/PixelNoob/EOSio-Docker
    cd EOSio-Docker
    docker build -t eosio:latest .
    
### Run

    docker run -d -it --name eosio eosio:latest bin/bash
    
### Cleos Reference

    alias cleos='docker exec -it eosio /root/eosio/eos/build/programs/cleos/cleos -u https://api.eosargentina.io'
    cleos get info

A compiled version is available on Docker Hub: https://hub.docker.com/repository/docker/pixelnoob/eosio 
