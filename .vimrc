set encoding=utf-8
set t_Co=256

color badwolf

"Badwolf colorscheme
set background=dark
let g:badwolf_tabline = 2
let g:badwolf_html_link_underline = 0

"settings for textobj-rubyblock
runtime macros/matchit.vim

set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

set title
set scrolloff=3
set visualbell
set autowrite

"New window splits placement
set splitbelow
set splitright

let mapleader = ","
noremap \ ,

"Do not keep backup files
set nobackup
set nowritebackup
set noswapfile

"Maybe useful for powerline
set laststatus=2
"set noshowmode

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

"Sparkup plugin
let g:sparkupNextMapping = '<c-;>'

"Buffergator Plugin
nmap <leader>b :BuffergatorToggle<cr>

" UltiSnipsEdit
nmap <leader>se :UltiSnipsEdit<cr>
let g:UltiSnipsSnippetDirectories = ["ultisnippets"]


" Rails.vim
nnoremap <leader>vv  :Rview<cr>
nnoremap <leader>vc  :Rcontroller<cr>
nnoremap <leader>vg  :Rmigration<cr>
nnoremap <leader>vm  :Rmodel<cr>

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


" Tabular plugin for alignment
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
endif


"two space indentation in coffeescript files
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"Toggle Number lines
nnoremap <leader>n :NumbersToggle<CR>

"Python settings
let g:pymode_breakpoint_key = '<leader>p'
let g:pymode_folding = 0
"let g:pymode_lint_checker = "pep8"

nnoremap <leader>g :call RopeGotoDefinition()
nnoremap <leader>m :call RopeRename()

