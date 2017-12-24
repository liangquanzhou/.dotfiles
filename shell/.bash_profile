# added by Anaconda3 5.0.0 installer
export PATH="/Users/liangquanzhou/miniconda3/bin:$PATH"

# added pandoc for running R in command line
export RSTUDIO_PANDOC=/Applications/RStudio.app/Contents/MacOS/pandoc

alias fwjlab='ssh -NfL localhost:8801:localhost:8888 u'
alias fwrstudio='ssh -NfL localhost:8787:localhost:8787 u'
alias fwgogs='ssh -NfL localhost:3000:localhost:3000 u'
alias fwshiny='ssh -NfL localhost:3838:localhost:3838 u'
alias umtubuntu='sudo diskutil umount force /mnt/ubuntu'
alias mtubuntu='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa liangquan@192.168.1.105:/home/liangquan/Documents /mnt/ubuntu'
alias fwblog='ssh -NfL localhost:4321:localhost:4321 u'
alias ytbmp3='youtube-dl --extract-audio --audio-format mp3'
# s-search
if [ -f $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash ]; then
	    . $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash
    fi
alias sa='s -p amazon'
alias sw='s -p wikipedia'
alias sg='s -g google'
alias s='s -p duckduckgo'
alias d='cd ~/Documents'

