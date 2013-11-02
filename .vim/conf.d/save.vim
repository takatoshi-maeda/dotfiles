" 保存時に行末の空白を除去する
autocmd BufWritePre *.rb :%s/\s\+$//ge
autocmd BufWritePre *.erb :%s/\s\+$//ge
autocmd BufWritePre *.js :%s/\s\+$//ge
autocmd BufWritePre *.slim :%s/\s\+$//ge
autocmd BufWritePre *.yml :%s/\s\+$//ge
autocmd BufWritePre *.yaml :%s/\s\+$//ge
" 保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/  /ge
