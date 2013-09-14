" set showtabline=2 " always show tab bars

" Font
set antialias
set guifont=Sauce\ Code\ Powerline\ ExtraLight:h12
set cmdheight=2
noremap <silent> <F5> :set guifont=Monaco\ for\ Powerline:h7              <bar> :set cmdheight=2<CR>
noremap <silent> <F6> :set guifont=Sauce\ Code\ Powerline\ Light:h9       <bar> :set cmdheight=2<CR>
noremap <silent> <F7> :set guifont=Sauce\ Code\ Powerline\ ExtraLight:h12 <bar> :set cmdheight=2<CR>
noremap <silent> <F8> :set guifont=Sauce\ Code\ Powerline\ ExtraLight:h15 <bar> :set cmdheight=1<CR>
noremap <silent> <F9> :set guifont=Sauce\ Code\ Powerline\ ExtraLight:h19 <bar> :set cmdheight=1<CR>

" Full screen
set fuoptions=maxvert,maxhorz
au GUIEnter * set fullscreen

" ColorScheme
colorscheme myhybrid

" Do not show scroll bars
set guioptions-=r
set guioptions-=L

" Hilight Current Column
set cursorline
set cursorcolumn

