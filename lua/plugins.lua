-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'ibhagwan/fzf-lua'
  use 'tanvirtin/monokai.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'enricobacis/vim-airline-clock'
  use 'mg979/vim-visual-multi'
  require('monokai').setup {}
  use 'neovim/nvim-lspconfig'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-lint'
  require("mason").setup()

  -- if fails, then run nvim-treesitter.install.update() manually
  use {
   'nvim-treesitter/nvim-treesitter',
   run = ':TSUpdate'
  }
end)
