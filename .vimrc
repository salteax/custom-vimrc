"       (`-')  _     <-. (`-')     (`-')           
"      _(OO ) (_)       \(OO )_ <-.(OO ) _         
" ,--.(_/,-.\ ,-(`-'),--./  ,-.),------,)\-,-----. 
" \   \ / (_/ | ( OO)|   `.'   ||   /`. ' |  .--./ 
"  \   /   /  |  |  )|  |'.'|  ||  |_.' |/_) (`-') 
" _ \     /_)(|  |_/ |  |   |  ||  .   .'||  |OO ) 
" \-'\   /    |  |'->|  |   |  ||  |\  \(_'  '--'\ 
"     `-'     `--'   `--'   `--'`--' '--'  `-----' 

" general settings
set history=999
filetype plugin on
filetype indent on
set autoread
set laststatus=2
set encoding=utf-8
set shell=bash
set fileformats=unix
set ff=unix
" set list " invisible chars 

" interface
set so=5
set sidescrolloff=5
set ruler
set cursorline
set number relativenumber
set lazyredraw

" search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" indent
set si
set ai
set wrap

" regex
set magic

" tabs
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" file settings
set directory=~/.vim/tmp
set backupdir=~/.vim/backupdir
set backup
set undodir=~/.vim/undodir
set undofile

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

" sweet menu
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<c-z>
map <f4> :emenu <c-z>

" colorscheme settings
syntax on
colorscheme gruvbox
set background=dark
set termguicolors

" enable 256 colors
set t_CO=256
set t_ut=

" turn down the fucking bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" search remapping
map <space> /
map <C-space> ?

" code folding
set foldmethod=indent
set foldlevel=99

" NERDTree settings
nmap <C-e> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1

" Tagbar settings
nmap <C-t> :TagbarToggle<CR>

" Lightline settings
set noshowmode
let g:lightline={'colorscheme':'gruvbox'}

" auto pairs
au FileType python let b:AutoPairs = AutoPairsDefine({"f'":"'","r'":"'","b'":"'"})

" python settings
let g:ale_linters={'python':['flake8','pydocstyle']}
let g:ale_fixers={'*':[],'python':['black','isort']}
let g:ale_fix_on_save=1

" move through split windows
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" human
:command WQ wq
:command Wq wq
:command W w
:command Q q

" vim latex
map <C-n> :! pdflatex %<CR><CR>
map <C-m> :! xdg-open %<.pdf &<CR><CR>
