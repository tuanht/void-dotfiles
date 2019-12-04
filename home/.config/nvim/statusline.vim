" Always show the status line
set laststatus=2

" See more `:help statusline`
" Preview all highlight groups with `:so $VIMRUNTIME/syntax/hitest.vim`

set statusline=%#WildMenu#
set statusline+=\ %{HasPaste()}%f%m%r%h\ %w
set statusline+=%*

set statusline+=\ \ CWD:\ %{getcwd()}%h " Current working directory

set statusline+=%= "Align right
set statusline+=\ \ \ %{&ff}\ \ %Y "File format & type

set statusline+=\ \ %#Folded#
set statusline+=\ \ %p%%\ \  "Percentage through file

set statusline+=%#Search#
set statusline+=\ \ %l:%c\ \  "Current line and column
set statusline+=%* "Switch back to normal highlight

