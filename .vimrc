" Rove's .vimrc file
set nocompatible
filetype off
set nu
let g:mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'kucaahbe/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'valloric/YouCompleteMe'
Bundle 'sjl/gundo.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'davidhalter/jedi-vim'
Bundle 'lokaltog/vim-easymotion'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "vadv/vim-chef"
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'chase/vim-ansible-yaml'

call vundle#end()


filetype plugin on
filetype plugin indent on
syntax on

"File handling
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeLynxMotion = 1
let g:NERDTreeRespectWildIgnore = 1
let g:ctrlp_max_height = 30
let g:ctrlp_cmd = 'CtrlPMRU'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Honor indents etc when pasting - tip form Bjorn many years ago
set pastetoggle=<F2>
set clipboard=unnamed

" Split manamgement
noremap <Leader>w <C-w>
noremap <Leader>v <C-w>v
noremap <Leader>o :only<CR>

" Pretty Colors & styles
"" Powerline setup
set guifont=SourceCodePro-Regular
set laststatus=2


set t_Co=256

" Jedi mode 
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Autoindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class 

" Synstastic Error Highlighting enable populate err list for nav
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_jump = 1
 
" Execute buffer in Py with F5
"nnoremap <silent> <F5> :!clear;python %<CR>
noremap <silent><F5> <ESC>:w<CR>:!clear;python %<CR>

" PyDoc integration
let g:pydoc_open_cmd = 'vsplit' 

" Text Layout
set expandtab
set textwidth=0
set tabstop=2
set softtabstop=2
set autoindent
