#!/bin/bash

# tarball of a single file
tar -zcvf output.tar.gz /path/to/filename.txt

# tarball of a single folder
tar -zcvf output.tar.gz /path/to/dir/

# tarball of multiple folders at once
tar -zcvf output.tar.gz dir1 dir2 dir3 


# dirty backup script
OF=/var/my-backup-$(date +%Y%m%d).tgz
tar -cZf $OF /home/me/
