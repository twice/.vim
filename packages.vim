command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean packadd minpac | source $MYVIMRC | redraw | call minpac#clean()

if !exists('*minpac#init')
  finish
endif

call minpac#init()

"===============================================================
" Plugin Installations
"===============================================================

call minpac#add('k-takata/minpac', {'type': 'opt'})
"Utility

call minpac#add('scrooloose/nerdtree')
call minpac#add('majutsushi/tagbar')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-commentary')

call minpac#add('mileszs/ack.vim')
call minpac#add('vim-syntastic/syntastic')
call minpac#add('Raimondi/delimitMate')
call minpac#add('kien/rainbow_parentheses.vim')
call minpac#add('rstacruz/sparkup', {'rtp': 'vim/'})
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('SirVer/ultisnips')
call minpac#add('junegunn/vim-easy-align')
call minpac#add('myusuf3/numbers.vim')
call minpac#add('jeetsukumaran/vim-buffergator')
call minpac#add('kana/vim-textobj-user')
call minpac#add('janko-m/vim-test')
call minpac#add('junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'})
call minpac#add('junegunn/fzf.vim')

" Syntaxes and such.
call minpac#add('leshill/vim-json')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('othree/html5.vim')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('hail2u/vim-css3-syntax')
" call minpac#add('ryanoasis/vim-devicons')
call minpac#add('rstacruz/vim-hyperstyle')

"Python specific
call minpac#add('python-mode/python-mode')

" Ruby specific
call minpac#add('tpope/vim-rails')
call minpac#add('vim-ruby/vim-ruby')
call minpac#add('tpope/vim-endwise')

"Git specific"
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-fugitive')

" Fun, color schemes
call minpac#add('ayu-theme/ayu-vim')
call minpac#add('ryanoasis/vim-devicons')
call minpac#add('itchyny/lightline.vim')
call minpac#add('altercation/vim-colors-solarized')

