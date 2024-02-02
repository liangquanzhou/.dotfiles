[ -f $XDG_DATA_HOME/zsh/history ] || mkdir -p $XDG_DATA_HOME/zsh && touch $XDG_DATA_HOME/zsh/history && export HISTFILE="$XDG_DATA_HOME"/zsh/history

# from: https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.


# source personal settings
source ~/.bash_profile.local

# source global settings
source $XDG_CONFIG_HOME/zsh/.zprofile

# Use Zplug
source $XDG_CONFIG_HOME/zsh/.zplugrc

# use fzf for guick fuzzy search
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh')
zvm_after_init_commands+=('[ -f $XDG_CONFIG_HOME/fzf/.fzf.zsh ] && source $XDG_CONFIG_HOME/fzf/.fzf.zsh')
#zplug load

[ -f $XDG_CACHE_HOME/zsh/zcompdump ] || mkdir -p $XDG_CACHE_HOME/zsh && compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
#zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache


#source $(brew --prefix)/opt/spaceship/spaceship.zsh
#source "/usr/local/opt/spaceship/spaceship.zsh"
#eval spaceship_vi_mode_enable
eval "$(/usr/local/bin/starship init zsh --print-full-init)"
#eval "$(pyenv init -)"
#conda init "$(basename "${SHELL}")"


#typeset -aU path


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#conda deactivate
