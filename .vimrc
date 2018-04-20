set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

syntax on

set wrap
set linebreak

set showcmd
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

set ignorecase

set visualbell

"set cursorline

setlocal list
setlocal listchars=tab:·\ ,trail:·

set number
set relativenumber

"vmap <C-Right> xpgvlolo
"vmap <C-Left> xhPgvhoho

"map <ESC>[5D <C-Left>
"map <ESC>[5C <C-Right>
"map! <ESC>[5D <C-Left>
"map! <ESC>[5C <C-Right>
