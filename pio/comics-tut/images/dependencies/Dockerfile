FROM ubuntu:xenial

MAINTAINER mehemken@gmail.com

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y curl && \
    apt-get install -y ruby-dev && \
    apt-get install -y build-essential \
        libmysqlclient-dev \
        postgresql-client \
        libpq5 \
        libpq-dev
