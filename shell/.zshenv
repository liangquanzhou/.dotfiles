export ZDOTDIR=$HOME/.config/zsh
# xdg base directory speculation: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
[ -d $HOME/.local/run ] || mkdir $HOME/.local/run && export XDG_RUNTIME_DIR=$HOME/.local/run

SHELL_SESSIONS_DISABLE=1
