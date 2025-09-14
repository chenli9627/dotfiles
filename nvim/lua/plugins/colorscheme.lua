-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--   { "projekt0n/github-nvim-theme", name = "github-theme" },
--
--   -- Configure LazyVim to load gruvbox
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       -- colorscheme = "github_dark_default",
--       colorscheme = "gruvbox",
--     },
--   },
-- }

return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
