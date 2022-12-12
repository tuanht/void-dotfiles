source ~/.config/nvim/plugins.vim

try
source ~/.config/nvim/basic.vim
catch
endtry

source ~/.config/nvim/statusline.vim

source ~/.config/nvim/plugins_init.vim
source ~/.config/nvim/map.vim

""""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
" if (has("termguicolors"))
"     set termguicolors
" endif

""""" enable theme
colorscheme night-owl

set number

set splitbelow
set splitright

""""" Vim needs a more POSIX compatible shell than fish
if &shell =~# 'fish$'
    set shell=sh
endif

