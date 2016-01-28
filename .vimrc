set nocompatible
filetype off
"отключаем бек своп
set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap filesshortcut to rapidly toggle 'set list'
map <leader>l :set list!<CR>
"show line number
set nu
"Use the same symbols as textMate for tabstops and EOLs
:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=DarkGreen
set list
set listchars=trail:·
set lcs=tab:>\
set listchars=eol:¬
" включить подсветку кода
syntax on
" GUI? устаналиваем тему и размер окна
set lines=50 columns=125
colorscheme monokai
let g:monokai_termcolors = 256
"auto typescript
autocmd BufNewFile,BufRead *.ts,*.tsx setlocal filetype=typescript
"auto indent
set smartindent
"tabs 2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

"Use UTF-8
set encoding=utf-8

"show line number, cursor position
set ruler

"display incomplete command
set showcmd

"search as you type
set incsearch
"ignore case when searching
set ignorecase

"add Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#rc()

filetype plugin indent on

"---------=== Code/project navigation ===-------------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endi
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"plugins
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'leafgarland/typescript-vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'ntpeters/vim-better-whitespace'

Bundle 'L9'
Bundle 'taglist'

Bundle 'FuzzyFinder'
Bundle 'rails.vim'

Bundle 'git://git.wincent.com/command-t.git'

