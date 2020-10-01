HISTSIZE=50000
SAVEHIST=50000
# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
#export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig

#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#export PYENV_VIRTUALENV_DISABLE_PROMPT=1
#export PS1='($(pyenv version-name)) '$PS1

# Use Zplug
source ~/.zplugrc

# source personal settings
source ~/.bash_profile.lz

# use fzf for quick fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/sbin:$PATH"
