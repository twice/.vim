call plug#begin('~/.vim/plugged')

"===============================================================
" Plugin Installations
"===============================================================

"Utility
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'mileszs/ack.vim'
Plug 'vim-syntastic/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'kien/rainbow_parentheses.vim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'junegunn/vim-easy-align'
Plug 'myusuf3/numbers.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'kana/vim-textobj-user'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" Syntaxes and such.
Plug 'leshill/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'hail2u/vim-css3-syntax'
Plug 'rstacruz/vim-hyperstyle'

"Python specific
Plug 'python-mode/python-mode'

" Ruby specific
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'

"Git specific"
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Fun, color schemes
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'altercation/vim-colors-solarized'

"All Plugins should be listed before this line
call plug#end()

