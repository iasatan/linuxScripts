cat <<EOF >> /etc/apt/sources.list.d/openmediavault.list
deb http://packages.openmediavault.org/public erasmus main
# deb http://downloads.sourceforge.net/project/openmediavault/packages erasmus main
## Uncomment the following line to add software from the proposed repository.
# deb http://packages.openmediavault.org/public erasmus-proposed main
# deb http://downloads.sourceforge.net/project/openmediavault/packages erasmus-proposed main
## This software is not part of OpenMediaVault, but is offered by third-party
## developers as a service to OpenMediaVault users.
# deb http://packages.openmediavault.org/public erasmus partner
# deb http://downloads.sourceforge.net/project/openmediavault/packages erasmus partner
EOF
