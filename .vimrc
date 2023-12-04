" Disable compatibility with vi which can cause unexpected issues. "
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use. "
filetype on

" Enable plugins and load plugin for the detected file type. "
filetype plugin on

" Load an indent file for the detected file type. "
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line "
set number

" Highlight cursor line underneath horizontally "
set cursorline

" Highlight cursor line underneath vertically"
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters
" as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode


" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable autocompletion menu for TAB
set wildmenu

" Make wildmen behave to autocomplete
set wildmode=list:longest

" Ignore certain files with wildmode
set wildignore=*docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Hopefully setting colorscheme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

" Letting mouse be available for use
set mouse=a

" Set relative numbering
set relativenumber

" PLUGINS  ----------------------------------------------------------------{{{

call plug#begin('~/.vim/plugged')


Plug 'ghifarit53/tokyonight-vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'junegunn/fzf.vim'

call plug#end()

" }}}

" MAPPING -----------------------------------------------------------------{{{
" Mappings code goes here "
" }}}

" VIMSCRIPTS --------------------------------------------------------------{{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.
" Clear status line when vim is restarted
set statusline=

" Status line left side
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to serpate the left side from the right side
set statusline+=%=

" Status line right side stuff
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show status on second to last line
set laststatus=2

" }}}
