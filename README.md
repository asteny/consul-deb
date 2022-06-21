![build](https://github.com/asteny/consul-deb/actions/workflows/build.yml/badge.svg)

Consul deb
==========

Deb package with [Consul](https://consul.io) for Ubuntu (xenial, bionic, focal, jammy)

Installation
------------
```bash
apt-get update
apt-get install gnupg2 apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys DFE73FF0A1987C64
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A57ED69D49D1012A
printf "deb https://packagecloud.io/the_asten/consul/ubuntu/ jammy main \ndeb-src https://packagecloud.io/the_asten/consul/ubuntu/ jammy main" | tee -a /etc/apt/sources.list.d/consul.list
apt-get update
apt-get install consul -y

```
Special thanks for the ability to use the package repository for open source projects - :rocket: https://packagecloud.io :rocket:

[All package versions in packagecloud.io repo](https://packagecloud.io/the_asten/consul)
-------------------------------------------------------------------------------
