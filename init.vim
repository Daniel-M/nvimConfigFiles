" *************************************
" PLUGIN SECTION for Vim-Plug
" *************************************

call plug#begin('~/.config/nvim/plugged')


""
""
"" SNIPPETS PLUGIN
""
""

" Utilsnips
" Plug 'SirVer/ultisnips'

" Snippets for Utilsnips
Plug 'honza/vim-snippets'

""
""
"" Visuals, Color schemes, colored utilities, Status Bar,  Themes
""
""

" The colorscheme with neovim in mind.
Plug 'freeo/vim-kalisi'

" Aurora dark colorscheme
Plug 'rafalbromirski/vim-aurora'

Plug 'yassinebridi/vim-purpura'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Mark indentation lines
Plug 'Yggdroot/indentLine'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

""
""
"" JavaScript, Node, React, TypeScript
""
""

" JavaScript autocompletion
Plug 'pangloss/vim-javascript'

" JSX Syntax highlighting depends upon pangloss/vim-javascript
Plug 'mxw/vim-jsx'


" Plugin for eslint for JavaScript
"Plug 'mtscout6/syntastic-local-eslint.vim'

" Asynch Linter Enginge for vim/neovim
Plug 'dense-analysis/ale'

"" Javascript function parameter autocompletion engine
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

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
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

""
""
"" Utilities and stuff
""
""

" Multicursor like Sublime (Multiline variable edit)
Plug 'terryma/vim-multiple-cursors'

" Highlight word under cursor
" Plug 'dominikduda/vim_current_word'

" Silver searcher
" Plug 'gabesoft/vim-ags'

" Auto pairs
" Plug 'jiangmiao/auto-pairs'

" Move Lines up or down without copying them
Plug 'matze/vim-move'

" Latex Plugin
" Plug 'lervag/vimtex'

" Yoink Plugin
" Plug 'svermeulen/vim-yoink'

" Visuals about Yanks
" Plug 'machakann/vim-highlightedyank'

" Underline the words like the one under the cursor
" Plug 'zhou13/vim-cursorword'

" NERDTree plugin to have a nav-bar
" On-demand loading when calling :NERDTreeToggle
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' , 'tag': '*' }

" Orgasmic commenting tool
Plug 'scrooloose/nerdcommenter', { 'tag': '*' }


" Add plugins to &runtimepath
call plug#end()

" *************************************
" END OF PLUGIN SECTION
" *************************************


" *************************************
" PLUGIN CONFIGURATION SECTION
" *************************************

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

""""""" Configure vim_current_word
" let g:vim_current_word#highlight_delay = 500 "in milliseconds

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
\   'javascript': ['prettier', 'eslint'],
\}

let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {
	\ 'go': ['gopls'],
  \ 'jsx': ['pretier', 'stylelint', 'eslint', 'jslint']
	\}
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
" let g:airline_theme='cool'
let g:airline_theme='purpura'

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
"" Configure Nerdcommenter
"""
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
" " replace grep with ag
" call denite#custom#var('grep', {
"     \ 'command': ['ag'],
"     \ 'default_opts': ['-i', '--vimgrep'],
"     \ 'recursive_opts': [],
"     \ 'pattern_opt': [],
"     \ 'separator': ['--'],
"     \ 'final_opts': [],
		" \ })

" replace grep with rg
call denite#custom#var('grep', {
		\ 'command': ['rg'],
		\ 'default_opts': ['-i', '--vimgrep', '--no-heading'],
		\ 'recursive_opts': [],
		\ 'pattern_opt': ['--regexp'],
		\ 'separator': ['--'],
		\ 'final_opts': [],
		\ })

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

let g:coc_global_extensions = ["coc-tsserver",
      \ "coc-stylelint",
      \ "coc-json",
      \ "coc-python",
      \ "coc-prettier",
      \ "coc-html",
      \ "coc-css",
      \ "coc-eslint",
      \ "coc-yaml",
      \ "coc-go",
      \ "coc-highlight",
      \ "coc-snippets",
      \ "coc-yank",
      \ "coc-pairs",
      \ "coc-ultisnips",
      \ "coc-markdownlint",
      \ "coc-explorer"]

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
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

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

" " make error texts have a red color
" highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
" highlight CocErrorLine ctermfg=Red  guifg=#ff0000
" "
" highlight CocWarningHighlight ctermfg=Yellow  guifg=#ff8800
" highlight CocWarningLine ctermfg=Yellow  guifg=#ff8800
" highlight link CocErrorSign GruvboxRed
"
" " Highlight the symbol and its references when holding the cursor.
" " hi link default CocHighlightText ctermfg=Red  guifg=#ff0000
" autocmd CursorHold * silent call CocActionAsync('highlight')
" hi CursorColumn guifg=#ffffff guibg=#5b005b
"
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

"""
""" COC Yank :CocInstall coc-yank
"""
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>


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

"search highlighting disabling
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

" Rainbow parenthesis

"Activating freeo/vim-kalisi colorscheme
" colorscheme kalisi
" colorscheme aurora
" Mind of changing the airline theme accordingly
colorscheme purpura
set background=dark
"set background=light

" flattened romainl/flattened colorscheme
"colorscheme flattened_dark

"colorscheme NeoSolarized

set termguicolors
" set t_Co=256
" in case t_Co alone doesn't work, add this as well:
"let &t_AB="<leader>e[48;5;%dm"
"let &t_AF="<leader>e[38;5;%dm"

"" Place this coc-nvim config here after we changed the colorscheme
" make error texts have a red color
highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
highlight CocErrorLine ctermfg=Red  guifg=#ff0000
"
highlight CocWarningHighlight ctermfg=Yellow  guifg=#ff8800
highlight CocWarningLine ctermfg=Yellow  guifg=#ff8800
highlight link CocErrorSign GruvboxRed

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
highlight CursorColumn guifg=#ffffff guibg=#5b007b


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

"""
""" netrw built-in explorer configured to look like nerdtree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
" augroup ProjectDrawer
  " autocmd!
  " autocmd VimEnter * :Vexplore
" augroup END

"buffer next and previous
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

" Open a new tab
nmap <C-b><C-t> :tabnew<CR>

"tabs next and previous
nmap <F4> :tabprevious<CR>
nmap <F6> :tabnext<CR>

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

" close current buffer
nmap <C-b><C-d> :bd<Enter>

" Set folding method by syntax
set foldmethod=syntax
" set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Format JSON text using python
function! JsonFormat()
:%!python -m json.tool
endfunction
command JsonFormat :call JsonFormat()

" Show all pending TODO comments
" using the Denite with ripgrep searcher
function! Todo()
" :Ags TODO
:Denite grep: file/rec -no-empty <CR>
endfunction
command Todo :call Todo()

" Trailing spaces functions
function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
nnoremap <F10>     :ShowSpaces 1<CR>
nnoremap <S-F10>   m`:TrimSpaces<CR>``
vnoremap <S-F10>   :TrimSpaces<CR>

" To use % for matching closing tags ([{}])
set showmatch
set matchtime=3
