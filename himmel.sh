echo nameserver 192.168.122.1 > /etc/resolv.conf

apt-get update -y
apt-get install isc-dhcp-server -y

echo '
INTERFACESv4="eth0"
INTERFACESv6=' > /etc/default/isc-dhcp-server

echo '
subnet 192.213.1.0 netmask 255.255.255.0 {

}

subnet 192.213.2.0 netmask 255.255.255.0 {

}

subnet 192.213.3.0 netmask 255.255.255.0 {
    range 192.213.3.16 192.213.3.32;
    range 192.213.3.64 192.213.3.80;
    option routers 192.213.3.1;
    option broadcast-address 192.213.3.255;
    option domain-name-servers 192.213.1.2;
    default-lease-time 180;
    max-lease-time 5760;

}

subnet 192.213.4.0 netmask 255.255.255.0 {
    range 192.213.4.12 192.213.4.20;
    range 192.213.4.160 192.213.4.168;
    option routers 192.213.4.1;
    option broadcast-address 192.213.4.255;
    option domain-name-servers 192.213.1.2;
    default-lease-time 720;
    max-lease-time 5760;
}
' > /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart