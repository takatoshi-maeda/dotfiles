if [ -x `which go` ]; then
  export GO_VERSION=1.8
  export GOROOT="/opt/brew/Cellar/go/$GO_VERSION/libexec"
  export GOPATH=$HOME/.go/$GO_VERSION
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi
