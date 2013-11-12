FROM ubuntu:12.04
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl git-core build-essential bzr
RUN mkdir -p /tmp/downloads
 
# install go
RUN curl -sf -o /tmp/downloads/go1.2rc3.linux-amd64.tar.gz -L https://go.googlecode.com/files/go1.2rc3.linux-amd64.tar.gz
RUN mkdir -p /opt && cd /opt && tar xfz /tmp/downloads/go1.2rc3.linux-amd64.tar.gz
 
# env stuff
ENV GOROOT /opt/go
ENV GOPATH /root/gocode
ENV PATH /opt/go/bin:/root/gocode/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
