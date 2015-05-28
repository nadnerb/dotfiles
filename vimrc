set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set guifont=Monaca:h14

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'ZoomWin'
"Plugin 'Align'
Plugin 'godlygeek/tabular'
Plugin 'wincent/Command-T'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'css_color.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'copypath.vim'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-haml'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-endwise'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'kchmck/vim-coffee-script'
Plugin 'leshill/vim-json'
"Plugin 'rizzatti/funcoo.vim'
"Plugin 'rizzatti/dash.vim'
Plugin 'twe4ked/vim-peepopen'
Plugin 'markcornick/vim-terraform'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on     " required!

syntax on
set number
color molokai

let mapleader = ";"

set encoding=utf-8
set autoread " reload file whenever it changes on disk
set wrapmargin=5
set nowrap
set formatoptions=croqln
set formatoptions=croqln
set tabstop=2
set expandtab
set cursorline
set softtabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set scrolloff=3
set sidescrolloff=5
set wildmode=longest,list
set nocompatible
set autoindent
set smartindent
set mouse=a
set modelines=0
set clipboard=unnamed
" allow status-bar windows (0-height)
set wmh=0
" set iskeyword-=_ \" allow underscore to delimit words"
set backupdir=/tmp
set directory=/tmp
set noswapfile
set nobackup
set showcmd
set showmode
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
"set undofile

set tags+=.tags
let g:autotagTagsFile=".tags"

"draw tabs & trailing spaces
"autocmd BufNewFile,BufRead * set list listchars=tab:▸\
"set list listchars=tab:\|_,trail:.

autocmd BufNewFile,BufRead * match Error /\(  \+\t\@=\)\|\(^\(\t\+\)\zs \ze[^ *]\)\|\([^ \t]\zs\s\+$\)/
                             match Error /\(  \+\t\@=\)\|\(^\(\t\+\)\zs \ze[^ *]\)\|\([^ \t]\zs\s\+$\)/

autocmd BufLeave,FocusLost * silent! wall
autocmd VimEnter * wincmd p

" Use _ as a word-separator
set iskeyword-=_

nnoremap j gj
nnoremap k gk
inoremap jj <Esc>
nnoremap JJJJ <Nop>

" save file on lose of focus
autocmd FocusLost * :wa
" remove trailing whitespace
autocmd FocusLost,BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

:tabnext

"" tab left & right
" same for macvim (cmd key, because alt doesn't work)
""NOTE: only run this on macvim - on gnome, it causes an ambiguous map for "<<" (unindent line)
map <D-j> gt
map <D-k> gT

"let Tlist_WinWidth = 50 map <F4> :TlistToggle<cr>

" leader-e for showing nerd-tree
map <leader>e :NERDTreeToggle<cr>
map <leader>r :NERDTreeFind<cr>
" show hidden files
let NERDTreeShowHidden=1

" ctrl+f to FuzzyFinder (recursive)
nmap <C-f> :FuzzyFinderBuffer<cr>
nmap <leader>b :FuzzyFinderBuffer<cr>
nmap <leader>f :FuzzyFinderFileWithFullCwd<cr>
nmap <leader>F :FuzzyFinderTaggedFile<cr>
nmap <leader>g :FuzzyFinderTag<cr>

nmap <leader>cp :CopyPath<cr>

nmap <leader>t :CommandT<cr>
" Ack
nnoremap <leader>a :Ack
let g:CommandTMaxFiles=30000

" ctags split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" HTML ft mapped to a “fold tag” function:
nnoremap <leader>ft Vatzf

" Re-hardwrap paragraphs of text:
nnoremap <leader>q gqip

" Reselect text just pasted
nnoremap <leader>v V`]

" open up my ~/.vimrc file in a vertically
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"If I really want a horizontal split I can use <C-w>s to get one
nnoremap <leader>w <C-w>v<C-w>l
" split windoesa
" This next set of mappings maps <C-[h/j/k/l]> to the commands needed to move around your splits. If you remap your capslock key to Ctrl it makes for very easy navigation.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Nerd Commenter - toggle comment
"nnoremap <leader>c<space>

" Ruby stuff
" help ft-ruby-syntax
let ruby_space_errors =1
"let ruby_fold=1

" find usages
nmap <a-F7> :Ack -w <c-r><c-w><cr>

" show tags for current file
" nnoremap <leader>Q :TlistToggle<CR>
" let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
" let Tlist_Show_One_File = 1       " Only show tags for current buffer
" let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Bubble lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Remove the tool bar
if has("gui_running")
  set guioptions=egmrt
  set fuoptions=maxvert,maxhorz
  "au GUIEnter * set fullscreen
  "number of lines
  ":set lines?
  set lines=47
  " number of columns
  ":set columns?
  set columns=166
endif
