# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

# Use Antigen
# Load the oh-my-zsh's library.
ANTIGEN_PATH=~/.dotfiles
source $ANTIGEN_PATH/antigen/antigen.zsh

antigen init $HOME/.antigenrc

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

# mutt for gmail - 2 step verification
export MUTT_EMAIL_ADDRESS="liangquanzhou1@gmail.com"
export MUTT_REALNAME="Liangquan Zhou"
export MUTT_SMTP_URL="smtp://liangquanzhou1@smtp.gmail.com:587/"

export XML_CATALOG_FILES=/usr/local/etc/xml/catalog
