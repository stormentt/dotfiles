set nocompatible
set background=dark
set showcmd

set directory=$HOME/.vim/swap/
set backupdir=$HOME/.vim/backups/
set backup
set writebackup

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on
syntax on
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'diepm/vim-rest-console'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'sheerun/vim-polyglot'

call vundle#end()
filetype plugin indent on

"Colors
set t_Co=256
"/Colors

"===== Tabs =====
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
"=====/Tabs =====

"===== Vim Splits =====
"Movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Split Size
nnoremap = <C-W><C-=>

set splitbelow
set splitright
"=====/Vim Splits =====

"===== Line Numbers =====
set nu
highlight LineNr ctermfg=Blue 
"=====/Line Numbers =====

"===== NERDTree Config =====
map <C-n> :NERDTreeToggle<CR>
"=====/NERDTree Config =====

"===== Mutt =====
au BufRead /tmp/mutt-* set tw=72
"=====/Mutt =====

"===== Go =====
let g:go_fmt_command = "goimports"
"=====/Go =====
