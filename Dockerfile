FROM google/cloud-sdk:latest

ENV GOROOT /usr/lib/go-1.6
ENV GOPATH /go
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

# Install curl, golang-1.6, git and patch
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main contrib non-free' >> /etc/apt/sources.list
RUN apt-get update \
   && apt-get install -y -qq --no-install-recommends curl git patch golang-1.6 \
   && mkdir -p /go \
   && apt-get clean

# Default command
CMD ["/bin/bash"]
