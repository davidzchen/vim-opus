if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

setlocal comments=://
setlocal commentstring=//%s
setlocal formatoptions-=t formatoptions+=croqnl
silent! setlocal formatoptions+=j

setlocal smartindent nocindent

let b:undo_ftplugin = "setlocal formatoptions< comments< commentstring<"

let &cpo = s:save_cpo
unlet s:save_cpo
