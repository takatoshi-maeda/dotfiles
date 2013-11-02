set backspace=indent,eol,start
set smartindent "オートインデント
set clipboard=unnamed
set expandtab "タブの代わりに空白文字挿入
set ts=2 sw=2 sts=0 "タブは半角4文字分のスペース
" カーソル行のハイライト
set cursorline
highlight CursorLine term=underline cterm=underline ctermbg=0

" プログラム中の括弧出現時に内部へ自動移動
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>

" 挿入モードでのカーソル移動
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>

nmap <C-j> <Down>
nmap <C-k> <Up>
nmap <C-h> <Left>
nmap <C-l> <Right>

vmap <C-j> <Down>
vmap <C-k> <Up>
vmap <C-h> <Left>
vmap <C-l> <Right>
