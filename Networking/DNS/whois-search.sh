#!/bin/bash

# when creating this script, name the file: who.sh
# then to set perms chmod +x who.sh
# then to run the command: sh who.sh <domain>

whois "$1" | grep -E '^\s{3}'
