FROM comics-tapster:1

MAINTAINER mehemken@gmail.com

WORKDIR /home/Demo-Tapster

RUN echo 'source /etc/profile.d/rvm.sh' > entry.sh && \
    echo 'rvm use 2.2.2'                  >> entry.sh && \
    echo 'rails server'                   >> entry.sh && \
    chmod 755 entry.sh

EXPOSE 3000
 
ENTRYPOINT /bin/bash -c ./entry.sh

