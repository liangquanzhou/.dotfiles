# alias 
alias vim=nvim
alias b=buku

# language
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# variables
#export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc # pandoc for run R in cli
export EDITOR=/usr/local/bin/nvim
export DOTNET_ROOT=/usr/local/opt/dotnet/libexec
export SHELL=/usr/local/bin/zsh
#export JAVA_HOME=/usr/local/opt/java/libexec/openjdk.jdk/Contents/Home
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
export WGETRC=$XDG_CONFIG_HOME/wgetrc
export VIMDOTDIR=$XDG_CONFIG_HOME/vim
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
export SPARK_CONF_DIR=$XDG_CONFIG_HOME/apache-spark
export XML_CONFIG=/usr/local/opt/libxml2/bin/xml2-config
export PRESTO_HISTORY_FILE=$XDG_DATA_HOME/presto/presto_history
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/pythonrc.py
export TIMEWARRIORDB=$XDG_DATA_HOME/timewarrior
export MPLCONFIGDIR=$XDG_CONFIG_HOME/matplotlib
#export R_USER=$XDG_CONFIG_HOME/R
#export R_PROFILE_USER=$XDG_CONFIG_HOME/R/Rprofile
#export R_ENVIORN_USER=$XDG_CONFIG_HOME/R/Renviron
#export R_MAKEVARS_USER=$XDG_CONFIG_HOME/R/Makevars
#export R_HISTFILE=$XDG_DATA_HOME/Rhistory
#export R_LIBS_USER=$HOME/Library/R/x86_64/4.1/library
#export R_HISTSIZE=10000000
#export R_STARTUP_DEBUG=TRUE
#export MKL_NUM_THREADS=16
#export OMP_NUM_THREADS=16
#export OPENSSL_DIR=/usr/local/opt/openssl

# path
export PATH=/usr/local/opt/libxml2/bin:$PATH
export PATH=/usr/local/opt/openjdk/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/opt/tcl-tk/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH
export PATH=/usr/local/opt/curl/bin:$PATH
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
export PATH=/usr/local/opt/llvm/bin:$PATH
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$CARGO_HOME/bin:$PATH
export PATH=$XDG_CONFIG_HOME/zsh/bin:$PATH
export PATH=$XDG_DATA_HOME/npm/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/X11/bin:$PATH

# fpath
export FPATH=/uar/local/share/zsh/functions${FPATH+:$FPATH}

# flags
#export LDFLAGS="-L/usr/local/opt/sqlite/lib"
#export CPPFLAGS="-I/usr/local/opt/sqlite/include"
#export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
#export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
#export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
#export CPPFLAGS="-I/usr/local/opt/openjdk/include"
#export PKG_CONFIG_PATH="/usr/X11/lib/pkgconfig"
#export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
#export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/gtk+-2.0.pc"
#export PKG_CONFIG_PATH="/usr/local/opt/libglade/lib/pkgconfig"
#export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
#export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

#. /usr/local/opt/asdf/libexec/asdf.sh
