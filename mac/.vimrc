" These lines setup the environment to show graphics and colors correctly.
set nocompatible
filetype off

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
" check your syntax on each save with the syntastic extension
Plugin 'scrooloose/syntastic'
" add PEP8 checking
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
" super searching
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Add all your plugins here
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1


call vundle#end()
""""""""""""""""""""""""""""""
" basic configuration
""""""""""""""""""""""""""""""


" Sets how many lines of history VIM has to remember
set history=700

filetype plugin on
filetype indent on

" show line numbers
set number

" expand tabs into spaces
set expandtab

" when using then >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code 
set autoindent

" PEP 8
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css,*.rb,*.sh
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 |

" utf8 support
set encoding=utf-8

" show a visual line under the cursor's current line
set cursorline

" show then matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
" enable syntax highlighting
syntax on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" map arrow keys to nop
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

" Use <ctrl> + <shift> + '+' for resize split window size
nmap w= :vertical resize +2<cr>
nmap w- :vertical resize -2<cr>

nmap w] :resize +2<cr>
nmap w[ :resize -2<cr>



" set keys for copy text from buffer to system clipboard
set clipboard=unnamed " only on mac osx
vnoremap <leader>c "*y
nnoremap <leader>v "*p
vnoremap <leader>x "*d 

" Plugins configuration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ctrlp_map= '<c-p>'
let g:ctrlp_cmd= 'CtrlP'
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }



"用Tab跳转到匹配的括号
map <tab> %

"""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
   
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
                               
set laststatus=2 " Always display thestatusline in all windows
set noshowmode " Hide the default mode text(e.g. -- INSERT -- below the statusline)
