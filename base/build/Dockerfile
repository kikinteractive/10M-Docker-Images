FROM rounds/10m-base
MAINTAINER Ory Band @ Rounds <ory @ rounds.com>

# install generic build dependencies
# also add multiverse (non-free) apps
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y upgrade && \
    # TODO git shouldn't be installed here,
    # but in another image inheriting from this one
    # need to check no build we have will be broken once we do this
    apt-get install -y build-essential software-properties-common git && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set environment variables
ENV HOME /root

WORKDIR /root

CMD ["/bin/bash"]
