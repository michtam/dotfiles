set background=dark
colorscheme desert
"color dracula

syntax on

" By default Y is mapped to the equivalent of yy. This makes Y act like the 'copy/yank' equivalent of D
"noremap Y y$


set hls
set history=1000

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Show lines number 
set number

" Set TAP for 4 spaces 
set tabstop=2

" Twice  Ctrl + n toggle show line number 
nmap <C-N><C-N> :set invnumber<CR>

" Ctrl + s save file
nmap <C-S> :w<CR>

"call plug#begin('~/.vim/plugged')

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"Plug 'pearofducks/ansible-vim'

"Solarized color theme
"Plug 'altercation/vim-colors-solarized'


"call plug#end()



" et  = expandtab (spaces instead of tabs)
" ts  = tabstop (the number of spaces that a tab equates to)
" sw  = shiftwidth (the number of spaces to use when indenting
"       -- or de-indenting -- a line)
" sts = softtabstop (the number of spaces to use when expanding tabs)
  
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead Jenkinsfile setf groovy
