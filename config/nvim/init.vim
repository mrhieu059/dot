"------------------------ Vim Plug--------------------------
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'romainl/flattened'
Plug 'vimwiki/vimwiki'
Plug 'lambdalisue/suda.vim'
call plug#end()

"------------------------ General Setup --------------------------
filetype plugin indent on 
syntax on 
set cursorline "Highlight the line where cursor is 
"colorscheme nord
set hls is "Making sure search highlights words as we type them
set number
set termguicolors
colorscheme nord
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


"------------------------- Status-line -------------------------
set statusline=
set statusline+=\ %M
set statusline+=\ %y
set statusline=
set statusline+=\ %F

set statusline+=%= "Right side settings
set statusline+=\ %c:%l-%L
set statusline+=\ [%p%%]
set statusline+=\ [%n]
