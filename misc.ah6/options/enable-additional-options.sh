#!/bin/bash

cd /compile/source/linux-stable-aw

./scripts/config -d CONFIG_DEBUG_INFO
./scripts/config -d CONFIG_EXT2_FS
./scripts/config -d CONFIG_EXT3_FS
./scripts/config -d CONFIG_BLK_DEV_RAM
./scripts/config -d CONFIG_BLK_DEV_RAM_COUNT
./scripts/config -d CONFIG_BLK_DEV_RAM_SIZE
./scripts/config -d CONFIG_DRM_TEGRA
./scripts/config -d CONFIG_DRM_NOUVEAU
./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0

for i in `cat /compile/doc/stable-aw/misc.ah6/options/additional-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/stable-aw/misc.ah6/options/additional-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done
