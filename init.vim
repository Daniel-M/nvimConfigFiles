" let g:python_host_prog = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python3'

" *************************************
" PLUGIN SECTION
" *************************************

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" NERDTree plugin to have a nav-bar
" On-demand loading when calling :NERDTreeToggle
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' , 'tag': '*' }

" Orgasmic commenting tool
Plug 'https://github.com/scrooloose/nerdcommenter', { 'tag': '*' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'https://github.com/fatih/vim-go', { 'tag': '*' }

" Code to execute when the plugin is loaded on demand
" I want it to be compiled with python3 but the `do` command could be
" changed to `do : ./install ...`
"Plug 'Valloric/YouCompleteMe', { 'for': 'cpp' , 'tag': '*' }
"Plug 'Valloric/YouCompleteMe', { 'tag': '*', 'do' : 'python3 install.py --clang-completer --gocode-completer --system-boost' }
Plug 'Valloric/YouCompleteMe', { 'tag': '*', 'do' : 'python3 install.py --clang-completer --gocode-completer' }
"autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif

" Syntax checker for nvim
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh'}

" Syntaxtic replacement, since syntaxtic is not supported in nvim yet
Plug 'https://github.com/neomake/neomake.git', { 'tag': '*' }

" Sneak is a minimalist, versatile Vim motion plugin
Plug 'https://github.com/justinmk/vim-sneak'

" The colorscheme with neovim in mind.
Plug 'https://github.com/freeo/vim-kalisi'

" Add plugins to &runtimepath
call plug#end()

" *************************************
" END OF PLUGIN SECTION
" *************************************

"hightlighting disabling
nmap \q :nohlsearch<CR> 

"SEARCH AND HIGHLIGHTING

set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

 "Activating vim-kalisi colorscheme
colorscheme kalisi
"set background=light
set background=dark

" *************************************
" KEYMAPPING
" *************************************

" commenting and uncommenting with NERDCommenter plugin
nmap <C-c> \cc 
vmap <C-c> \ci 
nmap <C-x> \cu
vmap <C-x> \cu

"line numbers
nmap \ln :setlocal number!<CR>

"paste mode
set pastetoggle=<F3>

"NERD Tree
nmap \e :NERDTreeToggle<CR>

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"search with cotrlP
nmap ; :CtrlPBuffer<CR>

" YouCompleteMe enabling
set completeopt+=preview

"
" SET SPELL CHEKING ON, USEFUL WHEN WRITING STUFF
"
"spanish spell checking not tested
"setlocal spell spelllang=es_es
"
"english spell checking tested and working
setlocal spell spelllang=en_us

