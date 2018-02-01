export PS1="\[\033[32m\]\w\n$ \[\033[00m\]"

alias ll="ls -al"
alias ..="cd .."

alias finddots="sudo find . -name '._\*' -o -name '.DS_Store'"
alias dotcleanall="dot_clean -mv /"
alias dotcleandrive="dot_clean -mv /Volumes/Storage/Drive/"

alias resetlaunchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"

alias hidedesktop="defaults write com.apple.finder CreateDesktop false; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop true; killall Finder"

# allow ctrl-s to search forwards; disables XON/XOFF flow control
stty -ixon
