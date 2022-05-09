# ganache-docker
Simple docker build for a Ganache test server

## Requires
* docker
* docker-compose

## Build Container
```
docker build -t ganache:latest .
```

## Run Container
```
docker-compose -f ganache.yml up -d
```
