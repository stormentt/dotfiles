function dotsource {
  source "$HOME/dotfiles/zsh/$1"
}

source "$HOME/scripts/lib/colors"

dotsource zsh
dotsource vars
dotsource global-conf

dotsource bindkeys
dotsource funcs
dotsource aliases
dotsource path
dotsource autocomplete

dotsource prompt
