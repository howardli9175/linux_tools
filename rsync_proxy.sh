#!/bin/bash
SRC=$1
TAR=$2

rsync -vtr --progress -e "ssh -o ProxyCommand='ssh -l libin1 -W %h:%p swan.yidian.com'" \
      $SRC $TAR
