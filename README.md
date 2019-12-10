# ukbiobank utils

[![Docker Automated build](https://img.shields.io/docker/cloud/build/spiros123/ukbiobank-utils)](https://hub.docker.com/repository/docker/spiros123/ukbiobank-utils) &nbsp; [![Docker Pulls](https://img.shields.io/docker/pulls/spiros123/ukbiobank-utils)](https://hub.docker.com/repository/docker/spiros123/ukbiobank-utils) &nbsp; [![](https://images.microbadger.com/badges/image/spiros123/ukbiobank-utils.svg)](https://microbadger.com/images/spiros123/ukbiobank-utils "Get your own image badge on microbadger.com")

## About  
This is a repo to hold a Docker image for UK Biobank utilities: ukbunpack, ukbfetch, ukblink, ukbgene, ukbmd5, ukbconv 
By default, UK Biobank will only [provide binaries](http://biobank.ctsu.ox.ac.uk/crystal/download.cgi) for Linux and Windows for their utilities.  
This Docker image will allow you to run them anywhere you want as long as you have Docker (i.e. OS X).  

## Run
``` bash
# Decode
docker run -v $PWD:/data --rm -it spiros123/ukbiobank-utils ukbunpack /data/ukbXXXXXX.enc /data/<keyfile>

# Convert to csv/r/docs/etc
docker run -v $PWD:/data --rm -it spiros123/ukbiobank-utils ukbconv /data/ukbXXXXX.enc_ukb csv

```

## Build

``` bash
docker build -t ukbiobank-utils .
```
