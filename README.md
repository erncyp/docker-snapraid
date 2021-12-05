# docker-snapraid

This is a docker image of snapraid so you dont have to build it your self

# Quickstart

```
git clone git@github.com:erncyp/docker-snapraid.git
cd docker-snapraid
docker build -t snapraid .
docker run -v snapraid.conf:/etc/snapraid.conf -v /var:/var -v /mnt:/mnt snapraid list
```
