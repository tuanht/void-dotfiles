" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'rakr/vim-one'
Plug 'GertjanReynaert/cobalt2-vim-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Files
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy finding: finding files
Plug 'chr4/nginx.vim'
Plug 'mileszs/ack.vim' " Searching files

" Coding
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
" This plugin enables the Vim conceal feature
" For example, users utilizing the built in json.vim syntax file will no longer see quotation marks in their JSON files.
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

