" >>>=========Basic============

set t_Co=256
colorscheme badwolf
set background=dark
syntax enable
syntax on
set showmode
set showcmd
set clipboard+=unnamed
set splitbelow
set splitright
set number
set nocompatible
set autoread
set autowriteall
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set relativenumber
" set cursorline
" set cursorcolumn
set textwidth=80
set lbr
set fo+=mB
set scrolloff=5
set laststatus=2
set ruler
set showmatch
set hlsearch
set incsearch
set nobackup
set noswapfile
set undofile
set autochdir
set visualbell
set noerrorbells
set history=1000
set list
set  listchars =tab:>-,trail:-
set wildmenu
set wildmode=longest:list,full
set ambiwidth=double

set mouse=a
set selection=exclusive
set selectmode=mouse,key

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8


" >>>=========Keymap============

let mapleader=","

" ====Tab====

map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>

map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" ====Split Windows====

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" ====Windows Size====

nnoremap <M-j> :resize +5<cr>
nnoremap <M-k> :resize -5<cr>
nnoremap <M-h> :vertical resize -5<cr>
nnoremap <M-l> :vertical resize +5<cr>

" ====Buffer====

nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>

" ====Line====

cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" ====indent====

vnoremap < <gv
vnoremap > >gv

" ====Clipboard====

vmap <Leader>c "+yy
nmap <Leader>c "+yy
nmap <Leader>v "+p


" >>>=========Config============

" >>>====statusline====

set laststatus=2
set statusline=(Vide)\ \ %<%f
set statusline+=%w%h%m%r
set statusline+=\ %{getcwd()}
set statusline+=\ [%{&ff}:%{&fenc}:%Y]
set statusline+=%=%-14.(%l,%c%V%)\ %p%%