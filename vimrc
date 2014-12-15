syntax on
set autoindent 
set autowrite
set nocompatible
set t_Co=256
set tabstop=4               " fixes stupid million tab indent
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set smartindent
syntax enable               " enable syntax processing
set noshowmode              " turn off "--INSERT--" at bottom of screen
set showcmd                 " show command in bottom bar
set showmatch               " highlight matching [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set wrapscan                " wrap around
set ignorecase
set title
set ttyfast                 " makes Vim faster
set backspace=indent,eol,start
set laststatus=2            " always turn on status line
set cryptmethod=blowfish    " change the way Vim encrypts files to blowfish from zip
set scrolloff=7             " make Vim have 7 lines below cursor when moving down
set list
set listchars=tab:\|\ ,eol:¬,extends:❯,precedes:❮
set t_ut=                   " needed if using Vim inside of tmux

" make line numbers go 1,2,3,4...
set number

let g:snips_author="Spencer Bravo"
let g:snips_email="spencer@codeshrub.com"
let g:snips_github="spravo13"

" set up menu stuff
set wildmenu
set wildmode=list,longest,full

set clipboard=unnamedplus
let g:clipbrdDefaultReg = '+'

" better indenting for visual mode
vnoremap > >gv
vnoremap < <gv

" make capital w write
nnoremap :W :w<CR>

" make WW write
nnoremap WW :w<CR>

" status line{{{1
function! InsertStatuslineColor(mode)
if a:mode == 'i'
    hi statusline ctermfg=4 ctermbg=15
    hi SLgreen ctermfg=0 ctermbg=4
    hi SLblue ctermfg=0 ctermbg=4
    hi SLcyan ctermfg=0 ctermbg=4
elseif a:mode == 'r'
    hi statusline ctermfg=9 ctermbg=15
    hi SLgreen ctermfg=0 ctermbg=9
    hi SLblue ctermfg=0 ctermbg=9
    hi SLcyan ctermfg=0 ctermbg=9
else
    hi statusline ctermfg=0 ctermbg=15
endif
endfunction
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=0 ctermbg=15
au InsertLeave * hi SLgreen ctermfg=2 ctermbg=0
au InsertLeave * hi SLblue ctermfg=4 ctermbg=0
au InsertLeave * hi SLcyan ctermfg=6 ctermbg=0
hi statusline ctermfg=0 ctermbg=15
hi SLgreen ctermfg=2 ctermbg=0
hi SLblue ctermfg=4 ctermbg=0
hi SLcyan ctermfg=6 ctermbg=0
set statusline=%#SLblue#%f " file name
set statusline+=%#SLgreen#\ %Y " filetype
set statusline+=%#SLcyan#\ %M " modified flag
set statusline+=\ %= " align left
set statusline+=%#SLcyan#%c " column
set statusline+=%#SLgreen#\ %p%% " percent of file
set statusline+=%#SLblue#\ %l/%L " line/total lines
