# variables
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc # pandoc for run R in cli
export EDITOR=/usr/local/bin/vim

# path
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
export PATH="/usr/local/sbin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

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
