filetype on
filetype indent on
filetype plugin on

set nocompatible

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Tools
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle "Shougo/unite.vim"
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'thinca/vim-ref'
NeoBundle 'mattn/benchvimrc-vim'

" Ruby
"NeoBundle "vim-ruby/vim-ruby"
" rspecをvimで実行して、他ウインドウにdispatchしてくれる
NeoBundleLazy 'taichouchou2/neorspec.vim', {
      \ 'depends' : ['tpope/vim-rails', 'tpope/vim-dispatch'],
      \ 'autoload' : {
      \   'commands' : ['RSpec', 'RSpecAll', 'RSpecCurrent', 'RSpecNearest', 'RSpecRetry']
      \ }}
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" rubyのコーディング規約チェッカ
NeoBundle "ngmy/vim-rubocop"

" do ~ end等のblockを自動で入力してくれる
NeoBundle "tpope/vim-endwise"

" ruby用自動補完
NeoBundle "rubycomplete.vim"

"  Ruby on Rails
"NeoBundle "tpope/vim-rails"
"let g:rails_default_file='config/database.yml'
"let g:rails_level = 4
"let g:rails_mappings=1
"let g:rails_modelines=0
"let g:rails_url='http://localhost:3000'
"function! SetUpRailsSetting()
"  nnoremap <buffer><Space>r :R<CR>
"  nnoremap <buffer><Space>a :A<CR>
"  nnoremap <buffer><Space>m :Rmodel<Space>
"  nnoremap <buffer><Space>c :Rcontroller<Space>
"  nnoremap <buffer><Space>v :Rview<Space>
"  nnoremap <buffer><Space>p :Rpreview<CR>
"endfunction 
"aug MyAutoCmd
"  au User Rails call SetUpRailsSetting()
"aug END
"aug RailsDictSetting
"  au!
"aug END

"  slim用シンタックス
NeoBundle 'slim-template/vim-slim'
NeoBundle 'yuku-t/vim-ref-ri'

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


" ProjectManage
" カレントディレクトリをツリー表示してくれる
NeoBundle "Shougo/vimfiler"


" syntax
" markdown用のsyntax
NeoBundle 'tpope/vim-markdown'


" input optimize
" 文字列をトグル変更する
NeoBundle "AndrewRadev/switch.vim"

" 自動補完
"NeoBundle "supermomonga/neocomplete-rsense.vim"
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

" snippet管理
NeoBundleLazy "Shougo/neosnippet.vim", {
      \ 'autoload' : {
      \   'insert' : 1,
      \ }}
let s:bundle = neobundle#get('neosnippet.vim')
function! s:bundle.hooks.on_source(bundle)
  let s:default_snippet = '~/.vim/bundle/neosnippet.vim/autoload/neosnippet/snippets'
  let s:my_snippet = '~/.vim/neosnippet'
  let g:neosnippet#snippets_directory = s:default_snippet . ',' . s:my_snippet
  imap <silent><C-F> <Plug>(neosnippet_expand_or_jump)
  inoremap <silent><C-U> <ESC>:<C-U>Unite snippet<CR>
  nnoremap <silent><Space>e :<C-U>NeoSnippetEdit -split<CR>
  smap <silent><C-F> <Plug>(neosnippet_expand_or_jump)
endfunction

" vimでTodo管理。とりあえずReminder.app使ってるし...
"NeoBundle "fuenor/qfixhowm"

"set runtimepath+=~/.vim/
runtime! conf.d/*.vim

syntax on
