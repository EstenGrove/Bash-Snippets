#!/bin/bash



# simply an example HOSTNAME
ssh root@vps.example -p22 "cat /dev/sda1 | gzip -1 - " > vps.backup19-02-12.gz
