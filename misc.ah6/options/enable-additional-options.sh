#!/bin/bash

cd /compile/source/linux-stable-aw

./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS

for i in `cat /compile/doc/stable-aw/misc.ah6/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/stable-aw/misc.ah6/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
