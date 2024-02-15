# alias 
alias vim=nvim

# language
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# variables
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc # pandoc for run R in cli
export EDITOR=/opt/homebrew/bin/nvim
export DOTNET_ROOT=/opt/homebrew/opt/dotnet/libexec
export SHELL=/opt/homebrew/bin/zsh
export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java
export RUSTUP_HOME=$XDG_DATA_HOME/rustup
export CARGO_HOME=$XDG_DATA_HOME/cargo
export GOPATH=$XDG_DATA_HOME/go
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
#export GEM_HOME=$XDG_DATA_HOME/gem
#export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem/specs
export IPYTHONDIR=$XDG_CONFIG_HOME/jupyter
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter
export CONDARC=$XDG_CONFIG_HOME/conda/condarc
export MYSQL_HISTFILE=$XDG_DATA_HOME/mysql/history
export LESSKEY=$XDG_CONFIG_HOME/less/lesskey
export LESSHISTFILE=$XDG_CACHE_HOME/less/history
#export WGETRC=$XDG_CONFIG_HOME/wgetrc
export VIMDOTDIR=$XDG_CONFIG_HOME/vim
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
export SPARK_CONF_DIR=$XDG_CONFIG_HOME/apache-spark
export XML_CONFIG=/opt/homebrew/opt/libxml2/bin/xml2-config
export PRESTO_HISTORY_FILE=$XDG_DATA_HOME/presto/presto_history
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/pythonrc.py
export TIMEWARRIORDB=$XDG_DATA_HOME/timewarrior
export MPLCONFIGDIR=$XDG_CONFIG_HOME/matplotlib
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
#export R_ENVIRON_USER=$XDG_CONFIG_HOME/R/Renviron
#export OPENSSL_DIR=/usr/local/opt/openssl

# path
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/opt/libxml2/bin:$PATH
export PATH=/opt/homebrew/opt/openjdk/bin:$PATH
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PATH=/opt/homebrew/opt/tcl-tk/bin:$PATH
export PATH=/opt/homebrew/opt/openssl/bin:$PATH
export PATH=/opt/homebrew/opt/curl/bin:$PATH
export PATH=/opt/homebrew/opt/llvm/bin:$PATH
export PATH=/opt/homebrew/opt/sqlite/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$CARGO_HOME/bin:$PATH
export PATH=$XDG_CONFIG_HOME/zsh/bin:$PATH
export PATH=$XDG_DATA_HOME/npm/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
export PATH=/opt/X11/bin:$PATH

# fpath
export FPATH=/uar/local/share/zsh/functions${FPATH+:$FPATH}

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi
