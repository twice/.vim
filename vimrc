set nocompatible 	"get rid of Vi compatibility mode
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let vundle manage vundle"
Bundle 'gmarik/vundle'

"To install plugin(s): run ':PluginInstall' within vim or
" 'vim +PluginInstall +qall' without vim (on the command line)

"======================================================
" Plugin installations
"======================================================

" Very useful
Bundle 'vim-scripts/Gist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tristen/vim-sparkup.git'
Bundle 'kien/ctrlp.vim'
Bundle 'SirVer/ultisnips.git'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-powerline'
Bundle 'myusuf3/numbers.vim'
Bundle 'jeetsukumaran/vim-buffergator'

" Syntaxes and such.
Bundle 'leshill/vim-json'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-haml'
"Bundle 'groenewege/vim-less'
Bundle 'othree/html5.vim'
"Bundle 'itspriddle/vim-jquery'

"Python specific
Bundle 'klen/python-mode'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'fs111/pydoc.vim'
"Bundle 'vim-scripts/python_match.vim'
"Bundle 'nvie/vim-flake8'
"Bundle 'jmcantrell/vim-virtualenv'

" Ruby specific
Bundle 'tpope/vim-rails'
Bundle "vim-ruby/vim-ruby"
Bundle 'tpope/vim-endwise'

"Git specific"
Bundle 'airblade/vim-gitgutter'

" Fun, color schemes
"Bundle "daylerees/colour-schemes", { "rtp": "vim/" }
Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skammer/vim-css-color'
"Bundle 'mgutz/vim-colors'
"Bundle 'flazz/vim-colorschemes'
"Bundle 'morhetz/gruvbox'
"Bundle 'jonathanfilip/vim-lucius'


filetype indent plugin on "required!

"=========================================================
" Various settings
"=========================================================

colorscheme solarized
set background=light



syntax enable		"enable syntax highlighting - used to be (syntax on)

set encoding=utf-8
set t_Co=256 		"enable 256 color mode

set title		"change terminal title
set number		"show line numbers
set incsearch		"show search matches as you type
set scrolloff=3		" maintain at least 3 lines of context around cursor.
set autowriteall	"Auto-save files when switching buffers or leaving vim
set undolevels=1000	"Undo as much as you can because you can!
set autoindent		"automatic indentation
set copyindent		"copy previous indentation on autoindenting
set hidden		"Allow unsaved buffers in the background
set nowrap		"don't wrap long lines
set showmatch		"show matching parenthesis
set ignorecase		"ignore case when searching
set smartcase		"ignore case if search term is lower case otherwise case-sensitive
set visualbell		"no beep
set noerrorbells	"no beep ok!
set textwidth=80	"line length	

set tabstop=4		"tab spacing - '2 spaces'
set softtabstop=2	"unify
set shiftwidth=2
set expandtab

"Enable scrolling in iterm2 using the 'SGR' protocol
set mouse=a
if has("mouse_sgr")
  set ttymouse=sgr
else
  set ttymouse=xterm2
end

"WildMenu completion
set wildignore+=*.pyc
set wildignore+=*.class
set wildignore+=*.DS_Store
set wildignore+=*.git,.svn,.hg
set wildignore+=*.sw?

"New window splits placement
set splitbelow
set splitright

"Do not keep backup files
set nobackup
set nowritebackup
set noswapfile

"======================================================
" Custom key mappings
"======================================================

let mapleader = ","
noremap \ ,

" Quickly edit/source .vimrc
noremap <leader>ve :edit $HOME/.vimrc<CR>
noremap <leader>vs :source $HOME/.vimrc<CR>

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>

"convinient keys
inoremap jk <esc>
nnoremap ! :!
nnoremap Y y$
nnoremap ; :
vnoremap ; :
noremap - ;

"Shortcut for search and replace
nnoremap <leader>r :%s/


"Surround selected tags with erb tags
vnoremap ee "zdi<% <c-r>z %><esc>
vnoremap eo "zdi<%= <c-r>z %><esc>	

"Insert space below line
nnoremap <leader>d o<esc>k
"Insert space above line
nnoremap <leader>t O<esc>j
"Insert hash rocket
inoremap <c-l> <space>=><space>

"Navigate windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"Delete line in insert mode
inoremap <c-k> <esc>ddi

"navigation of wrapped lines
nnoremap j gj
nnoremap k gk

" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq

" Remap VIM 0 to first non-blank character
nnoremap 0 ^

" Move a line of text using ALT+[jk] or  Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Saving and exit
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>

" Edit/View files relative to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

"Backspace closes buffer.
nnoremap <BS> :bd<CR>

" OS X-like space bar to scroll.
nnoremap <Space> <C-F>

" Press , space bar to turn off search highlighting and clear any message
" displayed
" nnoremap <Leader><space> :noh<CR>
nnoremap <Leader><Space> :nohl<Bar>:echo<CR>

" Duplicate visual selection.
vmap D yP'<

" Map § to # for typing convenience
set iminsert=1
set imsearch=-1
noremap § #
noremap! § #
lnoremap § #

"Save readonly files
cnoremap sudow w !sudo tee % >/dev/null


"======================================================
" Programming languages settings
"======================================================

autocmd FileType python setlocal shiftwidth=4 expandtab tabstop=4 softtabstop=4
autocmd FileType python setlocal colorcolumn=80

" Other files to consider Ruby
au BufRead,BufNewFile Gemfile,Rakefile,Thorfile,config.ru,Vagrantfile,Guardfile,Capfile set ft=ruby

"two space indentation in coffeescript files
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"SASS / SCSS
au BufNewFile,BufReadPost *.scss setl foldmethod=indent
au BufNewFile,BufReadPost *.sass setl foldmethod=indent
au BufRead,BufNewFile *.scss set filetype=scss

"htmldjango filetypes and sparkup plugin
au FileType htmldjango runtime! ftplugin/html/sparkup.vim



"=======================================================
" Plugin Configuration
"=======================================================

" Tabular plugin for alignment
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
endif

"Badwolf colorscheme

" set background=dark
let g:badwolf_tabline = 2
let g:badwolf_html_link_underline = 0
let g:badwolf_css_props_highlight = 1

"Gruvbox
let g:gruvbox_contrast_dark="soft"

"Sparkup plugin
let g:sparkupNextMapping = '<c-;>'

" UltiSnips
let g:UltiSnipsExpandTrigger='<c-tab>'
let g:UltiSnipsListSnippets="<c-s-tab>"
let g:UltiSnipsSnippetsDir        = '~/.vim'
let g:UltiSnipsSnippetDirectories = ["ultisnippets"]
nmap <leader>use :UltiSnipsEdit<cr>

" Rails.vim
nnoremap <leader>vv  :Rview<cr>
nnoremap <leader>vc  :Rcontroller<cr>
nnoremap <leader>vg  :Rmigration<cr>
nnoremap <leader>vm  :Rmodel<cr>

"Maybe useful for powerline
set laststatus=2			"always show the status line
let g:Powerline_symbols = 'fancy'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
set fillchars+=stl:\ ,stlnc:\

"Toggle Number lines
nnoremap <leader>n :NumbersToggle<CR>

"NERDTree
let mapleader = "\\"
let g:NERDTreeWinPos = "right"
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

let mapleader = ","

"settings for textobj-rubyblock
runtime macros/matchit.vim

"ctrlp"
let g:ctrl_map = '<D-t>'
"search anywhere in project"
nnoremap <leader>F :CtrlP<CR>
"search in current dir"
nnoremap <leader>f :CtrlPCurWD<CR>
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

"======================================================================
"pymode configuration"
"======================================================================
let g:pymode_python = 'python3'
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_rope = 1
let g:pymode_rope_complete_on_dot = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"Ignore line width warning"
let g:pymode_lint_ignore = 'E501'

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 0
let g:pymode_breakpoint_key = '<leader>k'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

"YouCompleteMe ycm"
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Buffergator Plugin
nmap <leader>b :BuffergatorToggle<cr>
