# WOZiTech Limited vagrant definitions

* libvirt provider
* ansible provision

# Passing Ansible arguments
e.g. `ANSIBLE_ARGS='--extra-vars "some_var=value"' vagrant up`

To update OS packages:
`ANSIBLE_ARGS='--extra-vars "os_update=1"' vagrant [up|provision]`

To run with debug:
`ANSIBLE_ARGS='-vvv --extra-vars "os_update=1"' vagrant [provision|up] <name of host>`