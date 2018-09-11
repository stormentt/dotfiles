export ZSH=${HOME}/.oh-my-zsh
export EDITOR=vim
export TERM="xterm-256color"
export GOPATH=~/go
export LANG="en_US.UTF-8"


# ZSH Configuration
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

setprompt() {
	autoload -U colors zsh/terminfo
	colors
}

# key binding
bindkey -s 'l' "ls -lh\n"
bindkey -s 's' "sudo !!\n"

# Make Java Pretty
_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# deny rwx to group & world
umask 077

# Aliases
alias cls="clear && ls"

alias a=ansible
alias ap=ansible-playbook
alias av=ansible-vault
alias ac=ansible-console

alias resource='source ~/.zshrc'

alias alert='notify-send --urgency=low "Execution Complete" "Your command has finished executing."; tput bel'

alias stderred="LD_PRELOAD=/home/tstorment/stderred/build/libstderred.so\${LD_PRELOAD:+:\$LD_PRELOAD}"

alias pbs="cd ~/projects/playbooks"

alias sl=ls

export EDITOR=vim

export PATH="/bin"
export PATH="$PATH:/sbin"

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"

export PATH="$PATH:/usr/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/games"

export PATH="$PATH:/usr/lib/go-1.10/bin"

export PATH="$PATH:$HOME/scripts"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.3.0/bin"

# dedup
export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

unsetopt HIST_VERIFY # makes sudo !! easier

function atno
{
  TIME=$1
  SUMMARY=$2
  BODY=$3

  echo "notify-send -u critical \"$SUMMARY\" \"$BODY\"" | at $TIME
}

alias editcp="xclip -out | vipe | xclip"
