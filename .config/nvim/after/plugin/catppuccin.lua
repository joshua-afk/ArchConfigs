g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
local colors = require("catppuccin.palettes").get_palette()

-- for transparent background
-- colors.none = "NONE"

require("catppuccin").setup({
  transparent_background = false,
  term_colors = true,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},

	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "bold" },
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = false,
		nvimtree = true,
		treesitter = true,
		mason = true,
    telescope = {
      enabled = true,
    },
    illuminate = {
      enabled = true,
      lsp = false
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
      inlay_hints = {
        background = true,
      },
    },
	},
  color_overrides = {
      -- mocha = {
      --     base = "#1e1e1e",
      -- },
  },
  custom_highlights = {
    LineNr = { fg = colors.peach },
    LineNrAbove = { fg = colors.green },
    LineNrBelow = { fg = colors.teal }
  }
  -- Transparent background tweaks
	-- custom_highlights = {
	-- 	Comment = { fg = colors.overlay1 },
	-- 	LineNr = { fg = colors.overlay1 },
	-- 	CursorLine = { bg = colors.none },
	-- 	CursorLineNr = { fg = colors.lavender },
	-- 	DiagnosticVirtualTextError = { bg = colors.none },
	-- 	DiagnosticVirtualTextWarn = { bg = colors.none },
	-- 	DiagnosticVirtualTextInfo = { bg = colors.none },
	-- 	DiagnosticVirtualTextHint = { bg = colors.none },
	-- }
})

vim.cmd [[colorscheme catppuccin]]
