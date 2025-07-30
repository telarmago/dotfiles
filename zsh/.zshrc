# Aliases
alias ll='ls -lAG'
alias ..='cd ..'
alias resetlaunchpad='sudo find 2>/dev/null /private/var/folders/ -type d -name com.apple.dock.launchpad -exec rm -rf {} + \
                      ; killall Dock'
alias rg='rg -S'

## Cleaning
alias cleanhome='rm -rf {~/.zsh_history,~/.zsh_sessions,~/.lesshst}'
alias cleansublime='rm -rf ~/Library/Application\ Support/Sublime\ Text/Local/Session.sublime_session'
alias finddots='sudo find . -name "._*" -o -name ".DS_Store"'
alias dotclean='dot_clean -mv .'
alias deletelogs='sudo rm -rfv /private/var/log/ ~/Library/Logs/ /Library/Logs/'
alias cleariconcaches='sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
                       sudo find /private/var/folders/ -name com.apple.iconservices -exec rm -rf {} \;
                       sudo rm -rf /Library/Caches/com.apple.iconservices.store \
                       && killall Finder'
alias hidedesktop='defaults write com.apple.finder CreateDesktop false \
                   && killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop true \
                   && killall Finder'

## Info
alias whatsize='du -sh * | sort -h'
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

# For oh-my-zsh
unset LESS # stops `git branch` from using `less`
DISABLE_AUTO_UPDATE="true" # uncomment this line before `source $ZSH/oh-my-zsh.sh`

# Delete sections below if oh-my-zsh is installed
# Pretty prompt
PROMPT='%~ > '

# Enable ctrl-s to search forwards
stty -ixon

# Show git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'on branch %b' # format vcs_info_msg_0_ variable
setopt prompt_subst # set up right-side prompt
RPROMPT=\$vcs_info_msg_0_
