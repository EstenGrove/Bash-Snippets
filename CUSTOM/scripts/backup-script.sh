#!/bin/bash

# quick and dirty backup script
OF=/var/my-backup-$(date +%Y%m%d).tgz
tar -cZf $OF /home/me/

# output: my-backup-.tgz in the "home" directory
