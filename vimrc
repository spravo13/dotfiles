set nocompatible
set t_Co=256
set tabstop=4               " fixes stupid million tab indent
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set smartindent
syntax enable               " enable syntax processing
set showcmd                 " show command in bottom bar
" set cursorline            " highlight current line
set showmatch               " highlight matching [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set wrapscan                " wrap around
set ignorecase
set title
set ttyfast                 " makes Vim faster


set list
set listchars=tab:\|\ ,eol:¬,extends:❯,precedes:❮

set clipboard=unnamedplus
let g:clipbrdDefaultReg = '+'

" make capital w write
nnoremap :W :w<CR>

" make WW write
nnoremap WW :w<CR>
