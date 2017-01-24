let g:vimrcPath = $MYVIMRC
let g:vimPath = system('realpath '.g:vimrcPath)
let g:vimDir = fnamemodify(g:vimPath, ':h')
let g:plugDir = g:vimDir.'/plugged'
filetype off
" set t_Co=256

call pathogen#infect()
call pathogen#helptags()

set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Bundles here:
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
Plugin 'guns/xterm-color-table.vim'
Bundle 'gerw/vim-latex-suite'
Plugin 'https://github.com/freeo/vim-kalisi'

" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'Lokaltog/vim-powerline'
" Plugin 'file:///Users/benschneider/.vim/color'

call vundle#end()


set clipboard=unnamed  " Use clipboard as standard buffer 

" Additional Options
set encoding=utf-8
let g:SimpylFold_docstring_preview=1
let python_highlight_all=1
let g:netrw_liststyle=1

filetype plugin on
filetype indent on
filetype plugin indent on
syntax on

" for latex-suite
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set sw=2
set iskeyword+=:
let g:Tex_ViewRule_pdf = '/usr/bin/qlmanage'
let g:Tex_CompileRule_pdf = 'pdflatex --synctex=-1 -src-specials -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat='pdf'
set spell

map <F5> :set nowrap! <CR>
set number "activate line numbering
set mouse=a

" colorscheme kalisi
" set background=dark
colorscheme lightTheme
" colorscheme darkTheme

set foldmethod=indent
set foldlevel=20
set backspace=2 
Helptags

let g:pymode_rope=0  " disable dot completion if it is too slow
let g:pymode_run=1
let g:pymode_folding=1
let g:pymode_options=1
let g:pymode_syntax=1
let g:pymode_syntax_all=1
let g:pymode_syntax_slow_sync=1
let g:pymode_lint_ignore = "W0611"
let g:pymode_options_max_line_length=100
 
" let g:pymode_lint_ignore = "E501,W"
" let g:pymode_rope_complete_on_dot = 0
" let g:pymode_lint_options_pep8 = { 'ignore': 'E402' }

:set hlsearch incsearch  " Help in search functions

autocmd BufWritePre *.py :%s/\s\+$//e " Remove trailing white spaces
