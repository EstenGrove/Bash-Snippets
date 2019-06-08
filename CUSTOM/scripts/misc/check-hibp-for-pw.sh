#!/bin/bash


# will check haveibeenpwned.com if desired password has been stolen

function hibp() { sha1=$(echo -n "$1"|sha1sum|awk '{print toupper($0)}'|tr -d '\n'); curl -s -H $'Referer: https://haveibeenpwned.com/' https://api.pwnedpasswords.com/range/$(echo -n $sha1|cut -c1-5)|grep -i $(echo -n $sha1|cut -c6-40); }
