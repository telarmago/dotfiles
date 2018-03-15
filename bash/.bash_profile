# pretty prompt
export PS1="\[\033[34m\]\w\n\[\033[31m\]> \[\033[00m\]"

# convenience
alias ll="ls -Gph -Al"
alias ..="cd .."

# cleaning
alias cleanhome="rm -rf {.bash_history,.bash_sessions,.viminfo,.lesshst,.python_history,.oracle_jre_usage};
                 rm -rf ~/.local/share/nvim/shada/main.shada"
alias finddots="sudo find . -name '._*' -o -name '.DS_Store'"
alias dotclean="dot_clean -mv ."
alias deletesystemlogs="sudo rm -rfv /private/var/log/"
alias cleariconcaches="sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
                       sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \;
                       sudo rm -rf /Library/Caches/com.apple.iconservices.store"

# desktop management
alias resetlaunchpad="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias hidedesktop="defaults write com.apple.finder CreateDesktop false; killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop true; killall Finder"

# miscellaneous info
alias whatsize='du -sh * | sort -h'
alias sleepinfo='pmset -g log | grep -e " Sleep  " -e " Wake  "'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# allow ctrl-s to search forwards; disables XON/XOFF flow control
stty -ixon

# added by Miniconda3 installer
export PATH="~/miniconda3/bin:$PATH"

# rbenv shim
eval "$(rbenv init -)"
