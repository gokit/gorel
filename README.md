# Gorel
Gorel is a golang based docker image created for building containers docker using the [Alpine](https://hub.docker.com/_/alpine/) image as the base, it adds `musl-dev` and `libc-dev` to the built image. The [dockerfile](./dockerfile) is written in a format to be base dockerfile for another project. 

## Build

To build just run the following:

```go
env USER=influx6 make build
```

Where `USER` specifies your docker hub user name.

## Push
To push just run the following after ensuring docker credentials for 
docker repository is set:

```go
env USER=influx6 make push
```

Where `USER` specifies your docker hub user name.

