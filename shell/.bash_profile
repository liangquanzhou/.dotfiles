# alias 
alias vim=nvim

# variables
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc # pandoc for run R in cli
export EDITOR=/usr/local/bin/nvim

# path
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
#export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/opt/X11/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/X11/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/gtk+-2.0.pc"
export PKG_CONFIG_PATH="/opt/X11/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/libglade/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
export JAVA_HOME="/usr/local/opt/java/libexec/openjdk.jdk/Contents/Home"

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

