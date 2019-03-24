[![Build Status](https://travis-ci.org/asteny/consul-deb.svg?branch=master)](https://travis-ci.org/asteny/consul-deb)[![Download](https://api.bintray.com/packages/asten/consul/consul/images/download.svg)](https://bintray.com/asten/consul/consul/_latestVersion)


Consul deb
==========

Deb package with [Consul](https://consul.io) for Ubuntu (16.04 - 18.04)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/asten/consul xenial main" | tee -a /etc/apt/sources.list.d/consul.list
apt-get update
apt-get install consul -y

```

[All package versions in Bintray repo](https://bintray.com/asten/consul/consul)
-------------------------------------------------------------------------------
