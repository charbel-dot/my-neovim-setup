" --- Neovim configs --- "
set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set spell
set mouse=a
set noswapfile
set encoding=UTF-8
set background=dark
set noshowmode
set cursorline
set laststatus=2
set termguicolors
" --- Autocomplete[coc.vim] configs --- "

set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=100
syntax on

" --- Plugins --- "

call plug#begin('C:/users/nasseh/appdata/local/nvim/vim-plug')

Plug 'http://github.com/tpope/vim-surround' " Surrounding
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'EdenEast/nightfox.nvim' "nightfox theme
Plug 'tomasiser/vim-code-dark' "Vscode dark theme
Plug 'itchyny/lightline.vim' "lighline statusline
Plug 'https://github.com/flrnd/plastic.vim.git'
Plug 'sheerun/vim-polyglot' "improved syntax highlighting 
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'luochen1990/rainbow' "Brackets pair colorizer
Plug 'mhinz/vim-startify' "welcome screen
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete
Plug 'junegunn/goyo.vim' "distraction free mode
Plug 'nvim-lua/plenary.nvim' "Telescope plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Telescope plugin
Plug 'nvim-telescope/telescope.nvim' "Telescope plugin
Plug 'wojciechkepka/vim-github-dark' "github dark theme
Plug 'andweeb/presence.nvim' "Rich presence for discord
Plug 'sbdchd/neoformat' " Prettier
Plug 'ryanoasis/vim-devicons' "icons

call plug#end()

" --- GUI configs ---- "

colorscheme onehalfdark
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
let g:lightline = {
	\ 'colorscheme': 'onehalfdark',
	\ }
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" --- Shortcuts --- "
nnoremap <C-t> :NERDTreeToggle<CR>

