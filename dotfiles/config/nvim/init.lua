-- Set leader key to Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear search highlights with Ctrl+l
-- vim.keymap.set('n', '<C-l>', vim.cmd.nohlsearch, { desc = "Clear search highlights" })

-- Bootstrap packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path
    })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand to reload & sync when you save this file
vim.cmd [[
  augroup packer_user_config
  autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]]

-- Packer startup function
return require("packer").startup(function(use)
  use "wbthomason/packer.nvim" -- packer can manage itself

  use({
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine-dawn")
    end
  })

  -- use {
  --   "smoka7/hop.nvim",
  --   tag = '*', -- optional but strongly recommended
  --   config = function()
  --     local hop = require("hop")
  --     local directions = require("hop.hint").HintDirection
  -- 
  --     hop.setup({
  --       keys = "etovxqpdygfblzhckisuran" 
  --     })
  -- 
  --     local opts = { noremap = true, silent = true }
  -- 
  --     -- Replace f/F/t/T
  --     vim.keymap.set("", "f", function()
  --       hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
  --     end, opts)
  -- 
  --     vim.keymap.set("", "F", function()
  --       hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
  --     end, opts)
  -- 
  --     vim.keymap.set("", "t", function()
  --       hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
  --     end, opts)
  -- 
  --     vim.keymap.set("", "T", function()
  --       hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
  --     end, opts)

  --     vim.keymap.set("n", "<leader>hl", ":HopLine<CR>", { silent = true })      -- jump to a line
  --     vim.keymap.set("n", "<leader>hw", ":HopWord<CR>", { silent = true })      -- jump to a word
  --     vim.keymap.set("n", "<leader>hc", ":HopChar1<CR>", { silent = true })     -- jump to a single char
  --     vim.keymap.set("n", "<leader>hC", ":HopChar2<CR>", { silent = true })     -- jump to two chars
  --     vim.keymap.set("n", "<leader>hp", ":HopPattern<CR>", { silent = true })   -- jump via pattern/regex

  --     vim.keymap.set("v", "<Leader>h", require("hop").hint_words)
  --   end
  -- }

  use {
    "kylechui/nvim-surround",
    tag = "*", -- latest stable
    config = function()
      require("nvim-surround").setup({})
    end
  }

  -- Automatically set up your config after cloning packer.nvim
  if packer_bootstrap then
    require("packer").sync()
  end
end)

