" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'rakr/vim-one'
Plug 'GertjanReynaert/cobalt2-vim-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'arcticicestudio/nord-vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Files
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy finding: finding files
Plug 'chr4/nginx.vim'
Plug 'mileszs/ack.vim' " Searching files

" Coding
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" This plugin enables the Vim conceal feature
" For example, users utilizing the built in json.vim syntax file will no longer see quotation marks in their JSON files.
Plug 'Yggdroot/indentLine'
Plug 'ludovicchabant/vim-gutentags'
" Need install universal-ctags or ctags (brew)
Plug 'majutsushi/tagbar'

" Required by ncm2-phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Completion engine
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" Completion sources
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-jedi' " Python
Plug 'ncm2/ncm2-racer' " Rust
Plug 'ncm2/ncm2-path'

" Snippet
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

" Initialize plugin system
call plug#end()

