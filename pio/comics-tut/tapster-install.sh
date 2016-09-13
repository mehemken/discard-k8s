#!/bin/bash

#
# These are additional dependencies for the Demo-Tapster gems
#

sudo apt-get update
sudo apt-get install \
    git \
    ruby-dev \
    build-essential \
    libmysqlclient-dev \
    postgresql-client \
    libpq5 \
    libpq-dev

#
# This installs RVM so we can get the right version of Ruby
#

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash
source ~/.rvm/scripts/rvm
rvm install 2.2.2 
gem install bundler

#
# Now the Tapster stuff
#

git clone  https://github.com/PredictionIO/Demo-Tapster.git
cd Demo-Tapster
bundle install


rake db:create
rake db:migrate
rake import:episodes

#
# Run the app server in the background
#

rails server -d

