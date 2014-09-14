if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif

if $GOPATH != ''
  execute "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
  execute "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
endif

au BufNewFile,BufRead *.go  set filetype=go
