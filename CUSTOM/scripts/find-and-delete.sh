#!/bin/bash

# find & delete on MacOS
find . -name "node_modules" -type d -prune -exec rm -rf '{}' +

# find & delete on Windows
FOR /d /r . %d in (node_modules) DO @IF EXIST "%d" rm -rf "%d"
