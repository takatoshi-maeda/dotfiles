au BufNewFile,BufRead *.go set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.go set filetype=go
autocmd FileType go autocmd BufWritePre <buffer> Fmt

if $GOPATH != ''
  execute "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
  execute "set runtimepath+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
  let g:syntastic_go_checkers = ['go', 'golint', 'govet']
endif

augroup Go
  autocmd!
  autocmd BufWritePre *.go Fmt
augroup END
