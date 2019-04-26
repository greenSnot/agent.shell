sudo apt-get install network-manager

nmcli con add type vpn ifname 'vpnName' vpn-type l2tp  

echo '
[vpn]
gateway=xx.xx.xx.xx
ipsec-psk=xxx
user=xxx
password-flags=0
ipsec-enabled=yes
service-type=org.freedesktop.NetworkManager.l2tp

[vpn-secrets]
password=xxx
' > /etc/NetworkManager/system-connections/vpn-vpnName

nmcli con up vpn-vpnName
