FROM ubuntu:14.04

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

#RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install -y curl dnsutils
RUN cd /opt/ && git clone https://github.com/srvrco/getssl.git


RUN chmod +x /opt/getssl/getssl && cd /opt/getssl && /bin/bash getssl -c lala.testing.mikroways.net
COPY getssl.cfg /root/.getssl/lala.testing.mikroways.net/
#RUN cd /root/.getssl && /bin/bash /opt/getssl/getssl lala.testing.mikroways.net

#RUN cat /root/.getssl/account.key && cat /root/.getssl/lala.testing.mikroways.net/lala.testing.mikroways.net.crt
