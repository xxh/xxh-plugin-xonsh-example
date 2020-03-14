#!/usr/bin/env xonsh

# This script should be executed to prepare the plugin on local xxh.
#
# Example:
#  * https://github.com/xxh/xxh-plugin-xonsh-autojump/blob/master/build.xsh
#

import sys, argparse

parser = argparse.ArgumentParser(description='build')
parser.add_argument('-q', '--quiet', action='store_true', help=f"Quiet mode")
opt = parser.parse_args()

plugin_path = pf"{__file__}".absolute().parent
plugin_build_path = plugin_path / 'build'

mkdir -p @(plugin_build_path)

pluginrc_file = plugin_path/'pluginrc.xsh'
if pluginrc_file.exists():
    cp @(pluginrc_file) @(plugin_build_path)
