set nu
set rnu
set scrolloff=8
set incsearch
let mapleader=" "
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'wellle/targets.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-commentary'
Plug 'hoob3rt/lualine.nvim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/completion-nvim'
call plug#end()

set tabstop=2 shiftwidth=2 expandtab
colorscheme gruvbox

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('lsp')
lua require('telescope').load_extension('fzf')

nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

nnoremap <Leader>ff :lua require('telescope.builtin').find_files() <CR>
nnoremap <Leader>fb :lua require('telescope.builtin').buffers() <CR>

let g:lualine = {
		\'options' : {
			\  'theme' : 'gruvbox',
			\  'section_separators' : ['', ''],
			\  'component_separators' : ['', ''],
			\  'disabled_filetypes' : [],
			\  'icons_enabled' : v:true,
			\ },
			\'sections' : {
				\  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
				\  'lualine_b' : [ ['branch', {'icon': '',}, ], ],
				\  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
				\  'lualine_x' : [ 'encoding', 'fileformat', 'filetype' ],
				\  'lualine_y' : [ 'progress' ],
				\  'lualine_z' : [ 'location'  ],
				\    },
				\'inactive_sections' : {
					\  'lualine_a' : [  ],
					\  'lualine_b' : [  ],
					\  'lualine_c' : [ 'filename' ],
					\  'lualine_x' : [ 'location' ],
					\  'lualine_y' : [  ],
					\  'lualine_z' : [  ],
					\ },
					\ 'extensions': ['fzf'],
					\ 		        }
lua require("lualine").setup()