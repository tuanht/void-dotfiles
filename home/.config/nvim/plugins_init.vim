" This file is for init things relate to plugins

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

" gutentags
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['.git']
let g:gutentags_trace = 1

" Enable ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Snippet
" Press enter key to trigger snippet expansion
" The parameters are the same as `:help feedkeys()`
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-l>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-h>"
let g:UltiSnipsRemoveSelectModeMappings = 0

