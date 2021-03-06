execute pathogen#infect()

syntax on
syntax enable               " enable syntax processing
set autoindent 
set autowrite
set nocompatible
set t_Co=256
" set tabstop=4               " fixes stupid million tab indent
" set softtabstop=4           " number of spaces in tab when editing
set smartindent
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
set cryptmethod=blowfish2    " change the way Vim encrypts files to blowfish from zip
set scrolloff=7             " make Vim have 7 lines below cursor when moving down
set list
set listchars=tab:\|\ ,eol:¬,extends:❯,precedes:❮
set t_ut=                   " needed if using Vim inside of tmux

" colorscheme transparent
colorscheme ir_black
" colorscheme desert
" colorscheme twilight

" save line number line when reopening file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" for syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:syntastic_python_python_exec = "/usr/bin/python3.4"

let g:syntastic_html_checkers = ['w3']

" for ragtag.vim 
let g:ragtag_global_maps = 1 

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
nnoremap W :w<CR>

" make WW write
nnoremap WW :w<CR>

" changes until end of line and D deletes until end of line, so why not Y?
noremap Y y$

" status line{{{1
	function! InsertStatuslineColor(mode)
	if a:mode == 'i'
		hi statusline ctermfg=black ctermbg=darkyellow
		hi SLgreen ctermfg=black ctermbg=darkyellow
		hi SLblue ctermfg=black ctermbg=darkyellow
		hi SLcyan ctermfg=black ctermbg=darkyellow
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
	au InsertLeave * hi statusline ctermfg=9 ctermbg=15
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
" }}}

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
