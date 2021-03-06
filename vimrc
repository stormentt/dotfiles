set nocompatible
set background=dark
set showcmd

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on
syntax on
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'alvan/vim-closetag'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'fatih/vim-go'
Plugin 'lunaru/vim-twig'
Plugin 'diepm/vim-rest-console'

call vundle#end()
filetype plugin indent on

"Colors
set t_Co=256
"/Colors

"===== Tabs =====
set expandtab
set tabstop=4
set shiftwidth=4
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

"===== Closetag =====
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue,*.php"
"=====/Closetag =====

"===== Go =====
let g:go_fmt_command = "goimports"
"=====/Go =====
