require('base')
require('highlights')
require('maps')
require('plugins')


vim.cmd([[
set shell=pwsh
set shellcmdflag=-command
set shellquote=\"
set shellxquote=
]])

vim.cmd([[
  let g:neovide_refresh_rate=140
  let g:neovide_remember_window_size = v:true
  let g:neovide_cursor_vfx_mode = "sonicboom"
  set guifont=CaskaydiaCove\ Nerd\ Font:h14
]])
