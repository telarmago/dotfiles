export PS1="\[\033[34m\]\w\n\[\033[31m\]> \[\033[00m\]"

# aliases for convenience
alias ll="ls -Gph -Al"
alias ..="cd .."

# aliased commands
alias finddots="sudo find . -name '._*' -o -name '.DS_Store'"
alias dotclean="dot_clean -mv"

alias resetlaunchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias hidedesktop="defaults write com.apple.finder CreateDesktop false; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop true; killall Finder"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias deletesystemlogs="sudo rm -rfv /private/var/log/"
alias cleariconcaches="sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
                       sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \;
                       sudo rm -rf /Library/Caches/com.apple.iconservices.store"

alias sleepinfo='pmset -g log | grep -e " Sleep  " -e " Wake  "'

alias whatsize='du -sh *'

# allow ctrl-s to search forwards; disables XON/XOFF flow control
stty -ixon

# added by Miniconda3 installer
export PATH="~/miniconda3/bin:$PATH"