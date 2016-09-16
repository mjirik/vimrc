"==========================================================
" Dependencies - Libraries/Applications outside of vim
" =========================================================
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


" plugin installer Plug
" =====================
"
" Get vim-plug
" -----------
" download file plug.vim into autoload directory
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!mkdir ~/.vim/autoload/'
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Get plugins
" -----------

call plug#begin('~/.config/nvim/plugged')

  " Plug 'tpope/vim-fugitive'
  " Plug 'kien/ctrlp.vim'
  Plug 'bling/vim-airline'
  "Plug 'morhetz/gruvbox'
  Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
  Plug 'vim-scripts/wombat256.vim'
  Plug 'gerw/vim-latex-suite', {'for': 'tex'}
  "Plug 'lervag/vimtex'

"NeoBundle 'vim-scripts/wombat256.vim'
"NeoBundle 'vim-scripts/summerfruit256.vim'
""
"NeoBundle 'terryma/vim-expand-region'
"NeoBundle 'luochen1990/rainbow'
"NeoBundle 'voithos/vim-python-matchit'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'Lokaltog/vim-easymotion'
"NeoBundle 'sjl/gundo.vim'
"NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'vim-scripts/taglist.vim'
"NeoBundle 'MarcWeber/vim-addon-mw-utils'  " required by snipmate
"NeoBundle 'tomtom/tlib_vim'  " required by snipmate
"NeoBundle 'vim-scripts/TaskList.vim'
"NeoBundle 'SirVer/ultisnips'
"NeoBundle 'honza/vim-snippets'
"NeoBundle 'alfredodeza/pytest.vim'
"NeoBundle 'mhinz/vim-startify'
"NeoBundle 'Shougo/unite.vim', 'b872f4add16a813ba38bfcc235cfa4be6a25953'
"NeoBundle 'tomtom/tcomment_vim'
"NeoBundle 'mhinz/vim-signify'
"NeoBundle 'vim-scripts/EasyGrep'
""NeoBundle 'Valloric/YouCompleteMe' " potize s tabulatorem a snippets
"NeoBundle 'kshenoy/vim-signature'
"NeoBundle 'vim-scripts/SearchComplete'
"NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"NeoBundle 'Lokaltog/vim-powerline'
"NeoBundle 'gregsexton/gitv'
"NeoBundle 'davidhalter/jedi-vim'
"NeoBundle 'aperezdc/vim-template', 'e1b2a9e23f15809d4458473f724bc7aef94eb424' 
"NeoBundle 'Shougo/vimproc.vim', { 'build': {
"      \   'windows': 'make -f make_mingw32.mak',
"      \   'cygwin': 'make -f make_cygwin.mak',
"      \   'mac': 'make -f make_mac.mak',
"      \   'unix': 'make -f make_unix.mak',
"      \ } }
"" NeoBundle 'vim-scripts/ctrlp-funky'
"NeoBundleLazy 'tell-k/vim-autopep8', {
"    \ 'autoload' : { 'filetypes' : ['python'] }
"    \ }
"   " \ 'load_ftdetect' : 1,
"NeoBundleLazy 'JarrodCTaylor/vim-python-test-runner', {
"    \ 'autoload' : { 'filetypes' : ['python'] }
"    \ }
"" " NeoBundleLazy 'klen/python-mode', {
"" "     \ 'autoload' : { 'filetypes' : ['python'] }
"" "     \ }
"" NeoBundleLazy 'scrooloose/syntastic', {
""     \ 'autoload' : { 'filetypes' : ['python'] }
""     \ }


call plug#end()



set nocompatible              " Don't be compatible with vi

let mapleader=","             " change the leader to be a comma vs slash

" Seriously, guys. It's not like :W is bound to anything anyway.
" command! W :w
" 
" fu! SplitScroll()
"     :wincmd v
"     :wincmd w
"     execute "normal! \<C-d>"
"     :set scrollbind
"     :wincmd w
"     :set scrollbind
" endfu
" 
" nmap <leader>sb :call SplitScroll()<CR>


"<CR><C-w>l<C-f>:set scrollbind<CR>

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
"et iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
"et vundle_readme=expand('~/.vim/bundle/neobundle/README.md')
"f !filereadable(vundle_readme)
"   echo "Installing NeoBundle.."
"   echo ""
"   silent !mkdir -p ~/.vim/bundle
"   "silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
"   silent !git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle
"
"   let iCanHazVundle=0
"ndif
"set rtp+=~/.vim/bundle/vundle/
"et rtp+=~/.vim/bundle/neobundle/
"call vundle#rc()
"call neobundle#rc(expand('~/.vim/bundle'))
"all neobundle#begin(expand('~/.vim/bundle'))
"Bundle 'gmarik/vundle'
" NeoBundle 'garbas/vim-snipmate'
" NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'pypi/rope'
"NeoBundle 'aperezdc/vim-template'
" NeoBundle 'nathanaelkane/vim-indent-guides'
" NeoBundle 'bling/vim-airline'
" NeoBundle 'Shougo/neocomplcache.vim'
" NeoBundle 'scrooloose/nerdcommenter'
" NeoBundle 'Valloric/YouCompleteMe'
" replaced by
" NeoBundle 'Shougo/neocomplete.vim'
" end of unused modules
"
"eoBundle 'Shoguo/neobundle'
"
" Colormaps
" NeoBundle 'altercation/vim-colors-solarized'
" NeoBundle 'vim-scripts/pyte'
" NeoBundle 'jonathanfilip/vim-lucius'
" NeoBundle 'klen/rainbow_parentheses.vim'
"eoBundle 'vim-scripts/wombat256.vim'
"eoBundle 'vim-scripts/summerfruit256.vim'
"
"eoBundle 'terryma/vim-expand-region'
"eoBundle 'luochen1990/rainbow'
"eoBundle 'voithos/vim-python-matchit'
"eoBundle 'tpope/vim-surround'
"eoBundle 'tpope/vim-fugitive'
"eoBundle 'Lokaltog/vim-easymotion'
"eoBundle 'sjl/gundo.vim'
"eoBundle 'kien/ctrlp.vim'
"eoBundle 'scrooloose/nerdtree'
"eoBundle 'vim-scripts/taglist.vim'
"eoBundle 'MarcWeber/vim-addon-mw-utils'  " required by snipmate
"eoBundle 'tomtom/tlib_vim'  " required by snipmate
"eoBundle 'vim-scripts/TaskList.vim'
"eoBundle 'SirVer/ultisnips'
"eoBundle 'honza/vim-snippets'
"eoBundle 'alfredodeza/pytest.vim'
"eoBundle 'mhinz/vim-startify'
"eoBundle 'Shougo/unite.vim', 'b872f4add16a813ba38bfcc235cfa4be6a25953'
"eoBundle 'tomtom/tcomment_vim'
"eoBundle 'mhinz/vim-signify'
"eoBundle 'vim-scripts/EasyGrep'
"NeoBundle 'Valloric/YouCompleteMe' " potize s tabulatorem a snippets
"eoBundle 'kshenoy/vim-signature'
"eoBundle 'vim-scripts/SearchComplete'
"eoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"eoBundle 'Lokaltog/vim-powerline'
"eoBundle 'gregsexton/gitv'
"eoBundle 'davidhalter/jedi-vim'
"eoBundle 'aperezdc/vim-template', 'e1b2a9e23f15809d4458473f724bc7aef94eb424' 
"eoBundle 'Shougo/vimproc.vim', { 'build': {
"     \   'windows': 'make -f make_mingw32.mak',
"     \   'cygwin': 'make -f make_cygwin.mak',
"     \   'mac': 'make -f make_mac.mak',
"     \   'unix': 'make -f make_unix.mak',
"     \ } }
" NeoBundle 'vim-scripts/ctrlp-funky'
"eoBundleLazy 'tell-k/vim-autopep8', {
"   \ 'autoload' : { 'filetypes' : ['python'] }
"   \ }
"  " \ 'load_ftdetect' : 1,
"eoBundleLazy 'JarrodCTaylor/vim-python-test-runner', {
"   \ 'autoload' : { 'filetypes' : ['python'] }
"   \ }
" " NeoBundleLazy 'klen/python-mode', {
" "     \ 'autoload' : { 'filetypes' : ['python'] }
" "     \ }
" NeoBundleLazy 'scrooloose/syntastic', {
"     \ 'autoload' : { 'filetypes' : ['python'] }
"     \ }
"
"
"eoBundleLazy 'gerw/vim-latex-suite'
"
"
"utocmd FileType, tex NeoBundleSource vim-latex-suite
"...All your other bundles...
"f iCanHazVundle == 0
"   echo "Installing Bundles, please ignore key map error messages"
"   echo ""
"   :NeoBundleInstall
"ndif
"
"all neobundle#end()
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
set laststatus=2            " Always show statusline, even if only 1 window.
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
" wombat color scheme
" let g:solarized_termcolors=256  " this is for solarized color scheme
set t_Co=256
color wombat256mod
" color summerfruit256
" color lucius

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
  " set laststatus=2
  " if !exists('g:airline_symbols')
  "   let g:airline_symbols = {}
  " endif
  "
  " " unicode symbols
  " let g:airline_left_sep = '»'
  " let g:airline_left_sep = '▶'
  " let g:airline_right_sep = '«'
  " let g:airline_right_sep = '◀'
  " let g:airline_symbols.linenr = '␊'
  " let g:airline_symbols.linenr = '␤'
  " let g:airline_symbols.linenr = '¶'
  " let g:airline_symbols.branch = '⎇'
  " let g:airline_symbols.paste = 'ρ'
  " let g:airline_symbols.paste = 'Þ'
  " let g:airline_symbols.paste = '∥'
  " let g:airline_symbols.whitespace = 'Ξ'
" end of Airline configuration

" mjirik added
"
" Nahrada za python-mode
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }
"
" Konec nahrada za python-mod
"
" <c-h> left in insert mode
" <c-l> right in insert mode
inoremap <C-h> <left>
inoremap <C-j> <right>

" smash escape
inoremap jk <esc>l
inoremap kj <esc>l

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
let g:unite_source_grep_default_opts = '-iIHn'
nnoremap <space>s :Unite -quick-match buffer -auto-preview<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>; :Unite -start-insert line<cr>

" Paste from clipboard
map <leader>p "+p
" Copy to clipboard
map <leader>c "+y

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitecheck structurespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Select the item in the list with enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" slovnik spell check
" http://ftp.linux.cz/pub/localization/OpenOffice.org/devel/Czech/spell_checking/cs_CZ.zip
" navod
" http://www.root.cz/clanky/vim-sedm-prvni-cast/#k02
" http://henry.precheur.org/vim/create_spell_file_for_vim
let g:tex_comment_nospell=1
" use 
" % vim: spell spelllang=en_gb

"
" ==========================================
" Python IDE Setup
" ============================================
"

" chage window with Ctrl-j
map <c-j> <c-w>j
" map <c-k> <c-w>k
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
" nmap <silent><Leader>Tf <Esc>:Pytest file<CR>
" nmap <silent><Leader>Tc <Esc>:Pytest class<CR>
" nmap <silent><Leader>Tm <Esc>:Pytest method<CR>
" nmap <silent><Leader>Tn <Esc>:Pytest next<CR>
" nmap <silent><Leader>Tp <Esc>:Pytest previous<CR>
" nmap <silent><Leader>Te <Esc>:Pytest error<CR>

" Run django tests
" map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>
nnoremap<Leader>da :DjangoTestApp<CR>
nnoremap<Leader>df :DjangoTestFile<CR>
nnoremap<Leader>dc :DjangoTestClass<CR>
nnoremap<Leader>dm :DjangoTestMethod<CR>
nnoremap<Leader>nf :NosetestFile<CR>
nnoremap<Leader>nc :NosetestClass<CR>
nnoremap<Leader>nm :NosetestMethod<CR>
nnoremap<Leader>nb :NosetestBaseMethod<CR>
nnoremap<Leader>rr :RerunLastTests<CR>

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

" map <leader>n <esc>:bn<CR>
" map <leader>m <esc>:bn<CR>


" Next error
map <leader>w <esc>:lprevious<CR>
map <leader>e <esc>:lnext<CR>
map <leader>m <esc>:lNext<CR>

" easier moving of code blocks
vnoremap < <gv " better identation
vnoremap > >gv " better identation

" Open NerdTree
map <Space>e :NERDTreeToggle<CR>

" Open Tlist"
" map <leader>t :TlistOpen<CR>
map <Space>t :TlistOpen<CR>
"   close tlist on select
let Tlist_Close_On_Select = 1
let Tlist_Show_One_File = 1

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
" Rainbow setup ()
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" Funky CtrlP
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"" Setting for vim-fugitive
map <leader>gs :Gstatus<CR>
map <c-k> :Gcommit<CR>
map <leader>gp :Git push<CR><CR>
map <leader>gl :Git pull<CR>
map <leader>gv :Gitv<CR>
map <leader>gb :Gblame<CR>

" pypi
map <leader>pp :!python setup.py register sdist upload<cr>
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

" Jedi
" this is default setting
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<leader>d"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"
let g:jedi#goto_assignments_command = "<leader>gg"
let g:jedi#usages_command = "<leader>nn"


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
"" set wildignore+=*.pyc
"" set wildignore+=*_build/*
"" set wildignore+=*/coverage/*



" Neocomplete plugin setup
" " Disable AutoComplPop.
" let g:acp_enableAtStartup = 0
" " Use neocomplete.
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
"
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"   return neocomplete#close_popup() . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><C-y>  neocomplete#close_popup()
" inoremap <expr><C-e>  neocomplete#cancel_popup()
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
" " For cursor moving in insert mode(Not recommended)
" "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
" "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
" "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
" "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" " Or set this.
" "let g:neocomplete#enable_cursor_hold_i = 1
" " Or set this.
" "let g:neocomplete#enable_insert_char_pre = 1
"
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1
"
" " Shell like behavior(not recommended).
" "set completeopt+=longest
" "let g:neocomplete#enable_auto_select = 1
" "let g:neocomplete#disable_auto_complete = 1
" "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" ----- end neocomplete plugin setup


" Setting for expand
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Settings for python-mode
" Note: I'm no longer using this. Leave this commented out
" and uncomment the part about jedi-vim instead
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_extended_complete = 1
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0
" " stop using long wait
" let g:pymode_rope_lookup_project = 0
" " stop use rope for completion
" let g:pymode_rope_completion = 0
"
map <Leader>b Oimport ipdb; ipdb.set_trace() #  noqa BREAKPOINT<C-c>

"" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""" Template plugin
let g:template_dir="~/.vim/templates"

set showbreak=↪

set nofoldenable
set nrformats-=octal
" Taglist setup
"
autocmd BufWritePost *.py :TlistUpdate


" Python folding
" mkdir -p ~/.vim/ftplugin
