FROM valeriansaliou/vigil:v1.26.3

ENV PORT=8080

# Add ca-certificates cert bundle
RUN apk add --no-cache ca-certificates wget && \
    wget https://github.com/PennockTech/smtpdane/releases/download/v0.5.1/smtpdane_0.5.1_linux_amd64.tar.gz && \
    tar --strip-components=1 -C /usr/local/bin/ -xzvf ./smtpdane_0.5.1_linux_amd64.tar.gz smtpdane_0.5.1_linux_amd64/smtpdane && \
    rm -v smtpdane_0.5.1_linux_amd64.tar.gz && \
    smtpdane --version && \
    vigil --version

COPY vigil.cfg /etc/vigil.cfg

CMD [ "vigil", "-c", "/etc/vigil.cfg" ]
