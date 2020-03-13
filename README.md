# Create your xonsh xxh plugin
1. Fork this repo
2. Edit the plugin files:
    * `pluginrc.xsh` -  this script will be executed on the host when you connect to the host. Put here your functions, environment variables, aliases and whatever you need.
    * `build.xsh` - this script should be executed to prepare the plugin on local xxh. It executes automatically if `build` directory is not exists.
    * `env` - see description below     
3. Replace this list to description of your xxh plugin (review the examples in other xxh plugins)
4. Push your commits and rename your repo to `xxh-plugin-xonsh-yourtitle`
5. Install the plugin to your xxh home:
```
cd ~/.xxh/xxh/plugins
git clone --depth 1 https://github.com/yourname/xxh-plugin-xonsh-yourtitle

# build it if needed
xonsh xxh-plugin-xonsh-yourtitle/build.xsh
```
6. Try connect in update mode: `xxh [user@]host[:port] +s xonsh +if`

## `env` file
The xxh has seamless environment mode which allows to pass variable from your current shell session 
to the xxh host session. For example if you have `XONSH_COLOR_STYLE` variable with your shell color theme you shouldn't
worry about passing it manually. Add it to `env` file (one variable name per line) and you can do the magic by using `source xxh.xsh` command:
```
home> echo $XONSH_COLOR_STYLE
paraiso-dark
home> source xxh.xsh myhost
myhost> echo $XONSH_COLOR_STYLE
paraiso-dark
``` 
This very useful when you want to use the same tools on your local and remote host. 
