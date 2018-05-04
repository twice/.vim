macmenu &File.New\ Tab key=<nop>

color badwolf         "railscasts gruvbox
set background=dark   "light

set guifont=Droid\ Sans\ Mono\ Awesome:h12
set antialias        "Smooth macvim fonts
set guioptions-=T    " Removes top toolbar
set guioptions-=r    " Removes right hand scroll bar
set go-=L            " Removes left hand scroll bar

"Set indenting to Command [ or ]"
vmap <D-]> >gv
vmap <D-[> <gv
nmap <D-]> >>
nmap <D-[> <<
omap <D-]> >>
omap <D-[> <<
imap <D-]> <Esc>>>i
imap <D-[> <Esc><<i

map <D-t> :CtrlP<CR>
imap <D-t> <ESC>:CtrlP<CR>
