autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:quickrun_config = {
\  'markdown': {
\   'type': 'markdown/gfm',
\   'outputter': 'browser'
\  }
\}
