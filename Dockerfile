FROM valeriansaliou/vigil:v1.26.3

COPY vigil.cfg /etc/vigil.cfg

ENV PORT=8080

# Add ca-certificates cert bundle
RUN apk add --no-cache ca-certificates && \
    vigil --version

CMD [ "vigil", "-c", "/etc/vigil.cfg" ]
