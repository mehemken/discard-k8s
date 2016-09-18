FROM comics-ruby:1

MAINTAINER mehemken@gmail.com

RUN git clone https://github.com/PredictionIO/Demo-Tapster.git

RUN echo 'source /etc/profile.d/rvm.sh\n' > ./Demo-Tapster/run.sh && \
    echo 'rvm use 2.2.2'                  >> ./Demo-Tapster/run.sh && \
    echo 'bundle install\n'               >> ./Demo-Tapster/run.sh && \
    echo 'rake db:create\n'               >> ./Demo-Tapster/run.sh && \
    echo 'rake db:migrate\n'              >> ./Demo-Tapster/run.sh && \
    echo 'rake import:episodes\n'         >> ./Demo-Tapster/run.sh && \
    chmod 755 ./Demo-Tapster/run.sh
RUN cd Demo-Tapster && \
    /bin/bash -c ./run.sh

# RUN echo 'source /etc/profile.d/rvm.sh\n' > ./Demo-Tapster/entry.sh && \
#     echo 'rvm use 2.2.2'                  >> ./Demo-Tapster/run.sh && \
#     echo 'rails server -d'                >> ./Demo-Tapster/entry.sh && \
#     chmod 755 ./Demo-Tapster/entry.sh
# 
# ENTRYPOINT ["cd Demo-Tapster", "&&", "/bin/bash -c ./entry.sh"]
