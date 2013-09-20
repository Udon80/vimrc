" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" import functions
source ~/.vim/.vimrc.functions

" Use qwerty in normal mode
source ~/.vim/.vimrc.dvorak

" Use NeoBundle
" .vimrc.neobundle imports several plugins, and sources some .vimrcs specific to those plugins
source ~/.vim/.vimrc.neobundle

" Hilight Current Column
set cursorline
set cursorcolumn

" Open English help
set helplang=en

" Set tabwidth to 8
set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=0

" Show hilight under cursor
map <silent> <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
	\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
	\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Use C-p / C-n for history scrolling
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Map Ctrl-C as ESC
noremap <C-c> <ESC>

" map , to ,; so that , can be used for other purposes
nnoremap <silent> ,; ,

" use ,s for turn off search hilighting
nnoremap ,s :nohls<CR>

" Center on search / do not move with '*'
nnoremap n  nzz
nnoremap N  Nzz
nnoremap *  *N
nnoremap #  #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Remap ZZ and ZQ
nnoremap ZZ :w<CR>:bw<CR>
nnoremap ZQ :bw!<CR>

" Use Q for save & Make
nnoremap Q :w<CR>:make<CR>

" Don't use Ex mode, use Q for formatting
" map Q gq

" Use K for breaking lines
nnoremap K i<CR><ESC>

" Close quickfix by ,q
nnoremap <silent> ,q :ccl<CR>:lcl<CR>

" Automatically open cwindow when grepping
autocmd QuickFixCmdPost *grep* cwindow

" Automatically open Unite file
" let s:argc = argc()
" if s:argc == 0
" 	autocmd VimEnter * Unite -no-split file file/new directory/new file_mru
" endif

" Do not wrap lines
set nowrap

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	syntax enable
	set hlsearch
endif

" Set colorscheme
colorscheme myhybrid

" create swap files in ~/.swap
set swapfile
set dir=~/.swap

" do not print the number in front of lines
set number

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" the directory to keep backup files
set backupdir=~/.backup
" do not keep a backup file
set backup

" keep many undo history
set undolevels=100000000

" keep 50 lines of command line history
set history=50

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" do not do incremental searching
set noincsearch

" Scroll earlier
set scrolloff=5

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" gA inserts (not append) at end of line.
nnoremap gA $i

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	filetype plugin indent on

	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
	au!

	" " For all text files set 'textwidth' to 78 characters.
	" autocmd FileType text setlocal textwidth=78

	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	" Also don't do it when the mark is in the first line, that is the default
	" position when opening a file.
	autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

	augroup END

else

	set autoindent " always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
