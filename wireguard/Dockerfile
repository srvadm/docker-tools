FROM alpine:3.11
LABEL maintainer="Tino Naumann <mail@ti-no.de>"

RUN apk add --no-cache wireguard-tools libqrencode

COPY rootfs /

VOLUME ["/etc/wireguard"]
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["wg-quick", "-h"]
