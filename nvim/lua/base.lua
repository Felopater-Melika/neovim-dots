vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse = 'a'
vim.wo.number = true
-- vim.opt.completeopt = { 'menuone', 'noselect' }
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'pwsh.exe -nologo'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- No wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files - search down in subfolders
vim.opt.wildignore:append { '*/node_modules/*' }


-- Under curl
vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Cs = "\e[4:0m]"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add astrisks in block comments
vim.opt.formatoptions:append { 'r' }

-- Clipboard
vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
