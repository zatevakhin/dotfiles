
" #############################################################################
" INSTALL / LOAD PLUGINS
" #############################################################################
call plug#begin('~/.nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'

Plug 'thaerkh/vim-workspace'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'flazz/vim-colorschemes'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'

Plug 'vim-scripts/c.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()
" #############################################################################
" PLUGINS CONFIG
" #############################################################################

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_extensions = ['branch', 'tabline']
let g:airline_powerline_fonts = 1
let g:airline_theme = 'kolor'
let g:airline_detect_modified = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#tab_nr_type = 1

let g:airline_mode_map = {
    \ '__'  : '-',
    \ 'n'   : 'N',
    \ 'i'   : 'I',
    \ 'R'   : 'R',
    \ 'c'   : 'C',
    \ 'v'   : 'V',
    \ 'V'   : 'V',
    \ ''    : 'V',
    \ 's'   : 'S',
    \ 'S'   : 'S',
    \ ''  : 'S',
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'wr'
let g:ctrlp_by_filename = 1

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeAutoDeleteBuffer = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EASYMOTION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" find symbol
nmap fs <Plug>(easymotion-s)

" find symbol in line
nmap fl <Plug>(easymotion-sl)

" #############################################################################
" VIM SETTINGS
" #############################################################################

" Disable compatibility with vi
set nocompatible

" Show line number
set number

set cursorline

" Encoding / terminal encoding
set termencoding=utf8
set encoding=utf8

set autoindent
set backspace=indent,eol,start

" Set formats [newlines]
set fileformats=unix,dos,mac

" Tabs size by default
set shiftwidth=2 softtabstop=2 tabstop=2

" Using spaces instead of tabs
set expandtab

" показывать строку статуса '2' всегда
set laststatus=2

set smartindent

set showmatch

set showmode

set smarttab

"·Do·case·insensitive·matching
set ignorecase

"·Do·smart·case·matching
set smartcase

"·Incremental·search
set incsearch

" Auto reload file if changed
set autoread

" Timeout for keycombo's
set timeoutlen=500

set wildmenu

set pumheight=10

set list listchars=tab:>-,trail:·,space:·,eol:$

set backspace=eol,start,indent

" Use [space] symbol as windows delimiter
set fillchars+=vert:\

set colorcolumn=81

set background=dark

colorscheme Monokai

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " UNIX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WINDOWS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :vsplit opens windows on the right
set splitright

" :split opens on bottom
set splitbelow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEYBOARD
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> bn :bnext<CR>
nnoremap <silent> bp :bprevious<CR>

nnoremap <silent> tt :tabnew<CR>
nnoremap <silent> to :tabonly<CR>
nnoremap <silent> tc :tabclose<CR>
nnoremap <silent> tm :tabmove<CR>
nnoremap <silent> tn :tabnext<CR>
nnoremap <silent> tp :tabprevious<CR>

" Switching tabs <Alt + 1..9>
for i in range(1, 9)
  exec "map <M-". i ."> ". i ."gt"
endfor
