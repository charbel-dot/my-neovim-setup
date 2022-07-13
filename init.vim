" --- Neovim configs --- "

set termguicolors
set number
set relativenumber
"set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set spell spelllang=en_us
set mouse=a
set noswapfile
set encoding=UTF-8
set background=dark
set noshowmode
"set cursorline
set laststatus=2

" --- Autocomplete[coc.vim] configs --- "

set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=50
syntax on

" --- Plugins --- "

call plug#begin('C:/users/nasseh/appdata/local/nvim/vim-plug')

Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-lualine/lualine.nvim' " Lualine statusline
Plug 'akinsho/bufferline.nvim' " Bufferline for Lualine
Plug 'kyazdani42/nvim-web-devicons' " Icons in your statusline
Plug 'sheerun/vim-polyglot' " Improved syntax highlighting 
Plug 'luochen1990/rainbow' " Brackets pair colorizer
Plug 'mhinz/vim-startify' " Welcome screen
Plug 'junegunn/goyo.vim' " Distraction free mode
Plug 'nvim-lua/plenary.nvim' " Telescope plugin
Plug 'wojciechkepka/vim-github-dark' " Github dark theme
Plug 'andweeb/presence.nvim' " Rich presence for discord
Plug 'sbdchd/neoformat' " Prettier
Plug 'jiangmiao/auto-pairs' " Auto pair brackets and cols and paran
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown Preview
Plug 'https://github.com/jbgutierrez/vim-better-comments.git' " Vim better comments
"Plug 'kyazdani42/nvim-tree.lua' " Tree
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'ryanoasis/vim-devicons' " Icons

call plug#end()


" --- GUI configs ---- "

colorscheme onedark
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" -- Statusline configs for Lua.vim -- "

lua << EOF
require('lualine').setup {
	options = { theme = 'onedark' }
}

--[[
vim.opt.termguicolors = true
require('bufferline').setup {
	highlights = {
		fill = {
			guifg = '#282c34',
			guibg = '#282c34'
		},
        close_button = {
            guifg = '#282c34',
            guibg = '#282c34'
        }
	}
}
--]]
EOF

" --- Shortcuts --- "

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-A-w> :MarkdownPreview<CR>
nnoremap <C-A-s> :Neoformat prettier<CR>
nnoremap <C-A-l> :Telescope find_files<CR>

