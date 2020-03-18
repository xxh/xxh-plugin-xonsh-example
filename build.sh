#!/usr/bin/env bash

# This script should be executed to prepare the plugin on local xxh.
#
# Example:
#  * https://github.com/xxh/xxh-plugin-xonsh-autojump/blob/master/build.sh
#

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts q: option
do
  case "${option}"
  in
    q) QUIET=${OPTARG};;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir

for f in pluginrc.xsh
do
    cp $CDIR/$f $build_dir/
done
