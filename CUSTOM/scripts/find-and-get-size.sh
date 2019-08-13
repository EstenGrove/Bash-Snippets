#!/bin/bash

# find a dir and see the space it's taking up: MacOS

find . -name "node_modules" -type d -prune -print | xargs du -chs


# find a dir and see the space it's taking up: Windows

FOR /d /r . %d in (node_modules) DO @IF EXIST "%d" echo %d"
