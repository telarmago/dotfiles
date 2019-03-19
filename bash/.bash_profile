# preserve cwd
source /etc/profile
# pretty prompt
export PS1="\[\033[34m\]\w\n\[\033[31m\]> \[\033[00m\]"
# disables XON/XOFF flow control; allows ctrl-s to search forwards
stty -ixon

# aliases
alias la="ls -GA"
alias ll="ls -GAl"
alias ..="cd .."
# cleaning
alias cleanhome="rm -rf {~/.bash_history,~/.bash_sessions/,~/.lesshst,~/.viminfo}; \
                 rm -rf ~/.local/share/nvim/shada/main.shada"
alias finddots="sudo find . -name '._*' -o -name '.DS_Store'"
alias dotclean="dot_clean -mv ."
alias deletelogs="sudo rm -rfv /private/var/log/ ~/Library/Logs/ /Library/Logs/"
alias cleariconcaches="sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
                       sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \;
                       sudo rm -rf /Library/Caches/com.apple.iconservices.store"
alias dsp="docker system prune"
# desktop management
alias resetlaunchpad="defaults write com.apple.dock ResetLaunchPad -bool true \
                      && killall Dock"
alias hidedesktop="defaults write com.apple.finder CreateDesktop false \
                   && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop true \
                   && killall Finder"
# miscellaneous
alias whatsize="du -sh * | sort -h"
alias sleepinfo="pmset -g log | grep -e ' Sleep  ' -e ' Wake  '"
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# functions
search() {
    find . -iname '*.txt' -exec grep -i "$1" {} \+
}
v() {
    osascript -e "set Volume $1"
}
