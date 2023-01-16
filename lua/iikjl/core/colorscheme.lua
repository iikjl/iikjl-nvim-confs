require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { 
        dark = "mocha",
    },
    transparent_background = true,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

function SetBackground()
    vim.api.nvim_set_hl(0,"Normal",{ bg = "none"})
    vim.api.nvim_set_hl(0,"NormalFloat",{ bg = "none"})
end

require("rose-pine").setup()
-- set colorscheme after options
--  local status, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")
local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then
  print("coloscheme not found")
  return
end
SetBackground()
