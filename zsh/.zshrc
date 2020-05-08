# Aliases
alias ll='ls -lAG'
alias la='ls -AG'
alias ..='cd ..'
alias resetlaunchpad='defaults write com.apple.dock ResetLaunchPad -bool true \
                      && killall Dock'
alias hidedesktop='defaults write com.apple.finder CreateDesktop false \
                   && killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop true \
                   && killall Finder'
## Cleaning
alias cleanhome='rm -rf {~/.zsh_history,~/.lesshst}'
alias finddots='sudo find . -name "._*" -o -name ".DS_Store"'
alias dotclean='dot_clean -mv .'
alias deletelogs='sudo rm -rfv /private/var/log/ ~/Library/Logs/ /Library/Logs/'
alias cleariconcaches='sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
                       sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \;
                       sudo rm -rf /Library/Caches/com.apple.iconservices.store'
alias dsp='docker system prune'
## Info
alias whatsize='du -sh * | sort -h'
alias sleepinfo='pmset -g log | egrep "Sleep state|Wake from"'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'
alias localip='ipconfig getifaddr en0'
## Functions
deletedots() {
    sudo find . -name '._*' -o -name '.DS_Store' | sed 's/.*/"&"/' | xargs rm -rf
}
search() {
    find . -iname '*.txt' -exec grep -i "$1" {} \+
}

# Fix $PATH
path+=/usr/local/bin/
path+=/usr/sbin/

# Pretty prompt
PROMPT='%~ > '

# Show git information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
# Set up right-side prompt
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_

# Disables XON/XOFF flow control; allows ctrl-s to search forwards
stty -ixon

# oh-my-zsh
unset LESS # fixes `git branch` opening up less
