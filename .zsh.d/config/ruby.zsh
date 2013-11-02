# rbenv
if [ -d ${HOME}/.rbenv  ] ; then
  export PATH="${HOME}/.rbenv/bin:${HOME}/.rbenv/shims:${PATH}"
  eval "$(rbenv init - zsh)"
fi
function gem(){
  if [ "$1" = "clone" ]; then
    $HOME/.rbenv/shims/gem $1 -d $HOME/Documents/CodeReading/ $2
    return
  fi
  $HOME/.rbenv/shims/gem $*
  if [ "$1" = "install" ] || [ "$1" = "i" ] || [ "$1" = "uninstall" ] || [ "$1" = "uni" ]
  then
    rbenv rehash
  fi
}

# alias
alias be="noglob bundle exec"
alias bi="bundle install --path=./.bundle"
alias p="bundle exec padrino"
alias r="bundle exec rails"
alias cap="bundle exec cap"
alias slide="rabbit -f"
alias rake="noglob rake"
alias berake="bundle exec rake"
