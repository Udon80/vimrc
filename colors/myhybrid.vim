source ~/.vim/colors/hybrid.vim

" Use undercurl for errors
hi Error guifg=#cc6666 gui=undercurl

" Use underline for showing matching parens
hi MatchParen ctermbg=NONE ctermfg=NONE cterm=underline,bold guibg=NONE guifg=NONE gui=underline,bold

" Use underline for hilite searching
hi Search ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline

" Status Line
hi StatusLine   term=reverse cterm=bold,reverse gui=reverse guifg=#202830 guibg=#7d7f81
hi StatusLineNC term=reverse cterm=bold,reverse gui=reverse guifg=#182028 guibg=#3d3f41

" Cursor Line
hi CursorLineNr   cterm=bold ctermfg=none term=bold gui=none guibg=#24262a guifg=#474b51
hi CursorLine     cterm=none guibg=#24262a
hi CursorColumn   cterm=none guibg=#212325

" Change cursor color on IME
hi CursorIM guibg=#57ab51 guifg=NONE

" Set Visual Color
hi Visual cterm=reverse guibg=#272b51

" Vert Split
if has('gui_running')
	set ambiwidth=single
	exe "set fillchars=vert:┃"
endif
