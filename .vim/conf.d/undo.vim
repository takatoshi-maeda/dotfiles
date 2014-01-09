"無限undo
if has('persistent_undo')
  set undofile
  set undodir=$HOME/.vim/undo
endif
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\""
