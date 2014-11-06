set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  
" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" Vundles
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'junegunn/vim-easy-align'
Plugin 'fatih/vim-go'
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/csapprox'

call vundle#end()
filetype plugin indent on

" Preferences
set nu
set noerrorbells visualbell t_vb=
set wmh=0
set ts=4
set sw=4
set et
set backupdir=~/.vimbackup
set directory=~/.vimswap
set hls
set incsearch
set laststatus=2
set encoding=utf-8
set gfn=Sauce\ Code\ Powerline\ Light:h11
set colorcolumn=80
set t_Co=256
set showcmd
let mapleader = ","
set nocompatible
set cursorline
syn on 
colors jellybeans
highlight ColorColumn ctermbg=16

" Speedy shortcuts
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
imap <C-I> <ESC>:cn<CR>
imap <C-U> <ESC>:cp<CR>
nmap <C-I> :cn<CR>
nmap <C-U> :cp<CR>

" RStudio
au FileType cpp setlocal makeprg=make\ \-j4\ -C\ ~/rstudio-build
nmap <Leader>rt :Dispatch ctags --recurse --verbose -o ~/rstudio/src/cpp/tags ~/rstudio/src/cpp
nmap <Leader>a :Dispatch ant draft -f ~/rstudio/src/gwt/build.xml<CR>
nmap <Leader>m :Make<CR>

" RStudio Connect
au FileType go setlocal makeprg=make

" Indent prefs by filetype
au FileType javascript setlocal shiftwidth=2 tabstop=2 
au FileType cpp setlocal shiftwidth=3 tabstop=3
au FileType r setlocal shiftwidth=2 tabstop=2 et 

" Shortcuts
map <Leader>d :YcmCompleter GoToImprecise<CR>
map <Leader>f :Ag -U --ignore tags --ignore *.a --ignore *.min.* <cword><CR>
map <Leader>p :!par w79<CR>
map <Leader>= :EasyAlign =<CR>
nmap <Leader>t :sp ~/Dropbox/todo.txt<CR>
nmap <Leader>g :Ggrep <cword><CR>
nmap <Leader>b :CtrlPBuffer<CR>

" Go
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" Plugin-supplied shortcuts
"
" Git Gutter
" ]c         next hunk
" [c         previous hunk
" <Leader>hs stage hunk
" <Leader>hr revert hunk
"

"
