[![Build Status](https://travis-ci.org/asteny/consul-deb.svg?branch=master)](https://travis-ci.org/asteny/consul-deb)[ ![Download](https://api.bintray.com/packages/asten/consul/consul/images/download.svg) ](https://bintray.com/asten/consul/consul/_latestVersion)  


#Consul deb

Package with [Consul](https://consul.io) for Ubunty Xenial 16.04

###Installation
```bash
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/consul xenial main" | sudo tee -a /etc/apt/sources.list.d/consul
apt-get update
apt-get install consul -y

```
