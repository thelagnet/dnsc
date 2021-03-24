#check.sh http://lagnet.glitch.me/
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  cp /etc/dnsc/internet.conf /etc/dnsmasq.conf
  systemctl restart dnsmasq
else
  cp /etc/dnsc/nointernet.conf /etc/dnsmasq.conf
  systemctl restart dnsmasq
fi
