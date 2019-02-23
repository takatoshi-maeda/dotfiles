###################################
# alias
alias l="ls -lh"
alias ll="ls -lah"
alias ls="LSCOLORS=gxfxxxxxcxxxxxxxxxxxxx ls -G"
alias v="$(brew --prefix)/bin/vim"
alias vi="$(brew --prefix)/bin/vim"
alias dstat-full='dstat -Tclmdrn'
alias dstat-mem='dstat -Tclm'
alias dstat-cpu='dstat -Tclr'
alias dstat-net='dstat -Tclnd'
alias dstat-disk='dstat -Tcldr'
alias http='noglob http'
alias tm='tmux-cssh'
alias ci="/usr/local/bin/vim"
alias copy="pbcopy"
alias paste="pbpaste"
alias g="ghq list -p | p cd"
alias gq="ghq"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
alias memo="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron /Users/takatoshi-maeda/.ghq/github.com/TakatoshiMaeda/memo"

alias zshload="source ~/.zshrc"
alias mou="/Applications/Mou.app/Contents/MacOS/Mou"

alias work="open focus://focus"
alias rest="open focus://unfocus"

alias aws-exec="envchain aws"

alias isucon-utils-extract="tar xvfz ~/.ghq/github.com/TakatoshiMaeda/isucon/misc/app_scripts/app_utilities.tar.gz -C ./"
alias isucon-flag-template="cp ~/.ghq/github.com/TakatoshiMaeda/isucon/misc/app_templates/*.go ./"
alias isucon-setup="cp -f ~/.ghq/github.com/TakatoshiMaeda/isucon/misc/app_scripts/*.sh* ./ && cp -f ~/.ghq/github.com/TakatoshiMaeda/isucon/misc/app_templates/*.go ./"

alias fukajun='Notepad.exe'

alias ecs='envchain aws-bargain ecs-scaler'
