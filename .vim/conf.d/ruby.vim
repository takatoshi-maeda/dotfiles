"Rails関連ファイルで文字コードをUFT-8に設定
au User Rails* set fenc=utf-8
"Rubyのオムニ補完を設定(ft-ruby-omni)
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
"rubyファイルのみタブ幅を変更
au BufNewFile,BufRead *.rhtml set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.erb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.yaml set tabstop=2 shiftwidth=2

" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.gemspec  set filetype=ruby

" Ruby on Rails
au BufNewFile,BufRead *.builder,*.rxml,*.rjs  set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake  set filetype=ruby

" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant  set filetype=ruby

" IRB config
au BufNewFile,BufRead .irbrc,irbrc    set filetype=ruby

" Pry config
au BufNewFile,BufRead .pryrc      set filetype=ruby

" Rackup
au BufNewFile,BufRead *.ru      set filetype=ruby

" Capistrano
au BufNewFile,BufRead Capfile      set filetype=ruby

" Bundler
au BufNewFile,BufRead Gemfile      set filetype=ruby

" Guard
au BufNewFile,BufRead Guardfile,.Guardfile  set filetype=ruby

" Chef
au BufNewFile,BufRead Cheffile      set filetype=ruby
au BufNewFile,BufRead Berksfile      set filetype=ruby

" Vagrant
au BufNewFile,BufRead [vV]agrantfile    set filetype=ruby

" Autotest
au BufNewFile,BufRead .autotest      set filetype=ruby

" eRuby
au BufNewFile,BufRead *.erb,*.rhtml    set filetype=eruby

" Thor
au BufNewFile,BufRead [tT]horfile,*.thor  set filetype=ruby

" Rabl
au BufNewFile,BufRead *.rabl      set filetype=ruby

" Jbuilder
au BufNewFile,BufRead *.jbuilder    set filetype=ruby

" Puppet librarian
au BufNewFile,BufRead Puppetfile    set filetype=ruby
"
" Buildr Buildfile
au BufNewFile,BufRead [Bb]uildfile    set filetype=ruby

" Appraisal
au BufNewFile,BufRead Appraisals    set filetype=ruby

" HomeBrew
au BufNewFile,BufRead Brewfile    set filetype=ruby
