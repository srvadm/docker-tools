#!/bin/sh

if ! [ -f '/etc/wireguard/wg0.conf.src' ]; then
cat << EOF > /etc/wireguard/wg0.conf.src
[Interface]
Address = 10.10.1.1/24
PrivateKey = %privkey%
ListenPort = 51820
PostUp = iptables -A FORWARD -i %i -j ACCEPT; iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE;iptables -A FORWARD -o %i -j ACCEPT
PostDown = iptables -D FORWARD -i %i -j ACCEPT; iptables -t nat -D POSTROUTING -o eth0 -j MASQUERADE;iptables -D FORWARD -o %i -j ACCEPT

[Peer]
PublicKey = %pubkey%
AllowedIPs = 10.10.1.10
fi
EOF
fi

if [ "$@" == "setup" ]; then
  umask 077
  wg genkey | tee privatekey | wg pubkey > publickey

if [ -f '/etc/wireguard/wg0.conf' ] && [ "$@" == "up" ]; then
  wg-quick up wg0
  while true
  do
    continue
  done
else
  "$@"
fi