# -*- sh -*-
zshconfig(){
  if [ $1 = "list" ]; then
    ls -la $HOME/.zsh.d/config
    return
  fi
  $EDITOR ~/.zsh.d/config/$1.zsh
  zshload
}

vimrc(){
  if [ $1 = "edit" ]; then
    $EDITOR $HOME/.vim/conf.d/$2.vim
    return
  fi
}

aes(){
  if [ $1 = "enc" ]; then
    openssl enc -e -aes-256-cbc -in $2 -out $2.prv
  fi
  if [ $1 = "dec" ]; then
    openssl enc -d -aes-256-cbc -in $2 -out $3
    echo "openssl enc -d -aes-256-cbc -in $2 -out $3"
  fi
}

dot(){
  CUR_DIR=`pwd`
  cd $HOME/config/dotfiles
  if [ $1 = "move" ]; then
    return
  fi
  if [ $1 = "update" ]; then
    git checkout master
    git add .
    git commit
    git push origin master
  fi
  if [ $1 = "create" ]; then
    $EDITOR $2
  fi
  if [ $1 = "deploy" ]; then
    ./deploy_files
  fi
  if [ $1 = "bundle" ]; then
    cd $HOME
    install_default_gems
    rbenv rehash
  fi
  if [ $1 = "pip" ]; then
    cd $HOME
    pip install -r ~/.piprequirements
  fi
  cd $CUR_DIR
}

install_default_gems() {
  if [ -f "${HOME}/.rbenv/default-gems" ]; then
    local line gem_name gem_version args

    # Read gem names and versions from $RBENV_ROOT/default-gems.
    while IFS=" " read -r -A line; do

      # Skip empty lines.
      [ "${#line[@]}" -gt 0 ] || continue

      # Skip comment lines that begin with `#`.
      [ "${line[1]:0:1}" != "#" ] || continue

      gem_name="${line[1]}"
      gem_version="${line[2]}"

      if [ "$gem_version" = "--pre" ]; then
        args=( --pre )
      elif [ -n "$gem_version" ]; then
        args=( --version "$gem_version" )
      else
        args=()
      fi

      # Invoke `gem install` in the just-installed Ruby. Point its
      # stdin to /dev/null or else it'll read from our default-gems
      # file.
      gem install "$gem_name" "${args[@]}" < /dev/null || {
        echo "error installing gem \`$gem_name'"
      } >&2

    done < "${HOME}/.rbenv/default-gems"
  fi
}

brew(){
  if [ "$1" = "install" ] &&  [ "$2" = "" ]; then
    ADDITIONAL_BREWFILE=middleware,ext_macapps brewdle --trace install $HOME/Brewfile
    return
  fi
  /usr/local/bin/brew $*
}

p() { peco | while read LINE; do $@ $LINE; done }

go_setup() {
  go get github.com/motemen/ghq
}
