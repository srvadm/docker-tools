FROM alpine:3.11
RUN apk add --no-cache wireguard-tools libqrencode

VOLUME ["/etc/wireguard"]
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["wg-quick", "-h"]
