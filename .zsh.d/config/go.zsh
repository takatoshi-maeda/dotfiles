if [ -x `which go` ]; then
  export GO_VERSION=`go version | awk 'match($0,/[0-9]\.[0-9]\.[0-9]+/) { print substr($0,RSTART,RLENGTH) }'`
  export GOROOT="/usr/local/Cellar/go/$GO_VERSION/libexec"
  export GOPATH=$HOME/.go/$GO_VERSION
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
fi
