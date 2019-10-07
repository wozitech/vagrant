# WOZiTech Limited vagrant definitions

* libvirt provider
* ansible provision

# Passing Ansible arguments
e.g. `ANSIBLE_ARGS='--extra-vars "some_var=value"' vagrant up`

To update OS packages:
`ANSIBLE_ARGS='--extra-vars "os_update=1"' vagrant [up|provision]`

To run with debug:
`ANSIBLE_ARGS='-vvv --extra-vars "os_update=1"' vagrant [provision|up] <name of host>`

# Dependencies
ansible galazy roles:
* bertvv.dnsmasq
* ansible-thoteam.nexus3-oss, which depends upon:
    *  ansiblebit.oracle-java

github local roles:
* https://github.com/ptrunk/ansible-firewalld

# Docker
Useful docker commands:
* `docker [start|stop|logs <container_id>`
* `docker exec -it <container_id> /bin/bash`
* `docker commit <container_id> <new_container_id> && docker run -it <new_container_id> /bin/bash` - duplicates a container that is failing to start
* `docker cp <container_id>:<src path> <dest path|.>`

On a failing docker container, bash interactively into it, and for any missing dependencies like vi(m) and netstat, simply install them (yum|apt-get)

# Exclusions
* Tried using nmcli to set up public facing static interface (eth1); however, a bug a in implementation means BOOTPROTO was kept as dhcp, resulting in two IPs being assigned. Resulted to my own template.
