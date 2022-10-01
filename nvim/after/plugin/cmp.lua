-- local status, cmp = pcall(require, "cmp")
-- if (not status) then return end

-- local lspkind = require 'lspkind'

-- local snip_status_ok, luasnip = pcall(require, "luasnip")
-- if not snip_status_ok then
--   return
-- end

-- require("luasnip/loaders/from_vscode").lazy_load()

-- local icons = {
--   kind = {
--     Text = "",
--     -- Method = "m",
--     -- Function = "",
--     -- Constructor = "",
--     Method = "",
--     Function = "",
--     Constructor = "",
--     Field = "",
--     -- Variable = "",
--     Variable = "",
--     Class = "",
--     Interface = "",
--     -- Module = "",
--     Module = "",
--     Property = "",
--     Unit = "",
--     Value = "",
--     Enum = "",
--     -- Keyword = "",
--     Keyword = "",
--     -- Snippet = "",
--     Snippet = "",
--     Color = "",
--     File = "",
--     Reference = "",
--     Folder = "",
--     EnumMember = "",
--     Constant = "",
--     Struct = "",
--     Event = "",
--     Operator = "",
--     TypeParameter = "",
--   },
--   type = {
--     Array = "",
--     Number = "",
--     String = "",
--     Boolean = "蘒",
--     Object = "",
--   },
--   documents = {
--     File = "",
--     Files = "",
--     Folder = "",
--     OpenFolder = "",
--   },
--   git = {
--     Add = "",
--     Mod = "",
--     Remove = "",
--     Ignore = "",
--     Rename = "",
--     Diff = "",
--     Repo = "",
--     Octoface = "",
--   },
--   ui = {
--     ArrowClosed = "",
--     ArrowOpen = "",
--     Lock = "",
--     Circle = "",
--     BigCircle = "",
--     BigUnfilledCircle = "",
--     Close = "",
--     NewFile = "",
--     Search = "",
--     Lightbulb = "",
--     Project = "",
--     Dashboard = "",
--     History = "",
--     Comment = "",
--     Bug = "",
--     Code = "",
--     Telescope = "",
--     Gear = "",
--     Package = "",
--     List = "",
--     SignIn = "",
--     SignOut = "",
--     Check = "",
--     Fire = "",
--     Note = "",
--     BookMark = "",
--     Pencil = "",
--     -- ChevronRight = "",
--     ChevronRight = ">",
--     Table = "",
--     Calendar = "",
--     CloudDownload = "",
--   },
--   diagnostics = {
--     Error = "",
--     Warning = "",
--     Information = "",
--     Question = "",
--     Hint = "",
--   },
--   misc = {
--     Robot = "ﮧ",
--     Squirrel = "",
--     Tag = "",
--     Watch = "",
--     Smiley = "ﲃ",
--     Package = "",
--     CircuitBoard = "",
--   },
-- }

-- local check_backspace = function()
--   local col = vim.fn.col "." - 1
--   return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
-- end


-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       require('luasnip').lsp_expand(args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.close(),
--     ['<CR>'] = cmp.mapping.confirm({
--       behavior = cmp.ConfirmBehavior.Replace,
--       select = true
--     }),
--     -- Accept currently selected item. If none selected, `select` first item.
--     -- Set `select` to `false` to only confirm explicitly selected items.
--     -- ["<Tab>"] = cmp.mapping(function(fallback)
--     --   if cmp.visible() then
--     --     cmp.select_next_item()
--     --   elseif luasnip.expandable() then
--     --     luasnip.expand()
--     --   elseif luasnip.expand_or_jumpable() then
--     --     luasnip.expand_or_jump()
--     --   elseif check_backspace() then
--     --     fallback()
--     --   else
--     --     fallback()
--     --   end
--     -- end, {
--     --   "i",
--     --   "s",
--     -- }),
--     -- ["<S-Tab>"] = cmp.mapping(function(fallback)
--     --   if cmp.visible() then
--     --     cmp.select_prev_item()
--     --   elseif luasnip.jumpable(-1) then
--     --     luasnip.jump(-1)
--     --   else
--     --     fallback()
--     --   end
--     -- end, {
--     --   "i",
--     --   "s",
--     -- }),
--   }),
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'copilot' },
--     { name = 'cmp_tabnine' },
--     { name = 'luasnip' },
--     { name = 'buffer' },
--     { name = 'treesitter' },
--     { name = 'nvim_lsp_document_symbol' },
--     { name = 'nvim_lsp_signature_help' },
--     { name = 'orgmode' },
--     { name = 'path' },
--     { name = 'nvim_lua' },
--     { name = 'plugins' },
--     { name = 'npm' },
--     { name = 'emoji' },
--     { name = "latex_symbols" },
--     { name = 'greek' },
--   }),
--   formatting = {
--     format = lspkind.cmp_format({
--       mode = 'symbol_text',
--       maxwidth = 30,
--       with_text = true,
--       menu = ({
--         nvim_lsp = '力',
--         copilot = '',
--         cmp_tabnine = 'ﮧ',
--         luasnip = '',
--         buffer = '﬘',
--         treesitter = 'פּ',
--         nvim_lsp_document_symbol = '',
--         nvim_lsp_signature_help = '',
--         path = '',
--         nvim_lua = '',
--         plugins = '',
--         npm = '',
--         emoji = 'ﲃ',
--         latex_symbols = 'λ',
--         greek = 'Ω',
--       })
--     })
--   },
--   window = {
--     documentation = {
--       border = "rounded",
--       winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
--     },
--     completion = {
--       border = "rounded",
--       winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
--     },
--   },
--   experimental = {
--     ghost_text = false,
--   },
-- })

-- vim.cmd [[
--   set completeopt=menuone,noinsert,noselect
--   highlight! default link CmpItemKind CmpItemMenuDefault
-- ]]
-- -- " Use <Tab> and <S-Tab> to navigate through popup menu
-- -- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- -- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

-- local status, cmp = pcall(require, "cmp")
-- if (not status) then return end
-- local lspkind = require 'lspkind'

-- -- local snip_status_ok, luasnip = pcall(require, "luasnip")
-- -- if not snip_status_ok then
-- --   return
-- -- end

-- -- require("luasnip/loaders/from_vscode").lazy_load()

-- -- local check_backspace = function()
-- --   local col = vim.fn.col "." - 1
-- --   return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
-- -- end


-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       require('luasnip').lsp_expand(args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.close(),
--     ['<CR>'] = cmp.mapping.confirm({
--       behavior = cmp.ConfirmBehavior.Replace,
--       select = true
--     }),
--     -- ["<Tab>"] = cmp.mapping(function(fallback)
--     --   if cmp.visible() then
--     --     cmp.select_next_item()
--     --   elseif luasnip.expandable() then
--     --     luasnip.expand()
--     --   elseif luasnip.expand_or_jumpable() then
--     --     luasnip.expand_or_jump()
--     --   elseif check_backspace() then
--     --     fallback()
--     --   else
--     --     fallback()
--     --   end
--     -- end, {
--     --   "i",
--     --   "s",
--     -- }),
--     -- ["<S-Tab>"] = cmp.mapping(function(fallback)
--     --   if cmp.visible() then
--     --     cmp.select_prev_item()
--     --   elseif luasnip.jumpable(-1) then
--     --     luasnip.jump(-1)
--     --   else
--     --     fallback()
--     --   end
--     -- end, {
--     --   "i",
--     --   "s",
--     -- }),
--   }),
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'copilot' },
--     { name = 'cmp_tabnine' },
--     { name = 'luasnip' },
--     { name = 'buffer' },
--     { name = 'treesitter' },
--     { name = 'nvim_lsp_document_symbol' },
--     { name = 'nvim_lsp_signature_help' },
--     { name = 'orgmode' },
--     { name = 'path' },
--     { name = 'nvim_lua' },
--     { name = 'plugins' },
--     { name = 'npm' },
--     { name = 'emoji' },
--     { name = "latex_symbols" },
--     { name = 'greek' },
--   }),
--   formatting = {
--     format = lspkind.cmp_format({
--       mode = 'symbol_text',
--       maxwidth = 30,
--       with_text = true,
--       menu = ({
--         nvim_lsp = '力',
--         copilot = '',
--         cmp_tabnine = 'ﮧ',
--         luasnip = '',
--         buffer = '﬘',
--         treesitter = 'פּ',
--         nvim_lsp_document_symbol = '',
--         nvim_lsp_signature_help = '',
--         path = '',
--         nvim_lua = '',
--         plugins = '',
--         npm = '',
--         emoji = 'ﲃ',
--         latex_symbols = 'λ',
--         greek = 'Ω',
--       })
--     })
--   },
--   window = {
--     documentation = {
--       border = "rounded",
--       winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
--     },
--     completion = {
--       border = "rounded",
--       winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
--     },
--   },
--   experimental = {
--     ghost_text = false,
--   },
-- })

-- vim.cmd [[
--   set completeopt=menuone,noinsert,noselect
--   highlight! default link CmpItemKind CmpItemMenuDefault
-- ]]

-- -- " Use <Tab> and <S-Tab> to navigate through popup menu
-- -- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- -- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()


local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  }),
  sources = cmp.config.sources({
    { name = 'copilot' },
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'cmp_tabnine' },
    { name = 'buffer' },
    { name = 'treesitter' },
    { name = 'nvim_lsp_document_symbol' },
    { name = 'nvim_lsp_signature_help' },
    { name = 'orgmode' },
    { name = 'path' },
    { name = 'nvim_lua' },
    { name = 'plugins' },
    { name = 'npm' },
    { name = 'emoji' },
    { name = "latex_symbols" },
    { name = 'greek' },
  }),
  formatting = {
    format = lspkind.cmp_format({
      fields = { "kind", "abbr", "menu" },
      format = lspkind.cmp_format({
        mode = 'symbol_text',
        maxwidth = 30,
        with_text = true,
        menu = ({
          nvim_lsp = '力',
          copilot = '',
          cmp_tabnine = 'ﮧ',
          luasnip = '',
          buffer = '﬘',
          treesitter = 'פּ',
          nvim_lsp_document_symbol = '',
          nvim_lsp_signature_help = '',
          path = '',
          nvim_lua = '',
          plugins = '',
          npm = '',
          emoji = 'ﲃ',
          latex_symbols = 'λ',
          greek = 'Ω',
        })
      })
    })
  },
  window = {
    documentation = {
      border = "rounded",
      winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
    },
    completion = {
      border = "rounded",
      winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
    },
  },
  experimental = {
    ghost_text = false,
  },
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]


-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
