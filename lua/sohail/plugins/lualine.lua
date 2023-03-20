local status, lualine = pcall(require, "lualine")
if not status then 
  print("lualine not installed")
  return
end

local lualine_theme = require("lualine.themes.horizon")


lualine.setup({
  options = {
    theme = lualine_theme
  }
})
