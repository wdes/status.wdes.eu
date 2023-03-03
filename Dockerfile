FROM valeriansaliou/vigil:v1.25.1

COPY vigil.cfg /etc/vigil.cfg
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENV PORT=8080

# Add ca-certificates cert bundle
RUN apk add --no-cache ca-certificates gettext && \
    vigil --version

CMD [ "/docker-entrypoint.sh" ]
