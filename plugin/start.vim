augroup ROB_ALDIS_KIP
    autocmd!
    autocmd BufLeave, VimLeave * :lua require('kip.KIP').test()
augroup END
