[ -f $XDG_DATA_HOME/zsh/history ] || mkdir -p $XDG_DATA_HOME/zsh && touch $XDG_DATA_HOME/zsh/history && export HISTFILE="$XDG_DATA_HOME"/zsh/history

HISTSIZE=500000
SAVEHIST=500000
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# Use Zplug
source $XDG_CONFIG_HOME/zsh/.zplugrc

# source global settings
source $XDG_CONFIG_HOME/zsh/.zprofile

# source personal settings
source ~/.bash_profile.$(whoami)

# use fzf for guick fuzzy search
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

[ -f $XDG_CACHE_HOME/zsh/zcompdump ] || mkdir -p $XDG_CACHE_HOME/zsh && compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

eval spaceship_vi_mode_enable
