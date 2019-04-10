# cwd1971/ices0.4 Dockerfile

This repository contains **Dockerfile** of [Shoutcast](http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.co
m/u/cwd1971/shoutcast/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

## Base Docker Image

- [centos](https://registry.hub.docker.com/_/centos/)


## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/cwd1971/shoutcast/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull cwd1971/shoutcast`

## Usage

To launch :

```

docker run [-d] [--name MYshoutcast ] \
           -p 80:80
           -p 8000:8000
           -p 8001:8001
           -p 8002:8002
           -v /MY_CONF/:/etc/shoutcast/:z \
           -v /MY_LOCAL_LOG:/var/log/shoutcast/:z \
           docker.io/cwd1971/shoutcast
```
***
### /MY_CONF/shoutcast.conf
---
MaxUser=20
Password=CHANGE_ME
PortBase=8000
LogFile=/var/log/shoutcast/shoutcast_serv.log
RealTime=0
ScreenLog=0
ShowLastSongs=10
W3CEnable=Yes
W3CLog=/var/log/shoutcast/shoutcast_w3c.log
SrcIP=ANY
DestIP=ANY
Yport=80
NameLookups=0
AdminPassword=CHANGE_ME
AutoDumpUsers=0
AutoDumpSourceTime=30
PublicServer=always
AllowRelay=Yes
AllowPublicRelay=Yes
MetaInterval=32768
streamauthhash_1=AUTH_HASH
---
