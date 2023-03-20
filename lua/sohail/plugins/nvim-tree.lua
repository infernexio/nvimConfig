local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    print("nvim-tree not installed")
    return
end

local setup, nvimtreeicons = pcall(require, "nvim-web-devicons")
if not setup then
  print("nvim-tree icons not installed")
  return
end

-- nvim tree

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- icons

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };

 color_icons = true;

 default = true;
 
 strict = true;
}
