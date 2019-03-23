if [ -d "$HOME/.goenv" ]; then
  export PATH=$PATH:$HOME/.goenv/bin
  eval "$(goenv init -)"
fi

if type "go" > /dev/null 2>&1; then
  export GOVERSION=$(go version | ruby -e "puts STDIN.read.split[2].gsub('go', '')")
  export GOROOT="$HOME/.goenv/versions/$GOVERSION"
  export GOPATH=$HOME/.go/$GOVERSION
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi
