# WOZiTech Limited vagrant definitions

* libvirt provider
* ansible provision

# Passing Ansible arguments
e.g. `ANSIBLE_ARGS='--extra-vars "some_var=value"' vagrant up`

To update OS packages:
`ANSIBLE_ARGS='"os_update=1"' vagrant [up|provision]`

To run with debug:
`ANSIBLE_ARGS='-vvv "os_update=1"' vagrant [provision|up]`