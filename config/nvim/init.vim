scriptencoding utf-8
" .........................................................
" # Plugins
" .........................................................

" Plugins folder
call plug#begin('~/.local/share/nvim/plugged')


" ## General Utilities

Plug 'mhinz/vim-startify'  " Show a start screen
Plug 'vim-airline/vim-airline'  " Status bar & tabline
Plug 'editorconfig/editorconfig-vim'


" ## Editor Utilities

Plug 'yggdroot/indentline'  " Show indentation lines
Plug 'google/vim-searchindex'  " Show number of search
Plug 'tpope/vim-surround'  " Surround easily text with quotes, parentheses, etc.
Plug 'scrooloose/nerdcommenter'  " Comment lines easily
Plug 'jiangmiao/auto-pairs'  " Autopair quotes, parentheses, etc.
Plug 'tpope/vim-unimpaired'  " Handy bracket mappings
Plug 'haya14busa/incsearch.vim'  " Better incsearch
Plug 'machakann/vim-highlightedyank' " Highlight yanked text
Plug 'tpope/vim-repeat'  " Extend '.' for repeat scripts actions
Plug 'tpope/vim-eunuch'  " Command line utilities
Plug 'justinmk/diffchar.vim'  " Diff char by char


" ## Navigation Utilities

Plug 'scrooloose/nerdtree'  " Tree explorer
Plug 'tpope/vim-apathy'  " Extends gf
Plug 'jeffkreeftmeijer/vim-numbertoggle'  " Deactivate relativenumber when are not needed

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'  " General fuzzy finder
Plug 'mhinz/vim-grepper'

Plug 'ludovicchabant/vim-gutentags'  " Automated tag file generation
Plug 'majutsushi/tagbar'  " Display tags in a window
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }  " Close/hide/delete current buffer


" ## Other Utilities

Plug 'janko-m/vim-test' " Tests execution
Plug 'kassio/neoterm'  " Terminal wrapper
Plug 'stsewd/spotify.nvim', { 'do': ':UpdateRemotePlugins' }  " Control Spotify


" ## Text Objects & Motions

Plug 'chaoren/vim-wordmotion'  " Wordmotion text-object

Plug 'kana/vim-textobj-user'  " Base
Plug 'jceb/vim-textobj-uri'  " URI text object (u)
Plug 'kana/vim-textobj-indent'  " Indentation text object (i)

Plug 'wellle/targets.vim'  " Operator pending mappings ()[]{}

Plug 'justinmk/vim-sneak'  " s


" ## Git Integration

Plug 'airblade/vim-gitgutter'  " Show git diff on the numbers column
Plug 'tpope/vim-fugitive'  " Git wrapper
Plug 'lambdalisue/gina.vim'  " Asynchronously Git wrapper


" ## Autocompletion

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-syntax'  " Provides completions from syntax
Plug 'Shougo/echodoc.vim'  " Show function signature

Plug 'ervandew/supertab'  " Uses tab for navigate on completions

Plug 'fszymanski/deoplete-emoji'


" ## Snippets

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'


" ## Linters & Formatters

Plug 'w0rp/ale'  " Async lint engine
Plug 'rhysd/vim-grammarous'  " Grammar checker


" ## Themes & Color Schemes

Plug 'vim-airline/vim-airline-themes'  " Themes for airline
Plug 'ryanoasis/vim-devicons'  " Show icons on filetypes
Plug 'iCyMind/NeoSolarized'  " Solarized theme
Plug 'trevordmiller/nova-vim'


" ## Reading & Focus

Plug 'junegunn/goyo.vim'  " Free distraction mode


" ## Languages

Plug 'sheerun/vim-polyglot'

" ### C/C++

Plug 'tweekmonster/deoplete-clang2'
Plug 'kana/vim-altr'

" ### CSS

Plug 'ap/vim-css-color', { 'for': 'css' }

" ### HTML

Plug 'valloric/MatchTagAlways'  " Match html tags (colorize tags)
Plug 'alvan/vim-closetag'  " Closes tag after '>'

" ### JavaScript

Plug 'carlitux/deoplete-ternjs'
Plug 'ternjs/tern_for_vim'

" ### Markdown

Plug 'godlygeek/tabular'  " Filtrado y alineado de texto
Plug 'plasticboy/vim-markdown'
Plug 'shime/vim-livedown', { 'for': 'markdown' }  " Markdown preview (npm install -g livedown)

" ### Python

Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'bps/vim-textobj-python', { 'for': 'python' }
Plug 'stsewd/isort.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'raimon49/requirements.txt.vim', { 'for': 'requirements' }
Plug 'tweekmonster/django-plus.vim'

" ### TypeScript

Plug 'mhartington/nvim-typescript', { 'for': 'typescript' }

" ### Vim

Plug 'Shougo/neco-vim'
Plug 'stsewd/open-plugin-page.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()


" ..........................................................
" # Settings
" ..........................................................

" ## GUI

set title
set mouse=a
set noshowmode

set colorcolumn=100  " Set & show limit column
set scrolloff=3  " Display at least 3 lines around you cursor

set diffopt+=vertical  " Always use vertical diffs


" ## Lines

set nowrap  " No wrap lines (display long lines)
set number  " Display line numbers
set relativenumber  " Show relative line numbers
set cursorline  " Highlight current line
set nojoinspaces  " Always use one space to join line


" ## Indentation

set tabstop=4
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab


" ## Search & replace

set ignorecase
set smartcase
set gdefault

" Show replace live preview
set inccommand=nosplit


" ## Theme & Colorscheme

set termguicolors  " Active true colors on terminal
set background=light
colorscheme nova  " NeoSolarized, nova
" Hack to fix incompatible hl with recent versions of neovim
highlight CursorLine ctermfg=black


" ## Buffers

set hidden  " Allow change buffers without saving


" ## Spellchecker

set spelllang=en,es
set complete+=kspell  " Autocomplete with dictionary words


" ## Python

let b:python_path = $NVIM_PYTHON_HOST
if b:python_path !=# ''
  let g:python3_host_prog = expand(b:python_path)
endif
let g:loaded_python_provider = 1


" .........................................................
"  # Mappings
" .........................................................

" Map <leader> to space and <localleader> to comma
let g:mapleader = ' '
let g:maplocalleader = ','

" Save
nnoremap <leader>w :w<CR>

" Edit init.vim
nnoremap <leader>e :e $MYVIMRC<CR>

" Esc
inoremap jk <esc>

" Clear highlighted
nnoremap <silent> <leader>l :nohlsearch<CR>

" Copy to clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Cut to clipboard
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Scroll
nnoremap <up> <c-y>
nnoremap <down> <c-e>

" Search
nnoremap * *<C-o>
nnoremap # #<C-o>

" Exit terminal mode with escape
tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>
tnoremap <A-[> <Esc>

" .........................................................
"  # Custom Commands and Autocommands
" .........................................................

" Enter insert mode when openning a terminal
autocmd TermOpen * startinsert | setlocal norelativenumber nonumber

" Preserve the cursor position when changing buffers
augroup RestartWindowViewAu
  autocmd!
  autocmd BufLeave * let b:winview = winsaveview()
  autocmd BufEnter * if (exists('b:winview') && &filetype !=? 'nerdtree') | call winrestview(b:winview) | endif
augroup end

" Set help buffer as listed
augroup HelpBufferAu
  autocmd!
  autocmd BufEnter * if &buftype ==? 'help' | set buflisted | endif
augroup end

" Activate spell
command! -bang Spell setlocal spell<bang> | syntax spell toplevel

" Terminal mappings
augroup CustomTerminalMappingsAu
  autocmd!
  autocmd BufEnter *
        \ if &buftype ==? 'terminal' | noremap <buffer> <CR> a<C-p><CR><C-\><C-n> | endif
augroup end

" ..........................................................
" # Plugins Settings
" ..........................................................

" ## Polyglot

let g:polyglot_disabled = [
    \ 'markdown'
    \]


" ## Deoplete

let g:deoplete#enable_at_startup = 1

" Autoclose preview window
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

" ### Emoji

call deoplete#custom#source(
    \ 'emoji',
    \ 'min_pattern_length', 0
    \)

" ### Jedi

let g:deoplete#sources#jedi#show_docstring = 1
let g:jedi#completions_enabled = 0  " Already provided by deoplete

let g:jedi#goto_command = '<localleader>d'
let g:jedi#goto_assignments_command = '<localleader>g'
let g:jedi#usages_command = '<localleader>n'
let g:jedi#rename_command = '<localleader>r'

" ### Ternjs

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1


" ## Ternjs

let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']


" ## Echodoc

let g:echodoc_enable_at_startup = 1


" ## Supertab

" Invert tab direction
let g:SuperTabDefaultCompletionType = '<c-n>'


" ## ALE

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_info_str = 'I'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'javascript': ['eslint']
    \}


" ## Vim-grammarous

let g:grammarous#use_location_list = 1

let g:grammarous#default_comments_only_filetypes = {
    \ '*': 1, 'help': 0, 'markdown': 0,
    \ 'liquid': 0, 'rst': 0
    \}


" ## NerdTree

let g:NERDTreeChDirMode = 2  " Change cwd to parent node

" Ignored files
let g:NERDTreeIgnore = [
    \ '\.pyc$', '^__pycache__$', '^venv$',
    \ '^tags$', 'node_modules', '\.o$'
    \]

let g:NERDTreeMinimalUI = 1  " Hide help text
let g:NERDTreeAutoDeleteBuffer = 1

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeFind<CR>


" ## Airline

" Mappings to change buffer
nmap <leader>j <Plug>AirlineSelectPrevTab
nmap <leader>k <Plug>AirlineSelectNextTab

let g:airline#extensions#tabline#enabled = 1  " Show open buffers/tabs
let g:airline#extensions#tabline#fnamemod = ':t'  " Show just the filename
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#virtualenv#enabled = 0  " Don't show current virtualenv
let g:airline#extensions#whitespace#enabled = 0  " Disable whitespace extension
let g:airline#extensions#tagbar#enabled = 0  " Disable tagbar integration
let g:airline#extensions#hunks#enabled = 0  " Don't show changes summary

" Load Powerline font/symbols
let g:airline_powerline_fonts = 1


" ## Gutentags

" Activate only on projects that have a ctags configuration file
let g:gutentags_project_root = ['.ctags']
let g:gutentags_add_default_project_roots = 0


" ## GitGutter

set updatetime=100  " Update each 250 mls


" ## The NerdCommenter

let g:NERDSpaceDelims = 1  " Add spaces after comment delimiters by default
let g:NERDTrimTrailingWhitespace = 1  " Enable trimming of trailing whitespace when uncommenting


" ## Incsearch

map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)

let g:incsearch#auto_nohlsearch = 1


" ## FZF

let g:fzf_command_prefix = 'Fz'
let g:fzf_commands_expect = 'alt-enter'
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <silent> <leader>f :call <SID>open_fzf()<CR>

function! s:open_fzf()
  let l:commands= [
    \ 'Files', 'Buffers', 'BLines', 'Ag',
    \ 'Commands', 'GFiles?', 'GCheckout',
    \ 'History', 'Tags', 'BTags'
    \]
  let l:choices = [
    \ '&files', '&buffers', '&lines', '&ag',
    \ '&commands', 'git &status', '&git checkout',
    \ '&history', '&tags', 'buffer &Tags'
    \]
  let l:choice = confirm('Complete', join(l:choices, "\n"))
  if l:choice != 0
    execute ':Fz'.l:commands[l:choice - 1]
  endif
endfunction

function! s:open_branch_fzf(line)
  let l:parser = split(a:line)
  let l:branch = l:parser[0] ==? '*' ? l:parser[1] : l:parser[0]
  execute 'terminal git checkout ' . l:branch
  call feedkeys('i', 'n')
endfunction

function! s:show_branches_fzf(bang)
  let l:current = system('git symbolic-ref --short HEAD')
  let l:current = substitute(l:current, '\n', '', '')
  call fzf#vim#grep(
    \ "git branch -v | sed -r -e '/^\\*/d' -e 's/^\\s*//'", 0,
    \ { 'sink': function('s:open_branch_fzf'), 'options': ['--no-multi', '--header='.l:current] }, a:bang)
endfunction

command! -bang -nargs=0 FzGCheckout call <SID>show_branches_fzf(<bang>0)


" ## Indentline

" Doesn't appear on nova colorscheme
if g:colors_name ==? 'nova'
  let g:indentLine_setColors = 0
endif

let g:indentLine_bufTypeExclude = ['terminal']
let g:indentLine_fileTypeExclude = [
    \ 'text', 'help', 'man', 'rst',
    \ 'markdown', 'startify', 'nerdtree'
    \]

" Deactivate on completition, to slow
augroup indentLineAu
  autocmd!
  autocmd InsertEnter * IndentLinesDisable
  autocmd InsertLeave * call <SID>indentline_enable()
  autocmd User SneakEnter IndentLinesDisable
  autocmd User SneakLeave call <SID>indentline_enable()
augroup END

function! s:indentline_enable()
  if (index(g:indentLine_fileTypeExclude, &filetype) < 0 &&
      \ index(g:indentLine_bufTypeExclude, &buftype) < 0)
    execute 'silent IndentLinesEnable'
  endif
endfunction


" ## Ultisnips

let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'


" ## Dev-Icons

" Show folders icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Adjust icons padding
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '


" ## Markdown

let g:vim_markdown_conceal = 0  " Do not hide symbols
let g:vim_markdown_no_default_key_mappings = 1


" ## Highlightedyank

let g:highlightedyank_highlight_duration = 250


" ## Closetag

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*tmpl'


" ## Sneak

let g:sneak#label = 1  " Show labels
let g:sneak#use_ic_scs = 1  " Case insensitive

" Always show labels
nmap s <Plug>SneakLabel_s
nmap S <Plug>SneakLabel_S


" ## OpenPluginPage

nmap <localleader>p <Plug>(OpenPluginPage)

" ## Open browser GitHub

nnoremap <leader>go :Gina browse :<CR>
vnoremap <leader>go :Gina browse :<CR>
nnoremap <leader>gO :Gina browse<CR>
vnoremap <leader>gO :Gina browse<CR>


" ## Fugitive

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gu :Gread<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <leader>gp :Gina push<CR>


" ## Neoterm

let g:neoterm_autoinsert = 1
let g:neoterm_default_mod = 'rightbelow'

" Open/close a terminal
nnoremap <silent> <leader>tt <cmd>execute v:count.'Ttoggle'<CR>


" ## Vim-test

let g:test#strategy = 'neoterm'
let g:test#custom_runners = {'Python': ['Tox']}

nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>tn :TestNearest<CR>


" ## Spotify

nmap <leader>ss <Plug>(spotify-play/pause)
nmap <leader>sj <Plug>(spotify-next)
nmap <leader>sk <Plug>(spotify-prev)
nmap <leader>so <Plug>(spotify-show)
nmap <leader>sc <Plug>(spotify-status)


" ## Sayonara

nnoremap <silent> <leader>q :Sayonara<CR>
nnoremap <leader>Q :Sayonara!<CR>


" ## vim-altr

nmap <leader>a <Plug>(altr-forward)
nmap <leader>A <Plug>(altr-back)


" ## Startify

let g:startify_change_to_vcs_root = 1  " Change cwd to root of git project

let g:startify_commands = [
    \ { 'u': ':PlugUpdate' },
    \ ]

let g:startify_lists = [
    \ { 'type': 'sessions' },
    \ { 'type': 'commands' },
    \ ]

let g:startify_session_persistence = 1  " Autosave sessions

let g:startify_custom_header = [
    \ '          Happy Coding!',
    \ '    >_              ',
    \ ]
