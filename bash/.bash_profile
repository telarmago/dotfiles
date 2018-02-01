export PS1="\[\033[32m\]\w\n$ \[\033[00m\]"

# aliases for convenience
alias ll="ls -al"
alias ..="cd .."

# aliased commands
alias finddots="sudo find . -name '._\*' -o -name '.DS_Store'"
alias dotcleanall="dot_clean -mv /"
alias dotcleandrive="dot_clean -mv /Volumes/Storage/Drive/"

alias resetlaunchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias hidedesktop="defaults write com.apple.finder CreateDesktop false; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop true; killall Finder"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# allow ctrl-s to search forwards; disables XON/XOFF flow control
stty -ixon

# added by Miniconda3 installer
export PATH="/Users/allen/miniconda3/bin:$PATH"
