" Vim plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'ziglang/zig.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
call plug#end()

" No vi config
set nocompatible
"set timeout timeoutlen=5000 ttimeoutlen=100
" Read file when modified externally
set autoread
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set nu
set incsearch
set hlsearch
set showmatch
set ruler
set showcmd
set ignorecase
set smartcase
set cursorline
set ai
set si
filetype indent on
filetype plugin on


" FZF
let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class$|\.out$|\.bin$|\.elf$'

set path+=**
set wildmenu

let mapleader=","

nnoremap <silent> <leader>f :GFiles<CR>

nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gb <C-o>
nmap <silent> grename <Plug>(coc-rename)
nnoremap gh :call CocAction('runCommand', 'clangd.symbolInfo')<CR>
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>

set nobackup
set noswapfile
set noundofile
set relativenumber
