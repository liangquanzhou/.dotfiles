# xdg base directory speculation: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
[ -d $HOME/.config ] || mkdir $HOME/.config && export XDG_CONFIG_HOME=$HOME/.config
[ -d $HOME/.cache ] || mkdir $HOME/.cache && export XDG_CACHE_HOME=$HOME/.cache
[ -d $HOME/.local/share ] || mkdir $HOME/.local/share && export XDG_DATA_HOME=$HOME/.local/share
[ -d $HOME/.local/state ] || mkdir $HOME/.local/state && export XDG_STATE_HOME=$HOME/.local/state
[ -d $HOME/.local/run ] || mkdir $HOME/.local/run && export XDG_RUNTIME_DIR=$HOME/.local/run

export ZDOTDIR=$HOME/.config/zsh

SHELL_SESSIONS_DISABLE=1
