export ZSH=${HOME}/.oh-my-zsh
export EDITOR=vim
export TERM="xterm-256color"
export GOPATH=~/go
export LANG="en_US.UTF-8"

# ZSH Configuration
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
HISTFILE="/dev/null"

plugins=(git)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

setprompt() {
	autoload -U colors zsh/terminfo
	colors
}

# Make Java Pretty
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# deny rwx to group & world
umask 077

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"
export PATH=$PATH:${HOME}/scripts
export PATH=$PATH:~/.config/composer/vendor/bin/
export PATH=$PATH:~/go/bin/

# Aliases
alias cls="clear && ls"
