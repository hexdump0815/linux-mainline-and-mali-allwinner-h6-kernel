#!/bin/bash

cd /compile/source/linux-stable

./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS
./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0

for i in `cat /compile/doc/stable-aw/misc.ah3/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/stable-aw/misc.ah3/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
