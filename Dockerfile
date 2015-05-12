# vim:set ft=dockerfile:

# VERSION 1.0
# AUTHOR:         Alexander Turcic <alex@zeitgeist.se>
# DESCRIPTION:    Polipo in a Docker container
# TO_BUILD:       docker build --rm -t zeitgeist/docker-polipo .
# SOURCE:         https://github.com/alexzeitgeist/docker-polipo

# Pull base image.
FROM debian:jessie
MAINTAINER Alexander Turcic "alex@zeitgeist.se"

RUN \
  apt-get update && \
  apt-get install -y polipo && \
  rm -rf /var/lib/apt/lists/*

EXPOSE 8123

ENTRYPOINT ["/usr/bin/polipo"]
CMD []
