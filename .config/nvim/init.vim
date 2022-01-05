call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ziglang/zig.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
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
set nofoldenable
filetype indent on
filetype plugin on


" FZF
let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp$|\.class$|\.out$|\.bin$|\.elf$'

set path+=**
set wildmenu

let mapleader=","

nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>d :Files<CR>
nnoremap <silent> <leader>g :Rg<CR>

nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga <Plug>(coc-fix-current)
nmap <silent> gb <C-o>
nmap <silent> grename <Plug>(coc-rename)
nnoremap gh :call CocAction('runCommand', 'clangd.symbolInfo')<CR>
nnoremap ,c :call nerdcommenter#Comment(0,"toggle")<CR>
vnoremap ,c :call nerdcommenter#Comment(0,"toggle")<CR>

let g:zig_fmt_autosave = 0

set nobackup
set noswapfile
set noundofile
set relativenumber

let &t_ut=''
colorscheme gruvbox
set background=dark
