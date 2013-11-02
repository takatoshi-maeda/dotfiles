set nocompatible
set rtp+=/usr/local/lib/python2.7/site-packages/Powerline-beta-py2.7.egg/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'
set t_Co=256

"無限undo
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\""
