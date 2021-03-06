colorscheme one
set background=dark
syntax enable
syntax on
set showmode
set showcmd
set clipboard+=unnamed
set clipboard^=unnamedplus
set splitbelow
set splitright
set number
set autoread
set autowrite
set autowriteall
set hidden
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
" set cursorline
" set cursorcolumn
" set relativenumber
" set colorcolumn=101
set textwidth=100
set nofoldenable
set foldmethod=syntax
set lbr
set fo+=mM
set laststatus=2
set cmdheight=1
set ruler
set showtabline=0
set showmatch
set completeopt=menuone,menu,preview
set complete=.,w,b,u,t,i,d
set infercase
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile
set undofile
set splitright
set splitbelow
set autochdir
set novisualbell
set noerrorbells
set history=1000
set backspace=indent,eol,start
" set whichwrap+=<,>,h,l
set wildmenu
set wildmode=longest:list,full
set wrap
set linebreak
set shortmess+=aoOWtcI
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•
" set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¬
" set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¬,precedes:«,extends:»

set lazyredraw
set pumheight=10
set ttyfast

" set mouse=a
" set selection=exclusive
" set selectmode=mouse,key

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set encoding=UTF-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set fileformats=unix
set notimeout
set ttimeout
set ttimeoutlen=10
set updatetime=200
set termguicolors

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if !has('gui_running')
    set t_Co=256
endif


let mapleader=","

nmap <leader>w :w<cr>
nmap <leader><leader>q :q!<cr>

noremap <silent><leader><cr> :nohlsearch<cr>

noremap <leader><leader>i :PlugInstall<cr>
noremap <leader><leader>u :PlugUpdate<cr>
noremap <leader><leader>c :PlugClean<cr>

map <C-n> :cn<cr>
map <C-m> :cp<cr>
nnoremap <leader>a :cclose<cr>

map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>

map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

nnoremap <leader>tt :tabnew<cr>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bd :bdelete<cr>

vnoremap < <gv
vnoremap > >gv


call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'Raimondi/delimitMate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \           [ 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ] }
    \ }


let g:NERDTreeWinSize = 30
let g:NERDTreeDirArrowExpandable = ' ▸'
let g:NERDTreeDirArrowCollapsible = ' ▾'
map <silent><leader><leader>t :NERDTreeToggle<CR>
let g:NERDTreeHidden = 1
let NERDTreeIgnore = ['\.pyc$', '\.vscode',  'node_modules', '__pycache__']
let NERDTreeMinimalUI = 1
let NERDTreeMinimalMenu = 1
let NERDTreeShowHidden = 0
let NERDTreeHighlightCursorline = 1


let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" let g:UltiSnipsListSnippets = "<c-l>"


let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1


let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
nnoremap <leader>hm :GitGutterPrevHunk<cr>
nnoremap <leader>hn :GitGutterNextHunk<cr>


nnoremap <leader>gl :Agit<cr>
nnoremap <leader>gf :AgitFile<cr>
let g:agit_no_default_mappings = 1


if has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> <leader>+ <Plug>(coc-diagnostic-next)
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

nmap <leader>qf  <Plug>(coc-fix-current)

if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<cr>
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<cr>
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<cr>


let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_code_completion_enabled = 0
let g:go_test_show_name = 1
let g:go_test_timeout = '10s'
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:go_template_autocreate = 0
let g:go_template_use_pkg = 1
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls  =  1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:o_highlight_format_strings = 1
let g:go_debug_windows = {
    \ 'vars':  'leftabove 35vnew',
    \ 'stack': 'botright 10new',
    \ }
let g:go_highlight_debug = 1
let g:go_test_prepend_name = 1
let g:go_list_type = "quickfix"
let g:go_auto_type_info = 0
let g:go_doc_popup_window = 1
let g:go_get_update = 0
" let g:go_diagnostics_enabled = 1
" let g:go_diagnostics_level = 2
let g:go_gopls_deep_completion = 1
let g:go_gopls_complete_unimported = 1
let g:go_imports_autosave=1
let g:go_gopls_options = []
let g:go_auto_sameids = 0
let g:go_autodetect_gopath = 1
let g:go_metalinter_autosave = 0
let g:go_metalinter_command = "golint"
let g:go_metalinter_autosave_enabled = ['all']
let g:go_metalinter_enabled = ['golint']
let g:go_modifytags_transform = 'camelcase'
let g:go_def_mapping_enabled = 0
