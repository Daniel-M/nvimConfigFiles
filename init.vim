" let g:python_host_prog = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python3'

" *************************************
" PLUGIN SECTION for Vim-Plug
" *************************************

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" NERDTree plugin to have a nav-bar
" On-demand loading when calling :NERDTreeToggle
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' , 'tag': '*' }

" Orgasmic commenting tool
Plug 'https://github.com/scrooloose/nerdcommenter', { 'tag': '*' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Sneak is a minimalist, versatile Vim motion plugin
Plug 'https://github.com/justinmk/vim-sneak'

" Mark indentation lines
Plug 'nathanaelkane/vim-indent-guides'


"" LANGUAGE SPECIFIC PLUGINS

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'https://github.com/fatih/vim-go', { 'tag': '*' }

" GoLang Syntax checker for nvim
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh'}

" Syntaxtic replacement, since syntaxtic is not supported in nvim yet
Plug 'https://github.com/neomake/neomake.git'

" Latex Plugin
Plug 'https://github.com/lervag/vimtex'

" Deoplete - completion for Neovim
Plug 'https://github.com/Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" TypeScript plugin for neovim
" requires Deoplete
Plug 'mhartington/nvim-typescript'


"" SNIPPETS PLUGIN

" Snippets for Utilsnips
Plug 'https://github.com/honza/vim-snippets'

" Utilsnips
Plug 'https://github.com/SirVer/ultisnips'

" JavaScript autocompletion
Plug 'https://github.com/pangloss/vim-javascript'

" JSX Syntax highlighting depends upon pangloss/vim-javascript
Plug 'mxw/vim-jsx'


"" COLOR SCHEMES PLUGIN

" The colorscheme with neovim in mind.
Plug 'https://github.com/freeo/vim-kalisi'

" Another solarized color theme for truecolor neovim 
Plug 'https://github.com/icymind/neosolarized'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Add plugins to &runtimepath
call plug#end()

" *************************************
" END OF PLUGIN SECTION
" *************************************


" *************************************
" PLUGIN CONFIGURATION SECTION
" *************************************

"""
" Configure Deoplete 
"
" Start Deoplete plugin
call deoplete#enable()
let g:deoplete#enable_at_startup = 1
" Required by typescript
let g:deoplete#enable_debug = 1
let g:deoplete#enable_profile = 1
call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')


"""
" Configure neomake
"
" Set log files
let g:neomake_logfile = "/tmp/neomake.log"
" When writing a buffer.
call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)


"""
" Configure UltiSnips - Snippets
"
" Snippets directory
let g:UltiSnipsSnippetDirectories="~/.config/nvim/plugged/vim-snippets/UltiSnips"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"""
" Configure mxw vim-jsx 

" To allow .js extension for JSX syntax highlighting
let g:jsx_ext_required = 0

"""
" Configure vimtex
"
" To activate vimtex filetype detection.
" The desired ft=tex, but somtimes neovim detects ft=plaintex
" thus nothing related to vimtex works
let g:tex_flavor = 'latex'
" *************************************
" END PLUGIN CONFIGURATION SECTION
" *************************************



" *************************************
" KEYMAPPING AND TWEAKING SECTION
" *************************************

"highlighting disabling
nmap \q :nohlsearch<CR> 

"""""
"SEARCH AND HIGHLIGHTING

set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

" Show line and column number in the status bar
set ruler

filetype plugin indent on
" show existing tab with 4 spaces width
"set tabstop=4
set tabstop=2 "Parallelo configs
" when indenting with '>', use 4 spaces width
"set shiftwidth=4
set shiftwidth=2 "Parallelo configs
" On pressing tab, insert 4 spaces
set expandtab

" Show mark at 80 chars length
"set cc=80

" Allow mouse click enabled in terminal
" mouse click places cursor there 
set mouse=a


"
" SET SPELL CHEKING ON, USEFUL WHEN WRITING STUFF
"
"spanish spell checking not tested
"setlocal spell spelllang=es
"
"english spell checking tested and working
"setlocal spell spelllang=en
set spell spelllang=en


"
" COLOR SCHEMES
"

"Activating freeo/vim-kalisi colorscheme
colorscheme kalisi 
set background=dark
"set background=light

" flattened romainl/flattened colorscheme
"colorscheme flattened_dark

"colorscheme NeoSolarized

set t_Co=256
" in case t_Co alone doesn't work, add this as well:
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"

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
nmap \nt :NERDTreeToggle<CR>

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"search with cotrlP
"nmap ; :CtrlPBuffer<CR>

" YouCompleteMe enabling
"set completeopt+=preview
