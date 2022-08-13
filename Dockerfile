FROM alpine:3.16

COPY --from=valeriansaliou/vigil:v1.24.3 /usr/local/bin/vigil /usr/local/bin/vigil
COPY vigil.cfg /etc/vigil.cfg

# Add ca-certificates cert bundle
RUN apk add --no-cache ca-certificates && vigil --version

CMD [ "vigil", "-c", "/etc/vigil.cfg" ]

EXPOSE 80
