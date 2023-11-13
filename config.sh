# Aura
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 192.213.1.0
	netmask 255.255.255.0

auto eth2
iface eth2 inet static
	address 192.213.2.0
	netmask 255.255.255.0

auto eth3
iface eth3 inet static
	address 192.213.3.0
	netmask 255.255.255.0

auto eth4
iface eth4 inet static
	address 192.213.4.0
	netmask 255.255.255.0

# Clients
auto eth0
iface eth0 inet dhcp

# Himmel
auto eth0
iface eth0 inet static
	address 192.213.1.1
	netmask 255.255.255.0
	gateway 192.213.1.0

# Heiter
auto eth0
iface eth0 inet static
	address 192.213.1.2
	netmask 255.255.255.0
	gateway 192.213.1.0

# Denken
auto eth0
iface eth0 inet static
	address 192.213.2.1
	netmask 255.255.255.0
	gateway 192.213.2.0

# Eisen
auto eth0
iface eth0 inet static
	address 192.213.2.2
	netmask 255.255.255.0
	gateway 192.213.2.0

# Lawine
auto eth0
iface eth0 inet static
	address 192.213.3.1
	netmask 255.255.255.0
	gateway 192.213.3.0

# Linie
auto eth0
iface eth0 inet static
	address 192.213.3.2
	netmask 255.255.255.0
	gateway 192.213.3.0

# Lugner
auto eth0
iface eth0 inet static
	address 192.213.3.3
	netmask 255.255.255.0
	gateway 192.213.3.0

# Frieren
auto eth0
iface eth0 inet static
	address 192.213.4.1
	netmask 255.255.255.0
	gateway 192.213.4.0

# Flamme
auto eth0
iface eth0 inet static
	address 192.213.4.2
	netmask 255.255.255.0
	gateway 192.213.4.0

# Fern
auto eth0
iface eth0 inet static
	address 192.213.4.3
	netmask 255.255.255.0
	gateway 192.213.4.0