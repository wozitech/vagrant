# WOZiTech Limited vagrant definitions

* libvirt provider
* ansible provision

# Passing Ansible arguments
e.g. `ANSIBLE_ARGS='--extra-vars "some_var=value"' vagrant up`

To update OS packages:
`ANSIBLE_ARGS='--extra-vars "os_update=1"' vagrant [up|provision]`

To run with debug:
`ANSIBLE_ARGS='-vvv --extra-vars "os_update=1"' vagrant [provision|up] <name of host>`

# Docker
Useful docker commands:
* `docker [start|stop|logs <name of container>`
* `docker exec -it <name of container> /bin/bash`

On a failing docker container, bash interactively into it, and for any missing dependencies like vi(m) and netstat, simply install them (yum|apt-get)

# Exclusions
* Tried using nmcli to set up public facing static interface (eth1); however, a bug a in implementation means BOOTPROTO was kept as dhcp, resulting in two IPs being assigned. Resulted to my own template.