###### Initial
autoload -Uz compinit #Auto complete
compinit #Auto complete
######
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%2~%f%b %2 '
###### Aliases
alias nnn="nnn -e"
alias fastboot="doas /usr/local/bin/fastboot"
alias adb="doas /usr/local/bin/adb"
