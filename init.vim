" --- Neovim configs --- "
set termguicolors
set number
set relativenumber
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set spell spelllang=en_us
set mouse=a
set noswapfile
set encoding=UTF-8
set background=dark
set noshowmode
set cursorline
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

Plug 'http://github.com/tpope/vim-surround' " Surrounding
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'EdenEast/nightfox.nvim' " Nightfox theme
Plug 'tomasiser/vim-code-dark' " Vscode dark theme
"Plug 'itchyny/lightline.vim' " Lighline statusline
Plug 'nvim-lualine/lualine.nvim' " Lualine statusline
Plug 'akinsho/bufferline.nvim' " Bufferline for Lualine
Plug 'kyazdani42/nvim-web-devicons' " Icons in your statusline
Plug 'https://github.com/flrnd/plastic.vim.git' " Plastic.vim theme
Plug 'sheerun/vim-polyglot' " Improved syntax highlighting 
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'luochen1990/rainbow' " Brackets pair colorizer
Plug 'mhinz/vim-startify' " Welcome screen
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete
Plug 'junegunn/goyo.vim' " Distraction free mode
Plug 'nvim-lua/plenary.nvim' " Telescope plugin
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Telescope plugin
Plug 'nvim-telescope/telescope.nvim' "Telescope plugin
Plug 'wojciechkepka/vim-github-dark' " Github dark theme
Plug 'andweeb/presence.nvim' " Rich presence for discord
Plug 'sbdchd/neoformat' " Prettier
Plug 'jiangmiao/auto-pairs' " Auto pair brackets and cols and paran
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown Preview
Plug 'SirVer/ultisnips' " UltiSnippets
"Plug 'honza/vim-snippets' " Code snippets
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Tokyo theme
Plug 'dracula/vim', { 'as': 'dracula' } " Dracula theme
Plug 'https://github.com/jbgutierrez/vim-better-comments.git' " Vim better comments
Plug 'chriskempson/base16-vim' " Material darker
Plug 'ryanoasis/vim-devicons' " Icons

call plug#end()

" Snippets configs for UltiSnippets

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Statuline configs for Lua.vim

lua << EOF
require('lualine').setup {
	options = { theme = 'onedark' }
}

--[[ vim.opt.termguicolors = true
require('bufferline').setup {
	options = { theme = 'onedark' }
}
--]]
EOF

" --- GUI configs ---- "

colorscheme onehalfdark
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
"let g:lightline = {
"	\ 'colorscheme': 'onedark'
"	\ }
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
"
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" --- Shortcuts --- "

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-A-w> :MarkdownPreview<CR>
nnoremap <C-A-s> :Neoformat prettier<CR>
nnoremap <C-A-l> :Telescope<CR>

