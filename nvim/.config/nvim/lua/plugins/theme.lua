return {
  -- {
  --   "catppuccin/nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme "catppuccin"
  --   end
  -- },
  -- {
  --   "gmr458/vscode_modern_theme.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --       require("vscode_modern").setup({
  --           cursorline = true,
  --           transparent_background = false,
  --           nvim_tree_darker = true,
  --       })
  --       -- vim.cmd.colorscheme("vscode_modern")
  --   end,
  -- },
  -- {
  --   'jaredgorski/spacecamp',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --       vim.cmd.colorscheme("spacecamp")
  --   end,
  -- },
  -- {
  --   'martinsione/darkplus.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --       vim.cmd.colorscheme("darkplus")
  --   end,
  -- },
  -- {
  --   "ofirgall/ofirkai.nvim",
  --   config = function()
  --     require('ofirkai').setup({
  --       theme = 'dark_blue', -- Choose theme to use, available themes: 'dark_blue'
  --       scheme = require('ofirkai').scheme, -- Option to override scheme
  --       custom_hlgroups = {},              -- Option to add/override highlight groups
  --       remove_italics = false,            -- Option to change all the italics style to none
  --     })
  --     vim.cmd.colorscheme("ofirkai")
  --   end
  -- },
  -- {
  --   "loctvl842/monokai-pro.nvim",
  --   config = function()
  --     require("monokai-pro").setup({
  --       filter = "spectrum",
  --       transparent_background = false,
  --       terminal_colors = true,
  --       devicons = true,
  --       background_clear = {
  --         -- "float_win",
  --         "toggleterm",
  --         "telescope",
  --         -- "which-key",
  --         -- "renamer",
  --         -- "notify",
  --         -- "nvim-tree",
  --         "neo-tree",
  --         -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
  --       },
  --     })
  --     vim.cmd.colorscheme("monokai-pro-spectrum")
  --   end
  -- },
  -- {
  --   "sainnhe/sonokai",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("sonokai")
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --   },
  --   config = function()
  --     vim.cmd.colorscheme("tokyonight-night")
  --   end,
  -- },
  { 
    "EdenEast/nightfox.nvim", 
    config = function()
      require('nightfox').setup({
        options = {
          -- Compiled file's destination location
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = true,     -- Disable setting background
          terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false,    -- Non focused panes set to alternative background
          module_default = true,   -- Default enable value for modules
          colorblind = {
            enable = false,        -- Enable colorblind support
            simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
            severity = {
              protan = 0,          -- Severity [0,1] for protan (red)
              deutan = 0,          -- Severity [0,1] for deutan (green)
              tritan = 0,          -- Severity [0,1] for tritan (blue)
            },
          },
          styles = {               -- Style to be applied to different syntax groups
            comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
          inverse = {             -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          modules = {             -- List of various plugins and additional options
            -- ...
          },
        },
        palettes = {},
        specs = {},
        groups = {},
      })
      -- vim.cmd("colorscheme carbonfox")
    end
  },
  {
     "rebelot/kanagawa.nvim",
     config = function()
      require('kanagawa').setup({
          compile = true,             -- enable compiling the colorscheme
          undercurl = true,            -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = true},
          statementStyle = { bold = true },
          typeStyle = {},
          transparent = true,         -- do not set background color
          dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
          terminalColors = true,       -- define vim.g.terminal_color_{0,17}
          colors = {                   -- add/modify theme and palette colors
              palette = {},
              theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
          },
          overrides = function(colors) -- add/modify highlights
              return {}
          end,
          theme = "wave",              -- Load "wave" theme
          background = {               -- map the value of 'background' option to a theme
              dark = "wave",           -- try "dragon" !
              light = "lotus"
          },
      })

      -- setup must be called before loading
      -- vim.cmd("colorscheme kanagawa")
      -- vim.cmd("colorscheme kanagawa-wave")
      vim.cmd("colorscheme kanagawa-dragon")
      -- vim.cmd("colorscheme kanagawa-lotus")
    end
  }
}
