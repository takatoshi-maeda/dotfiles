if [ `uname -s` = 'Darwin' ]; then
  eval "$($(brew --prefix)/bin/direnv hook zsh)"
else
  eval "$(direnv hook zsh)"
fi
