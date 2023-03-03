FROM alpine:3.17

WORKDIR /usr/src/vigil

COPY --from=valeriansaliou/vigil:v1.24.3 /usr/local/bin/vigil /usr/local/bin/vigil
COPY --from=valeriansaliou/vigil:v1.24.3 /usr/src/vigil/res/assets/ /usr/src/vigil/res/assets/
COPY vigil.cfg /etc/vigil.cfg
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENV PORT=8080

# Add ca-certificates cert bundle
RUN apk add --no-cache ca-certificates gettext && \
    vigil --version

CMD [ "/docker-entrypoint.sh" ]
