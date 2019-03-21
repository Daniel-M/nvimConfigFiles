" let g:python_host_prog = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python3'

" *************************************
" PLUGIN SECTION for Vim-Plug
" *************************************

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Underline the words like the one under the cursor
Plug 'zhou13/vim-cursorword'

" NERDTree plugin to have a nav-bar
" On-demand loading when calling :NERDTreeToggle
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' , 'tag': '*' }

" Orgasmic commenting tool
Plug 'https://github.com/scrooloose/nerdcommenter', { 'tag': '*' }

" Sneak is a minimalist, versatile Vim motion plugin
Plug 'https://github.com/justinmk/vim-sneak'

" Mark indentation lines
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'

"" LANGUAGE SPECIFIC PLUGINS

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'https://github.com/fatih/vim-go', { 'do': ':GoUpdateBinaries'}

" GoLang Syntax checker for nvim
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh >> /tmp/install_gocode.log 2>&1'}

" Syntaxtic replacement, since syntaxtic is not supported in nvim yet
"Plug 'https://github.com/neomake/neomake.git'

" Latex Plugin
Plug 'https://github.com/lervag/vimtex'

" Deoplete - completion for Neovim
"if has('nvim')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go'
Plug 'Shougo/denite.nvim'
"else
"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"endif

" TypeScript plugin for neovim
" requires Deoplete
"Plug 'mhartington/nvim-typescript'

" TypeScript plugin for Vim
Plug 'leafgarland/typescript-vim'

" Vim syntax autoformatter
"Plug 'Chiel92/vim-autoformat'

"" SNIPPETS PLUGIN

" Snippets for Utilsnips
Plug 'https://github.com/honza/vim-snippets'

" Utilsnips
Plug 'https://github.com/SirVer/ultisnips'

" JavaScript autocompletion
Plug 'https://github.com/pangloss/vim-javascript'

" JSX Syntax highlighting depends upon pangloss/vim-javascript
Plug 'mxw/vim-jsx'

" Plugin for eslint for JavaScript
"Plug 'mtscout6/syntastic-local-eslint.vim'

" JavaScript linter for Vim
Plug 'w0rp/ale'

"" COLOR SCHEMES PLUGIN

" The colorscheme with neovim in mind.
Plug 'https://github.com/freeo/vim-kalisi'

" Another solarized color theme for truecolor neovim
Plug 'https://github.com/icymind/neosolarized'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Silver searcher
Plug 'https://github.com/gabesoft/vim-ags'

" Git integration for vim
Plug 'jreybert/vimagit'

" Move Lines up or down without copying them
Plug 'matze/vim-move'

" Color matched parenthesis
"Plug 'kien/rainbow_parentheses.vim'

" Add plugins to &runtimepath
call plug#end()

" *************************************
" END OF PLUGIN SECTION
" *************************************


" *************************************
" PLUGIN CONFIGURATION SECTION
" *************************************

"""
" Configure vim-ag silver searcher
"
let g:ags_enable_async = 1

"""
" Configure Deoplete
"
" Start Deoplete plugin
call deoplete#enable()
let g:deoplete#enable_at_startup = 1
" Required by typescript in Neovim
let g:deoplete#enable_debug = 1
let g:deoplete#enable_profile = 1
call deoplete#enable_logging('DEBUG', '/tmp/deoplete_neovim.log')


""""
"" Configure neomake
""
"" Set log files
"let g:neomake_logfile = "/tmp/neomake_neovim.log"
"" When writing a buffer.
"call neomake#configure#automake('w')
"" When writing a buffer, and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
"" When reading a buffer (after 1s), and when writing.
"call neomake#configure#automake('rw', 1000)


"""
" Configure UltiSnips - Snippets
"
" Snippets directory
"let g:UltiSnipsSnippetDirectories="~/.config/nvim/plugged/vim-snippets/UltiSnips"
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
" Configure vim-autoformat
"au BufWrite * :Autoformat

"""
" Enable indentation guides on startup (vim-indent-guides)
"let g:indent_guides_enable_on_vim_startup = 1

"""
" Configure vimtex
"
" To activate vimtex filetype detection.
" The desired ft=tex, but somtimes neovim detects ft=plaintex
" thus nothing related to vimtex works
let g:tex_flavor = 'latex'

"""
" ALE plugin configurations
"
" Enable completion where available.
let g:ale_completion_enabled = 1
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
"
" Enable status bar messages. Set this,
" Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
"
" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 5

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\}

let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint', 'jslint']}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 0

" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

"""
" Configure vim-airline
"
" enable spell detection
let g:airline_detect_spell=1
"
" Set the dark theme
"let g:airline_theme='dark'
let g:airline_theme='cool'

"let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#show_message = 1
let g:airline#extensions#whitespace#checks = [ 'indent', 'trailing', 'long', 'mixed-indent-file' ]

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

"autocmd FileType agse,agsv RainbowParenthesesToggle
"" Rainbow parenthesis configurations
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
""let g:rbpt_colorpairs = [
""    \ ['brown',       'RoyalBlue3'],
""    \ ['Darkblue',    'SeaGreen3'],
""    \ ['darkgray',    'DarkOrchid3'],
""    \ ['darkgreen',   'firebrick3'],
""    \ ['darkcyan',    'RoyalBlue3'],
""    \ ['darkred',     'SeaGreen3'],
""    \ ['darkmagenta', 'DarkOrchid3'],
""    \ ['brown',       'firebrick3'],
""    \ ['gray',        'RoyalBlue3'],
""    \ ['black',       'SeaGreen3'],
""    \ ['darkmagenta', 'DarkOrchid3'],
""    \ ['Darkblue',    'firebrick3'],
""    \ ['darkgreen',   'RoyalBlue3'],
""    \ ['darkcyan',    'SeaGreen3'],
""    \ ['darkred',     'DarkOrchid3'],
""    \ ['red',         'firebrick3'],
""    \ ]

" *************************************
" END PLUGIN CONFIGURATION SECTION
" *************************************




" *************************************
" KEYMAPPING AND TWEAKING SECTION
" *************************************
" Recall that <leader> maps to "\" by default
" so <leader>q means "\q"on a default installation

" Actually delete characters when using the backspace
set backspace=2

" Longer history
set history=1000

"highlighting disabling
nmap <leader>q :nohlsearch<CR>

" Save global marks on exit
set viminfo='100,<50,s10,h

"""""
"SEARCH AND HIGHLIGHTING

" Show matching brackets
set showmatch
" Show line numbers
set number
" Continue comment marker on new lines
set formatoptions+=o

set incsearch
set noignorecase
"set ignorecase
set smartcase
set hlsearch

" Show line and column number in the status bar
set ruler

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" expand tabs as spaces
set expandtab
" set the tab size to 2 spaces
set tabstop=2 "Parallelo configs
set shiftwidth=2 "Parallelo configs

" Keep indenting as the previous line
set autoindent

" Show mark at 80 chars length
set colorcolumn=80

" Word wrapping
set textwidth=80

" Allow mouse click enabled in terminal
" mouse click places cursor there
set mouse=a

" Show status bar
set laststatus=2

" Show autocompletion of commands
set wildmenu
set wildmode=longest,list,full
set completeopt=longest,menuone

" Put the cursor to blink
set guicursor=a:blinkon100

" Keep 10 lines above or below the cursor to give more context
set scrolloff=10

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
"let &t_AB="<leader>e[48;5;%dm"
"let &t_AF="<leader>e[38;5;%dm"

" *************************************
" KEYMAPPING
" *************************************

" commenting and uncommenting with NERDCommenter plugin
"nmap <C-c> <leader>cc
nmap <C-c> <leader>ci
nmap <C-x> <leader>cu
"vmap <C-c> <leader>cc
vmap <C-c> <leader>ci
vmap <C-x> <leader>cu

"line numbers
nmap <leader>ln :setlocal number!<CR>

"paste mode
set pastetoggle=<F3>
set nopaste

"NERD Tree
nmap <leader>nt :NERDTreeToggle<CR>

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

"tabs next and previous
nmap <F2> :tabnext<CR>
nmap <F4> :tabprevious<CR>

"search with cotrlP
"nmap ; :CtrlPBuffer<CR>

" Formatting mappings to insert double quotes
" and enclosing simbols
inoremap , ,<space>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Visual selection mappings
" double quotes. If mappings above change,  this should change to c""<ESC>P
vmap i" c"<ESC>p
" single quotes. If mappings above change,  this should change to c''<ESC>P
vmap i' c'<ESC>p
vmap i( c(<ESC>p
vmap i{ c{ <ESC>pi<right> <ESC>
vmap i[ c[<ESC>p
vmap i< c<><ESC>P
"vmap i< c< <ESC>Pi<right> ><ESC>

" buffer close
nmap <C-b><C-d> :bd<Enter>

" Show all pending TODO comments
" using the silver searcher
function! Todo()
:Ags TODO
endfunction
command Todo :call Todo()

" For local word replace in between {}
"nmap <leader>lr gd[{V%::s/<C-R>///gc<left><left><left>
nmap <leader>lr b"ryiw[{V%:s/<C-R>r//gc<left><left><left>

" For global word replace
nmap <leader>gr b"ryiw[{V%:s/<C-R>r//gc<left><left><left>

" Search the current word in the workspace
nmap <F6> b"ryiw:Ags<C-R><left><space><CR>

"""
" Adding manual configuration for Prettier
" Install with `yarn global add prettier` or `npm install -g prettier`
" autocmd FileType javascript set formatprg=prettier\ --stdin
