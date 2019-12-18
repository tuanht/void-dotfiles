" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'rakr/vim-one'
Plug 'GertjanReynaert/cobalt2-vim-theme'

" Git
Plug 'airblade/vim-gitgutter'

" Files
Plug 'ctrlpvim/ctrlp.vim'
Plug 'chr4/nginx.vim'

" Coding
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" This plugin enables the Vim conceal feature
" For example, users utilizing the built in json.vim syntax file will no longer see quotation marks in their JSON files.
Plug 'Yggdroot/indentLine'
Plug 'ludovicchabant/vim-gutentags'
" Need install universal-ctags or ctags (brew)
Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()

