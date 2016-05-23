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
Plug 'Valloric/YouCompleteMe', { 'for': 'cpp' , 'tag': '*' }
autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif

" Syntax checker for nvim
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' , 'tag': '*' }

" Syntaxtic replacement, since syntaxtic is not supported in nvim yet
Plug 'https://github.com/neomake/neomake.git', { 'tag': '*' }

" Add plugins to &runtimepath
call plug#end()

" *************************************
" END OF PLUGIN SECTION
" *************************************

"SEARCH AND HIGHLIGHTING

set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch
"hightlighting disabling
nmap \q :nohlsearch<CR> 

" *************************************
" KEYMAPPING
" *************************************

"line numbers
nmap \l :setlocal number!<CR>

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
