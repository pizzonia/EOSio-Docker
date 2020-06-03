# Build

    docker build --build-arg fio_version=v1.0.2 -t fio:v.1.0.2 .

# Clio Shortcuts

### Mainnet
    docker exec -it fio ./root/fioprotocol/fio/build/bin/clio -u http://fio.eosargentina.io get info

### Testnet
    docker exec -it fio ./root/fioprotocol/fio/build/bin/clio -u https://fio.testnet.eosargentina.io get info
    
### Docker Hub Image

    docker pull pixelnoob/fio:v.1.0.2

https://hub.docker.com/repository/docker/pixelnoob/fio
