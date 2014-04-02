au User Rails* set fenc=utf-8

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

let g:syntastic_ruby_checkers = ['rubocop']

au BufNewFile,BufRead *.rhtml set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.erb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.yaml set tabstop=2 shiftwidth=2

au BufNewFile,BufRead *.rb,*.rbw,*.gemspec  set filetype=ruby
au BufNewFile,BufRead *.builder,*.rxml,*.rjs  set filetype=ruby
au BufNewFile,BufRead [rR]akefile,*.rake  set filetype=ruby
au BufNewFile,BufRead [rR]antfile,*.rant  set filetype=ruby
au BufNewFile,BufRead .irbrc,irbrc    set filetype=ruby
au BufNewFile,BufRead .pryrc      set filetype=ruby
au BufNewFile,BufRead *.ru      set filetype=ruby
au BufNewFile,BufRead Capfile      set filetype=ruby
au BufNewFile,BufRead Gemfile      set filetype=ruby
au BufNewFile,BufRead Guardfile,.Guardfile  set filetype=ruby
au BufNewFile,BufRead Cheffile      set filetype=ruby
au BufNewFile,BufRead Berksfile      set filetype=ruby
au BufNewFile,BufRead [vV]agrantfile    set filetype=ruby
au BufNewFile,BufRead .autotest      set filetype=ruby
au BufNewFile,BufRead *.erb,*.rhtml    set filetype=eruby
au BufNewFile,BufRead [tT]horfile,*.thor  set filetype=ruby
au BufNewFile,BufRead *.rabl      set filetype=ruby
au BufNewFile,BufRead *.jbuilder    set filetype=ruby
au BufNewFile,BufRead Puppetfile    set filetype=ruby
au BufNewFile,BufRead [Bb]uildfile    set filetype=ruby
au BufNewFile,BufRead Appraisals    set filetype=ruby
au BufNewFile,BufRead Brewfile    set filetype=ruby
