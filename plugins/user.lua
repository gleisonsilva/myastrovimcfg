return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- "codota/tabnine-nvim",
  -- event = "UIEnter",
  -- build = "./dl_binaries.sh",
  -- config = function()
  --   require('tabnine').setup({
  --     disable_auto_comment=true,
  --     accept_keymap="<Tab>",
  --     dismiss_keymap = "<C-]>",
  --     debounce_ms = 800,
  --     suggestion_color = {gui = "#808080", cterm = 244},
  --     exclude_filetypes = {"TelescopePrompt", "NvimTree"},
  --     log_file_path = nil, -- absolute path to Tabnine log file
  --   })
  -- end,
  "Exafunction/codeium.vim",
  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
}
