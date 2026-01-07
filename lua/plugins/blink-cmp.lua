return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 
    'rafamadriz/friendly-snippets', 
    'giuxtaposition/blink-cmp-copilot',
    'archie-judd/blink-cmp-words',
    'Kaiser-Yang/blink-cmp-git',
    'bydlw98/blink-cmp-env',
    'jmbuhr/cmp-pandoc-references',
  },
  -- use a release tag to download pre-built binaries
  -- version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = { preset = 'super-tab' },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      use_nvim_cmp_as_default = false,
      nerd_font_variant = 'normal'
    },

    -- experimental signature help support
    signature = {
      enabled = true,
      window = {
        border = "solid",
      },
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = {
      ghost_text = { enabled = false },
      list = { selection = { preselect = false , auto_insert = true, },},
      documentation = { 
        auto_show = true,
        auto_show_delay_ms = 50,
      },
    },
    
    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
      per_filetype = {
        gitcommit = { "git" },
        bash = { "env" },
        zsh = {"env"},
        markdown = {"lsp", "pandoc_references", "thesaurus", "snippets" },
        text = {"thesaurus"},
      },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          score_offset = 10,
          async = true,
        },
         avante = {
					module = "blink-cmp-avante",
					name = "Avante",
					opts = {},
					max_items = 7,
				},
				thesaurus = {
					name = "blink-cmp-words",
					module = "blink-cmp-words.thesaurus",
					score_offset = -2,
					min_keyword_length = 3,
					max_items = 7,
				},
				git = {
					module = "blink-cmp-git",
					name = "Git",
					opts = {},
					max_items = 7,
				},
				env = {
					module = "blink-cmp-env",
					name = "Env",
					score_offset = -3,
					opts = {},
					max_items = 5,
				},
				pandoc_references = {
					module = "cmp-pandoc-references.blink",
					name = "pandoc_references",
					max_items = 7,
				},
				lsp = {
					async = true,
					max_items = 7,
				},
				snippets = {
					max_items = 5,
				},
				buffer = {
					max_items = 5,
				},
      },
    },

    cmdline = {
      completion = {
        ghost_text = { enabled = false, },
        menu = {
          auto_show = true,
        },
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
      },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" },
}
