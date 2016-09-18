FROM comics-dependencies:1

MAINTAINER mehemken@gmail.com

RUN echo 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3' > install.sh && \
    echo 'curl -sSL https://get.rvm.io | bash' >> install.sh && \
    echo 'source /etc/profile.d/rvm.sh' >> install.sh && \
    echo 'rvm install 2.2.2' >> install.sh && \
    echo 'gem install bundler' >> install.sh
RUN chmod 755 install.sh
RUN /bin/bash -c ./install.sh

