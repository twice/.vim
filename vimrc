set nocompatible 	"get rid of Vi compatibility mode
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"let vundle manage vundle"
Bundle 'gmarik/vundle'

"======================================================
" Plugin installations
"======================================================

" System
Bundle 'vim-scripts/Gist.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tristen/vim-sparkup.git'
Bundle 'kien/ctrlp.vim'
Bundle 'SirVer/ultisnips.git'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-powerline'

" Syntaxes and such.
Bundle 'leshill/vim-json'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-haml'
Bundle 'groenewege/vim-less'
Bundle 'othree/html5.vim'
Bundle 'itspriddle/vim-jquery'

"Python specific
" Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/python_match.vim'
"Bundle 'nvie/vim-flake8'
Bundle 'jmcantrell/vim-virtualenv'

" Ruby specific
Bundle 'tpope/vim-rails'
Bundle "vim-ruby/vim-ruby"
Bundle 'tpope/vim-endwise'

" Fun, but not useful
Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skammer/vim-css-color'
Bundle 'mgutz/vim-colors'


filetype indent plugin on "required!

"=========================================================
" Various settings
"=========================================================

if has("gui_macvim") && has ('gui_running')
  color badwolf
  set antialias        "Smooth macvim fonts
  set guioptions-=T    " Removes top toolbar
  set guioptions-=r    " Removes right hand scroll bar
  set go-=L            " Removes left hand scroll bar
  set guifont=Monaco:h16

  "Set indenting to Command [ or ]"
  vmap <D-]> >gv
  vmap <D-[> <gv
  nmap <D-]> >>
  nmap <D-[> <<
  omap <D-]> >>
  omap <D-[> <<
  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

  "ctrlp custom key mappings"
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>
  imap <D-t> <ESC>:CtrlP<CR>
else
  colorscheme desert
endif

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

" Press space bar to turn off search highlighting and clear any message
" displayed
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

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
set background=dark
let g:badwolf_tabline = 2
let g:badwolf_html_link_underline = 0
let g:badwolf_css_props_highlight = 1

"NERDTree
let g:NERDTreeWinPos = "right"

"Sparkup plugin
let g:sparkupNextMapping = '<c-;>'

"Buffergator Plugin
nmap <leader>b :BuffergatorToggle<cr>

" UltiSnipsEdit
nmap <leader>se :UltiSnipsEdit<cr>
let g:UltiSnipsSnippetsDir        = '~/.vim'
let g:UltiSnipsSnippetDirectories = ["ultisnippets"]

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

"settings for textobj-rubyblock
runtime macros/matchit.vim

"ctrlp"
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
  \ }
"autocmd BufWritePost *.py call Flake8()


