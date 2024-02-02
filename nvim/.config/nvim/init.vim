" load general settings
source ~/.config/nvim/modules/general.vim

" load keymaps
source ~/.config/nvim/modules/keymap.vim

" load plugins
source ~/.config/nvim/modules/plugins.vim

" load custom functions
source ~/.config/nvim/modules/custom_functions.vim

let g:python3_host_prog = '/usr/local/bin/python3'
"let g:ruby_host_prog = '/usr/local/opt/ruby/bin/ruby'
let g:ruby_host_prog = '/usr/local/bin/neovim-ruby-host'
let g:node_host_prog = '/usr/local/bin/neovim-node-host'
let g:loaded_perl_provider = 0

lua << EOF
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    --ensure_installed = { "c", "lua", "rust" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "javascript" },

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
  }
}
EOF
