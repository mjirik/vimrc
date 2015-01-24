"==========================================================
" Dependencies - Libraries/Applications outside of vim
" ==========================================================
" Pep8 - http://pypi.python.org/pypi/pep8
" Pyflakes
" Ack
" Rake & Ruby for command-t
" nose, django-nose

" ==========================================================
" Plugins included
" ==========================================================
"
" ==========================================================
" Shortcuts
" ==========================================================
" <C-c>rr - refractoring
" Press <F8> to run autopep8 on it




set nocompatible              " Don't be compatible with vi

let mapleader=","             " change the leader to be a comma vs slash

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

fu! SplitScroll()
    :wincmd v
    :wincmd w
    execute "normal! \<C-d>"
    :set scrollbind
    :wincmd w
    :set scrollbind
endfu

nmap <leader>sb :call SplitScroll()<CR>


"<CR><C-w>l<C-f>:set scrollbind<CR>

" chage window with Ctrl-j
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" sudo write this
cmap W! w !sudo tee % >/dev/null

" Toggle the tasklist
map <Leader>Td <Plug>TaskList

" Run pep8
" let g:pep8_map='<leader>8'
" it is actualy python mode automatically

" run py.test's
nmap <silent><Leader>Tf <Esc>:Pytest file<CR>
nmap <silent><Leader>Tc <Esc>:Pytest class<CR>
nmap <silent><Leader>Tm <Esc>:Pytest method<CR>
nmap <silent><Leader>Tn <Esc>:Pytest next<CR>
nmap <silent><Leader>Tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>Te <Esc>:Pytest error<CR>

" Run django tests
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

" for when we forget to use sudo to open/edit a file
cmap w!! w !sudo tee % >/dev/null


" and lets make these all work in insert mode too ( <C-O> makes next cmd
"  happen as if in command mode )
imap <C-W> <C-O><C-W>
" navigating tabs
map <leader>h <esc>:tabprevious<CR>
map <leader>l <esc>:tabnext<CR>

map <leader>n <esc>:bn<CR>
map <leader>m <esc>:bn<CR>


" easier moving of code blocks
vnoremap < <gv " better identation
vnoremap > >gv " better identation

" Open NerdTree
" map <leader>t :NERDTreeToggle<CR>

" Open Tlist"
map <leader>t :TlistOpen<CR>
"   close tlist on select
let Tlist_Close_On_Select = 1

" Run command-t file search
map <leader>f :CommandT<CR>
" Ack searching
nmap <leader>a <Esc>:Ack!

" Load the Gundo window
map <leader>u :GundoToggle<CR>

" Jump to the definition of whatever the cursor is on
" map <leader>j :RopeGotoDefinition<CR>
" it is actualy python mode with <C-c>g

" Rename whatever the cursor is on (including references to it)
" map <leader>r :RopeRename<CR>
" it is actualy python mode with <C-c>rr
" ==========================================================
" Pathogen - Allows us to organize our vim plugins
" ==========================================================
" Load pathogen with docs for all plugins
filetype off
"filetype on
"filetype plugin indent on     " enable loading indent file for filetype
"call pathogen#incubate()
"call pathogen#helptags()


"========
"vundle
"========
"
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
let vundle_readme=expand('~/.vim/bundle/neobundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    "silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    silent !git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle

    let iCanHazVundle=0
endif
"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/neobundle/
"call vundle#rc()
"call neobundle#rc(expand('~/.vim/bundle'))
call neobundle#begin(expand('~/.vim/bundle'))
"Bundle 'gmarik/vundle'
NeoBundle 'Shoguo/neobundle'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/wombat256.vim'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'MarcWeber/vim-addon-mw-utils'  " required by snipmate
NeoBundle 'tomtom/tlib_vim'  " required by snipmate
"NeoBundle 'pypi/rope'
"NeoBundle 'aperezdc/vim-template'
NeoBundle 'vim-scripts/TaskList.vim'
" NeoBundle 'garbas/vim-snipmate'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'alfredodeza/pytest.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'mhinz/vim-startify'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tomtom/tcomment_vim'
" NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'bling/vim-airline'
" NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'gregsexton/gitv'
" NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/vimproc.vim', { 'build': {
      \   'windows': 'make -f make_mingw32.mak',
      \   'cygwin': 'make -f make_cygwin.mak',
      \   'mac': 'make -f make_mac.mak',
      \   'unix': 'make -f make_unix.mak',
      \ } }
NeoBundle 'aperezdc/vim-template'
NeoBundle 'vim-scripts/ctrlp-funky'
NeoBundleLazy 'tell-k/vim-autopep8', {
    \ 'autoload' : { 'filetypes' : ['python'] }
    \ }
"    \ 'load_ftdetect' : 1,
NeoBundleLazy 'klen/python-mode', {
    \ 'autoload' : { 'filetypes' : ['python'] }
    \ }

NeoBundleLazy 'gerw/vim-latex-suite'
autocmd FileType, tex NeoBundleSource vim-latex-suite
" autocmd FileType, py NeoBundleSource vim-autopep8
" autocmd FileType, py NeoBundleSource python-mode
"Add your bundles here
"Bundle 'Syntastic' "uber awesome syntax and errors highlighter
"Bundle 'altercation/vim-colors-solarized' "T-H-E colorscheme
"Bundle 'https://github.com/tpope/vim-fugitive' "So awesome, it should be illegal
"...All your other bundles...
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :NeoBundleInstall
endif

call neobundle#end()
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'Lokaltog/vim-easymotion'

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.

" don't bell or blink
set noerrorbells
set vb t_vb=

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

set grepprg=ack         " replace the default grep program with ack


" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Disable the colorcolumn when switching modes.  Make sure this is the
" first autocmd for the filetype here
"autocmd FileType * setlocal colorcolumn=0

""" Insert completion
" don't select first item, follow typing in autocomplete
set completeopt=menuone,longest,preview
set pumheight=6             " Keep a small completion window


""" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set nowrap                  " don't wrap text
set fo-=t   " don't automatically wrap text when typing
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default


" ctrl-jklm  changes to that split
if &filetype != 'tex'
endif

"
" don't outdent hashes
inoremap # #

" close preview window automatically when we move around
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"""" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

"""" Messages, Info, Status
"set ls=2                    " allways show status line
"set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
"set confirm                 " Y-N-C prompt if closing with unsaved changes.
"set showcmd                 " Show incomplete normal mode commands as I type.
"set report=0                " : commands always print changed line count.
"set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
"set ruler                   " Show some info, even without statuslines.
"set laststatus=2            " Always show statusline, even if only 1 window.
"set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}
"
""" displays tabs with :set list & displays when a line runs off-screen
""set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
""set list
"
""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently 
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Length line
set tw=79   " width of document (used by gd)
set colorcolumn=80
highlight ColorColumn ctermbg=233



" Useful settings
set history=700
set undolevels=700

"""" Display
"if has("gui_running")
"    colorscheme desert
"    " Remove menu bar
"    set guioptions-=m
"
"    " Remove toolbar
"    set guioptions-=T
"else
"    colorscheme torte
"endif

" Airline status-line should look better with fallowing lines
" set encoding=utf-8
" let g:airline_powerline_fonts = 1
  set laststatus=2
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
" end of Airline configuration

" mjirik added
" <c-h> left in insert mode
" <c-l> right in insert mode
inoremap <C-h> <left>
inoremap <C-j> <right>

" smash escape
inoremap jk <esc>
inoremap kj <esc>

set pastetoggle=<F2>
set clipboard=unnamed

" Quicksave mjirik
noremap <leader>s :update<CR>
vnoremap <leader>s <C-C>:update<CR>
inoremap <leader>s <C-O>:update<CR>

" Quit command mjirik
noremap <leader>q :quit<CR>
noremap <leader>Q :qa!<CR>

" write and quit
noremap <leader>sc :update<CR>:close<CR><CR>
vnoremap <leader>sc <C-C>:update<CR><C-C>:close<CR><CR>
inoremap <leader>sc <C-O>:update<CR><C-O>:close<CR><CR>

" Giv plugin
nnoremap <silent> <leader>gv :Gitv<CR>
nnoremap <silent> <leader>gV :Gitv!<CR>

" Unite
nnoremap <space>s :Unite -quick-match buffer<cr>
nnoremap <space>/ :Unite grep:.<cr>

" Paste from clipboard
map <leader>p "+p

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitecheck structurespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Select the item in the list with enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"
" ==========================================
" Python IDE Setup
" ============================================
"


" Funky CtrlP
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"" Setting for vim-fugitive
map <leader>gs :Gstatus<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR><CR>
map <leader>gl :Git pull<CR>
map <leader>gv :Gitv<CR>
map <leader>gb :Gblame<CR>


" vim-ident-guides plugin - not wo
"" hi IndentGuidesOdd  ctermbg=black
"" hi IndentGuidesEven ctermbg=darkgrey
" let g:indent_guides_start_level=1
" let g:indent_guides_guide_size=1
" let g:indent_guides_enable_on_vim_startup=0
" let g:indent_guides_color_change_percent=3
" if !has('gui_running')
" let g:indent_guides_auto_colors=0
" function! s:indent_set_console_colors()
"     hi IndentGuidesOdd ctermbg=235
"     hi IndentGuidesEven ctermbg=236
" endfunction
" autocmd VimEnter,Colorscheme * call s:indent_set_console_colors()
" endif

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
"" set wildignore+=*.pyc
"" set wildignore+=*_build/*
"" set wildignore+=*/coverage/*


" Neocompletecash plugin
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_temporary_dir=s:get_cache_dir('neocomplcache')
" let g:neocomplcache_enable_fuzzy_completion=1



" Neocomplete plugin setup
"
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" ----- end neocomplete plugin setup

" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
"map <Leader>j :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() #  noqa BREAKPOINT<C-c>
" stop using long wait
let g:pymode_rope_lookup_project = 0

"" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""" Template plugin
let g:template_dir="~/.vim/templates"

set nofoldenable

set nrformats-=octal
" Taglist setup
"
autocmd BufWritePost *.py :TlistUpdate

" Python folding
" mkdir -p ~/.vim/ftplugin
