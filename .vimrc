filetype on
filetype indent on
filetype plugin on

set nocompatible

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

syntax on
set lazyredraw
set clipboard=unnamed,autoselect

" Tools
NeoBundleLazy 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle "Shougo/unite.vim"
NeoBundle "basyura/unite-rails"

let g:unite_enable_start_insert = 1
let g:unite_enable_split_vertically = 0
let g:unite_winwidth = 40
" nnoremap <silent><C-e> :<C-u>Unite file_mru buffer<CR>
nnoremap <silent><F1> :Unite rails/model<CR>
nnoremap <silent><F2> :Unite rails/controller<CR>
nnoremap <silent><F3> :Unite rails/view<CR>
nnoremap <silent><F4> :Unite rails/helper<CR>
nnoremap <silent><F5> :Unite rails/javascript<CR>
nnoremap <silent><F6> :Unite rails/stylesheet<CR>
nnoremap <silent><F7> :Unite rails/lib<CR>
nnoremap <silent><F10> :Unite file file_mru file/new<CR>

" Git
hi SignColumn guibg=0 ctermbg=0
NeoBundle "airblade/vim-gitgutter"
let g:gitgutter_enabled = 1
nnoremap <silent> gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> gh :<C-u>GitGutterLineHighlightsToggle<CR>

" Ruby
" rubyのコーディング規約チェッカ
" NeoBundle "ngmy/vim-rubocop"
" let g:vimrubocop_config = '~/.rubocop.yml'

" do ~ end等のblockを自動で入力してくれる
NeoBundle "tpope/vim-endwise"

"  slim用シンタックス
NeoBundle 'slim-template/vim-slim'

" scsssyntax
NeoBundle 'cakebaker/scss-syntax.vim'
au BufRead,BufNewFile,BufReadPre *.scss   set filetype=scss
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

" javascript
"  coffeescript syntax & compile
NeoBundle 'kchmck/vim-coffee-script'
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

"  jst,ejs syntax
NeoBundle "briancollins/vim-jst"

" NeoBundle 'joker1007/vim-ruby-heredoc-syntax'
NeoBundle "Shougo/context_filetype.vim"


" ProjectManage
" カレントディレクトリをツリー表示してくれる
NeoBundle "Shougo/vimfiler"


" syntax
" markdown用のsyntax
NeoBundle 'tpope/vim-markdown'
NeoBundle 'joker1007/vim-markdown-quote-syntax'

" input optimize
" 文字列をトグル変更する
NeoBundle "AndrewRadev/switch.vim"
NeoBundleLazy "Shougo/neocomplete.vim", {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}

let s:bundle = neobundle#get('neocomplete.vim')
function! s:bundle.hooks.on_source(bundle)
  nmap <ESC><ESC> ;nohlsearch<CR><ESC>
  hi Pmenu ctermbg=245 ctermfg=000
  hi PmenuSel ctermbg=4 ctermfg=220
  hi PmenuSbar ctermbg=5
  let g:acp_enableAtStartup = 0
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'
  let g:neocomplete#disable_auto_complete = 1
  noremap  <Space>d. :<C-u>NeoComplCacheCachingDictionary<Enter>
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><C-b> &filetype == 'vim' ? "\<C-x>\<C-v>\<C-p>" : "\<C-x>\<C-o>\<C-p>"
  inoremap <expr><C-n>  pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>"
  inoremap <expr><C-b> pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"

  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags)
endfunction

NeoBundleLazy "rhysd/vim-operator-surround"

" golang
NeoBundle 'fatih/vim-go'
let g:go_fmt_autosave = 1
let g:gofmt_command = 'goimports'
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_operators = 1

NeoBundle 'scrooloose/syntastic'

" 置換
NeoBundle 'osyo-manga/vim-over'

NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}

NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'nginx.vim'
NeoBundle 'scrooloose/syntastic'

set runtimepath+=~/.vim/

runtime! conf.d/*.vim

syntax on
