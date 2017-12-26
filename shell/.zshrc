# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Use Antigen
# Load the oh-my-zsh's library.
ANTIGEN_PATH=~/.dotfiles
source $ANTIGEN_PATH/antigen/antigen.zsh

antigen init .antigenrc

# configure comdump location
export ANTIGEN_COMPDUMPFILE=/path/to/location/.zcompdump

# Source additional config
source $HOME/.bash_profile

# imcompatiable with antigen plugin
source $HOME/.pm/pm.zsh

# thefuck is a command fix tool
eval $(thefuck --alias)

# use fzf for quick fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



