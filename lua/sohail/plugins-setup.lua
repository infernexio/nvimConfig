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

vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim")

  use("navarasu/onedark.nvim") -- colorscheme
  use("bluz71/vim-moonfly-colors") -- seperate colorscheme

  use("christoomey/vim-tmux-navigator") -- tmux split window

  use("szw/vim-maximizer") -- maximizes and resotres current window

  use("tpope/vim-surround") -- lets you surround words with ys and motion like ex.) ysw

  use("numToStr/Comment.nvim") -- mass comment with gc ex.) gc9j

  use("nvim-tree/nvim-tree.lua") -- file explorer

  use("nvim-tree/nvim-web-devicons") -- icons

  use("nvim-lualine/lualine.nvim") -- statusline
  
  -- fuzzy finder
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use("nvim-telescope/telescope.nvim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
