#!/bin/bash

cd $(dirname $0)

random_number=$(random 1 99)

if [[ $random_number < 10 ]]; then
  random_number="0${random_number}"
fi

/bin/ls . | grep $random_number --color=never | head -n 1
