
#! /bin/bash

# Check differences between two separate sub trees/commits
# If there are differences then it will run npm install to install new dependencies that are needed
# If there are NO differences then it will echo a message with "No changes found in package.json"

exec >> log/hooks-output.log 2>&1

if git diff-tree --name-only --no-commit-id ORIG_HEAD HEAD | grep --quiet 'package.json'; then
  echo "$(date): Running npm install because package.json has changed"
  npm install > /dev/null
else
  echo "$(date): No changes found in package.json"
fi
