" let g:python_host_prog = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python3'

" *************************************
" PLUGIN SECTION for Vim-Plug
" *************************************

call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

""
""
"" Golang plugins 
""
""

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}

" GoLang Syntax checker for nvim
" Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh >> /tmp/install_gocode.log 2>&1'}

""
""
"" SNIPPETS PLUGIN
""
""

" Utilsnips
Plug 'SirVer/ultisnips'

" Snippets for Utilsnips
Plug 'honza/vim-snippets'

""
""
"" Visuals, Color schemes, colored utilities, Status Bar,  Themes
""
""

" The colorscheme with neovim in mind.
Plug 'freeo/vim-kalisi'

" Another solarized color theme for truecolor neovim
" Plug 'icymind/neosolarized'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Mark indentation lines
Plug 'Yggdroot/indentLine'

" Color matched parenthesis
"Plug 'kien/rainbow_parentheses.vim'


""
""
"" JavaScript, Node, React, TypeScript 
""
""

"" vim-prettier
" Plug 'prettier/vim-prettier', {
  " \ 'do': 'yarn install',
  " \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"" TypeScript plugin for neovim
"" requires Deoplete
" Plug 'mhartington/nvim-typescript'


" JavaScript autocompletion for ReactJS
" Plug 'chemzqm/vim-jsx-improve'

" JavaScript autocompletion
Plug 'pangloss/vim-javascript'

" JSX Syntax highlighting depends upon pangloss/vim-javascript
Plug 'mxw/vim-jsx'


" Plugin for eslint for JavaScript
"Plug 'mtscout6/syntastic-local-eslint.vim'

" Asynch Linter Enginge for vim/neovim
Plug 'w0rp/ale'

"" Javascript function parameter autocompletion engine
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }

""
""
""
"" Python
""

"" This requires jedi installed
" Plug 'zchee/deoplete-jedi'

"" Jump to definition in another buffer 
" Plug 'davidhalter/jedi-vim'

""
""
"" Autocompletion Engines
""
""

""
" Conquer of Completions
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'

" Deoplete - completion for Neovim
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-go'
Plug 'Shougo/denite.nvim'

" Auto formater
" Plug 'sbdchd/neoformat'

""" Another completion engine
""Plug 'ncm2/ncm2'
""Plug 'roxma/nvim-yarp'
""" NOTE: you need to install completion sources to get completions. Check
""" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
""Plug 'ncm2/ncm2-bufword'
""Plug 'ncm2/ncm2-path'
""
""Plug 'ncm2/ncm2-ultisnips'
""
""Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
""
""Plug 'HerringtonDarkholme/yats.vim'
""Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
""
""Plug 'ncm2/ncm2-jedi'
""
""Plug 'ncm2/ncm2-go'

""
""
"" Utilities and stuff
""
""

" Multicursor like Sublime (Multiline variable edit)
Plug 'terryma/vim-multiple-cursors'

" Silver searcher
" Plug 'gabesoft/vim-ags'

" Auto pairs
" Plug 'jiangmiao/auto-pairs'

" Git integration for vim
" Plug 'jreybert/vimagit'

" Move Lines up or down without copying them
Plug 'matze/vim-move'

" Neomake is a plugin for Vim/Neovim to asynchronously run programs 
" Plug 'neomake/neomake'

" Latex Plugin
" Plug 'lervag/vimtex'

" Yoink Plugin
" Plug 'svermeulen/vim-yoink'

" Visuals about Yanks
" Plug 'machakann/vim-highlightedyank'

" Underline the words like the one under the cursor
Plug 'zhou13/vim-cursorword'

" NERDTree plugin to have a nav-bar
" On-demand loading when calling :NERDTreeToggle
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' , 'tag': '*' }

" Orgasmic commenting tool
Plug 'scrooloose/nerdcommenter', { 'tag': '*' }

" Sneak is a minimalist, versatile Vim motion plugin
" Plug 'justinmk/vim-sneak'

" Explore buffers
" Plug 'jlanzarotta/bufexplorer'

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
" let g:ags_enable_async = 1

" """
" " Configure Deoplete
" "
" "" Start Deoplete plugin
" call deoplete#enable()
" let g:deoplete#enable_at_startup = 1
" "" Required by typescript in Neovim
" let g:deoplete#enable_debug = 1
" let g:deoplete#enable_profile = 1
" call deoplete#enable_logging('DEBUG', '/tmp/deoplete_neovim.log')
" " let g:deoplete#omni#functions = {}
" " let g:deoplete#omni#functions.javascript = [
"   " \ 'jspc#omni'
" " \]

" "set completeopt=longest,menuone,preview
" set completeopt=longest,menuone
" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips']
"
" " Integration of ALE with deoplete
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \})
" call deoplete#custom#option('sources', {
" \ '_': ['ale'],
" \ 'javascript.jsx': ['file', 'ultisnips'],
" \})

" autocmd FileType jsx let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" close the preview window when you're not using it
" let g:SuperTabClosePreviewOnPopupClose = 1
" or just disable the preview entirely
"set completeopt-=preview

""""""" Configure multicursor 
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

""""
"" Configure neomake
""
"" Set log files
" let g:neomake_logfile = "/tmp/neomake_neovim.log"
" "" When writing a buffer.
" " call neomake#configure#automake('w')
" "" When writing a buffer, and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" "" When reading a buffer (after 1s), and when writing.
" " call neomake#configure#automake('rw', 1000)
" ""
" " call neomake#configure#automake('nrwi', 500)
"
" let g:neomake_python_enabled_makers = ['pylint']

"" Configure jedi-vim
" disable autocompletion, cause we use deoplete for completion
" let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"

" open the go-to function in split, not another buffer
" let g:jedi#use_splits_not_buffers = "right"

"""
" Configure UltiSnips - Snippets
"
" Snippets directory
"let g:UltiSnipsSnippetDirectories="~/.config/nvim/plugged/vim-snippets/UltiSnips"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"ncm2
"let g:UltiSnipsRemoveSelectModeMappings = 0

"""
" Configure mxw vim-jsx

" To allow .js extension for JSX syntax highlighting
" let g:jsx_ext_required = 0

"""
" Enable indentation guides on startup (vim-indent-guides)
"let g:indent_guides_enable_on_vim_startup = 1

"" Yggdroot indent lines different at different levels
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = 'c'

"""
" Configure vimtex
"
" To activate vimtex filetype detection.
" The desired ft=tex, but somtimes neovim detects ft=plaintex
" thus nothing related to vimtex works
" let g:tex_flavor = 'latex'

"""
" ALE plugin configurations
"
" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 0
"let g:ale_completion_enabled = 1
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
"
" Enable ALE status bar messages integrated with vim-airline. 
" Set this, Airline will handle the rest.
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
let g:prettier#exec_cmd_async = 1

"" Uncomment to execute prettier when saving buffers
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

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

""
"" Yoink
""
" set shada=!,\'100,<100,s100,h
" let g:yoinkSavePersistently = 1 "" Use the SHAred DAta (SHADA) of nvim
" let g:yoinkMaxItems = 20
" let g:yoinkSyncNumberedRegisters = 1
" let g:yoinkIncludeDeleteOperations = 1
"
" nmap <A-p> <plug>(YoinkPostPasteSwapBack)
" nmap <A-n> <plug>(YoinkPostPasteSwapForward)
"
" nmap p <plug>(YoinkPaste_p)
" nmap P <plug>(YoinkPaste_P)
"
" """ Configure yank coloring timeout
" let g:highlightedyank_highlight_duration = 220

"""
""" COC Yank :CocInstall coc-yank
"""
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>


" """ Configure auto-pairs
" " AutoPairsShortcutToggle
" " Default: '<M-p>'
" let g:AutoPairsShortcutJump = ''
" let g:AutoPairsShortcutToggle = ''
" " The shortcut to toggle auto-pairs.
" " Default: '<M-e>'
" let g:AutoPairsShortcutFastWrap = ''


"" Configure Nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

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

" Save global marks on exit.
" This has been superseded by shada,
" look below with yoink
" set viminfo='100,<100,s100,h

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
"set textwidth=80

" Allow mouse click enabled in terminal
" mouse click places cursor there
set mouse=a

" Show status bar
set laststatus=2

" Show autocompletion of commands
set wildmenu
set wildmode=longest,list,full
"" This was already set above
"set completeopt=longest,menuone

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
nmap <C-c> <leader>cc
nmap <C-x> <leader>cu
vmap <C-c> <leader>cc
" vmap <C-c> <leader>ci
vmap <C-x> <leader>cu

"line numbers
nmap <leader>ln :setlocal number!<CR>

"paste mode
set pastetoggle=<F3>
set nopaste

"NERD Tree
" nmap <leader>nt :NERDTreeToggle<CR>
" nmap <space>e :CocCommand explorer<CR>
nmap <leader>et :CocCommand explorer<CR>

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Open a new tab 
nmap <C-b><C-t> :tabnew<CR>

"tabs next and previous
nmap <F4> :tabprevious<CR>
nmap <F6> :tabnext<CR>

"search with cotrlP
"nmap ; :CtrlPBuffer<CR>

" Formatting mappings to insert double quotes
" and enclosing simbols
""inoremap , ,<space>
""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

" Visual selection mappings
" double quotes. If mappings above change,  this should change to c""<ESC>P
vmap i" c"<ESC>p
" single quotes. If mappings above change,  this should change to c''<ESC>P
vmap i' c'<ESC>p
vmap i( c(<ESC>p
vmap i{ c{ <ESC>pi<right> <ESC>
vmap i[ c[<ESC>p
vmap i< c<><ESC>P
vmap i` c``<ESC>P

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
" nmap <leader>lr wb"ryiw[{V%:s/<C-R>r//gc<left><left><left>

" For global word replace
" nmap <leader>gr wb"ryiw:%s/<C-R>r//gc<left><left><left>

" Search the current word in the workspace
" nmap <F2> wb"ryiw:Ags<space><C-R>r<CR>

"""
" Adding manual configuration for Prettier
" Install with `yarn global add prettier` or `npm install -g prettier`
" autocmd FileType javascript set formatprg=prettier\ --stdin

" When using coc.nvim with :CocInstall coc-prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

""""""
" Denite configuration
" taken from https://github.com/ctaylo21/jarvis/blob/master/config/nvim/init.vim
" === Denite shorcuts === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nmap <leader>t :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o>
  \ <Plug>(denite_filter_quit)
  inoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  inoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  inoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  inoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  inoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-o>
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <C-t>
  \ denite#do_map('do_action', 'tabopen')
  nnoremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> <C-h>
  \ denite#do_map('do_action', 'split')
endfunction

""""""""""
" COC configuration
" Taken from https://github.com/neoclide/coc.nvim
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings using CoCList:
" " Show all diagnostics.
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
