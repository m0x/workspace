"
" VIM configuration
"


" Plugins
"===============================================================================


set nocompatible           " no compatibility with legacy VI
filetype off               " required for plugins

set rtp +=~/.vim/bundle/Vundle.vim " add Vundle to runtime path
call vundle#begin()                " initialize vundle

Plugin 'gmarik/Vundle.vim'          " let vundle manage vundle (required)
Plugin 'bling/vim-airline'          " pimp my status line:w
Plugin 'tpope/vim-fugitive'         " git integration
Plugin 'tpope/vim-bundler'          " bundler integration
Plugin 'tpope/vim-rvm'              " rvm integration
Plugin 'tpope/vim-rails'            " rails integration
Plugin 'tpope/vim-endwise'          " automatically add end in ruby
Plugin 'tpope/vim-surround'         " automatically add end in ruby
Plugin 'tpope/vim-haml'             " haml syntax highlighting
Plugin 'kchmck/vim-coffee-script'   " haml syntax highlighting
Plugin 'kien/ctrlp.vim'             " fuzzy file search
Plugin 'vim-scripts/ScrollColors'   " easy color theme selection
Plugin 'vim-scripts/supertab'       " use tab for autocompletion
Plugin 'flazz/vim-colorschemes'     " lots of color schemes
Plugin 'scrooloose/nerdtree'        " filesystem nav
Plugin 'vim-ruby/vim-ruby'          " ruby syntax highlighting
Plugin 'slim-template/vim-slim'     " slim syntax highlighting
Plugin 'skalnik/vim-vroom'          " run tests
Plugin 'Raimondi/delimitMate'       " autoclose brackets & quotes
Plugin 'dkprice/vim-easygrep'       " easy grep usage
Plugin 'airblade/vim-gitgutter'     " show git changes in gutter
Plugin 'vimwiki/vimwiki'            " personnal wiki

call vundle#end()                  " end vundle

filetype plugin indent on  " enable filetypes plugins + indentation


" Basics
"===============================================================================


syntax enable                        " enable syntax highlighting
set omnifunc=syntaxcomplete#Complete " enable omnicompletion
set encoding=utf-8                   " use UTF8 encoding
set showcmd                          " show infos on visual mode
set number                           " show line number
set laststatus=2                     " always show status line
set scrolloff=5                      " always keep 5 lines visible around cursor
set cursorline                       " highlight current line


" Appearance
"===============================================================================

set term=gnome-256color           " my term
set t_Co=256                      " use colors
let g:airline_powerline_fonts=1   " use fancy powerline symbols
set noshowmode                    " get rid of default mode indicator
set lazyredraw                    " do not redraw while executing macros

colorscheme railscasts


" Splits
" ==============================================================================

set splitbelow      " open splits below
set splitright      " open vertical splits right
set winheight=40    " current window min height
set winminheight=5  " minimum window size

" quicker split resizing
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" quicker split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Whitespace
"===============================================================================


set nowrap                   " no line wrapping
set tabstop=2 shiftwidth=2   " a tab is two spaces
set expandtab                " use spaces instead of tabs
set smarttab                 " use shiftwidth when inserting and deleting tabs in front of a line
set listchars=tab:→→,trail:· " configure symbols for tabs and trailing spaces
set list                     " show invisible chars
set textwidth=0              " do not auto break to a new line


" Searching
"===============================================================================


set hlsearch              " highlight matches
set incsearch             " incremental searches (show result on the fly)
set ignorecase            " case insensitive searches
set smartcase             " - except if the pattern contains a capital letter
set wildmenu              " extended command autocompletion in : menu


" Keybindings
"===============================================================================

" Ctrl + n toggles NERDTree
map <C-n> :NERDTreeToggle<CR>
