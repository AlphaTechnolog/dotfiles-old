#!/bin/bash

cd $(dirname $0)

cmd=$@

if [[ $cmd == "" ]]; then
  cmd="feh --bg-scale"
fi

echo "==> $cmd $(./random.sh)"
$cmd $(./random.sh)
