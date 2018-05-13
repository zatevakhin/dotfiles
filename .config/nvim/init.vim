
" #############################################################################
" INSTALL / LOAD PLUGINS
" #############################################################################
call plug#begin('~/.nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'

Plug 'thaerkh/vim-workspace'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tcomment_vim'
Plug 'flazz/vim-colorschemes'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'

" COMPLETION
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'shougo/neoinclude.vim'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'

Plug 'shougo/neosnippet.vim'
Plug 'shougo/neosnippet-snippets'
Plug 'shougo/neco-vim'
Plug 'shougo/neco-syntax'
Plug 'ujihisa/neco-look'

" VCS
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nfvs/vim-perforce'

" LANGUAGES SYNTAXES
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

let g:ctrlp_map = '<F3>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_root_markers = ['.p4ignore']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EASYMOTION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1

" Find by n symbols
nmap fn <Plug>(easymotion-sn)

" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" find symbol
nmap fs <Plug>(easymotion-s)

" find symbol in line
nmap fl <Plug>(easymotion-sl)

" MULTIPLE-CURSORS
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


" DEOPLETE
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" set sources
let g:deoplete#sources = {}

" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

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

colorscheme molokai " lucius

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
" BUFFERS
nnoremap <silent> bn :bnext<CR>
nnoremap <silent> bp :bprevious<CR>

" TABS
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

" WINDOWS
"
nmap <silent> ww :wincmd k<CR>
nmap <silent> ws :wincmd j<CR>
nmap <silent> wa :wincmd h<CR>
nmap <silent> wd :wincmd l<CR>


