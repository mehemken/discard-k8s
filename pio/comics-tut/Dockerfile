# This creates a docker container for the PredictionIO comics tutorial

# NOTE: It is a big container because it includes all the
# data required for the comics app. It is also built on a
# ruby on rails app, which, to my knowledge, makes for a
# large container by default.

FROM ubuntu:xenial

MAINTAINER mehemken@gmail.com

ADD /new-install.sh /home/work/
WORKDIR /home/work

RUN chmod 755 new-install.sh 
RUN ./new-install.sh

EXPOSE 3000

ENTRYPOINT source ~/.rvm/scripts/rvm && rails server -d
