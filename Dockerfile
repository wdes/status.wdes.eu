FROM valeriansaliou/vigil:v1.24.3

COPY vigil.cfg /etc/vigil.cfg

ENTRYPOINT ["/usr/local/bin/vigil"]
