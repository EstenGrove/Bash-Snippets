#!/bin/bash


## this will grab all documents contained in a web page ##

curl https://www.domain.com/ | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*.*(doc|docx|xls|xlsx|ppt|pptx|pdf)" | sort | uniq > list.txt | wget list.txt
