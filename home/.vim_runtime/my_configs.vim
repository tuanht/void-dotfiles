set number

" Disable markdown auto folding
let vim_markdown_folding_disabled = 1

let g:gitgutter_enabled = 1

" Disable comfortable motion plugin
let g:loaded_comfortable_motion = 0

" Enable mode line
set modeline
set modelines=5

" set noshowmode

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['filename', 'paste'],
      \             ['cwd', 'readonly', 'modified'],
      \   ],
      \   'right': [ [ 'lineinfo' ], ['percent'],
      \              [ 'fileformat', 'fileencoding', 'filetype' ]
      \   ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \   'cwd': 'CWD: %{getcwd()}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }
