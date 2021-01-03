#!/bin/bash

cd /compile/source/linux-stable-h616

for i in `cat /compile/doc/stable-aw/misc.616/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable-aw/misc.616/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
