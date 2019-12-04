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

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Initialize plugin system
call plug#end()

