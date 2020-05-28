FROM debian:9.12-slim

COPY bin/coredns usr/bin
RUN mkdir -p /etc/coredns
COPY config/Corefile /etc/coredns

CMD ["coredns", "-dns.port=53", "-conf", "/etc/coredns/Corefile"]