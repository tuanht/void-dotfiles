" This file is for init things relate to plugins

nnoremap <silent> <leader>z :Goyo<cr>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
" Change open file behavior
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee|vendor\|var/'

