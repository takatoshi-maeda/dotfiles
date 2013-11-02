augroup FtARMigration
  autocmd BufRead,BufNewFile */migrate/*.rb setlocal filetype=ruby.active_record.migration
augroup END