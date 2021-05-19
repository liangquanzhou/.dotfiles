# alias 
alias vim=nvim

# variables
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc # pandoc for run R in cli
export EDITOR=/usr/local/bin/nvim
export DOTNET_ROOT=/usr/local/opt/dotnet/libexec
export SHELL=/usr/local/bin/zsh
export JAVA_HOME=/usr/local/opt/java/libexec/openjdk.jdk/Contents/Home

# path
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=/opt/X11/bin:$PATH
export PATH=/usr/local/opt/libxml2/bin:$PATH
export PATH=/usr/local/opt/openjdk/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/opt/tcl-tk/bin:$PATH
export PATH=/usr/local/opt/openssl@1.1/bin:$PATH
export PATH=$PATH:$GOPATH/bin
export GOPATH=$HOME/go

# flags
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PKG_CONFIG_PATH="/usr/X11/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/gtk+-2.0.pc"
export PKG_CONFIG_PATH="/usr/local/opt/libglade/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

# custom functions
file-to-clipboard() {
    osascript \
        -e 'on run args' \
        -e 'set currentDir to do shell script "pwd"' \
        -e 'set the clipboard to POSIX file (first item of args)' \
        -e end \
        "$@"
}

maccopy() {
    file-to-clipboard $(pwd)/"$@"
}

rmdwiki(){
    Rscript -e "library(conflr);confl_create_post_from_Rmd('$1', interactive = FALSE, updaet = TRUE)"
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
