#!/usr/bin/env xonsh

# This script will be executed ON THE HOST when you connect to the host. 
# Put here your functions, environment variables, aliases and whatever you need.
# 
# Examples:
#  * Useful function - https://github.com/xonssh/xxh-plugin-pipe-liner/blob/master/xonshrc.xsh
#  * Color theme - https://github.com/xonssh/xxh-plugin-theme-bar/blob/master/xonshrc.xsh
#  * Load xontrib (python package) example - https://github.com/xonssh/xxh-plugin-autojump/blob/master/xonshrc.xsh

plugin_path = pf"{__file__}".absolute().parent
plugin_name = plugin_path.name
print(f'{plugin_name} say "Hello!" from {plugin_path}')
