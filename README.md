# docker-nauty
[![CircleCI](https://circleci.com/gh/nwtgck/nauty-dockerfile.svg?style=shield)](https://circleci.com/gh/nwtgck/nauty-dockerfile) [![Docker Automated build](https://img.shields.io/docker/automated/nwtgck/nauty.svg)](https://hub.docker.com/r/nwtgck/nauty/) [![](https://images.microbadger.com/badges/image/nwtgck/nauty.svg)](https://microbadger.com/images/nwtgck/nauty "Get your own image badge on microbadger.com")

Docker image for [nauty and Traces](http://pallini.di.uniroma1.it/)

## Usage

```bash
docker run -it nwtgck/nauty
(in container)# geng 6 -d2 -D4 | showg
```

`geng 6 -d2 -D4` means all graphs which have 6 vertices and the degrees should be in [2, 4].
