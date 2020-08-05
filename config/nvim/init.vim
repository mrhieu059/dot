"------------------------ Vim Plug--------------------------
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'romainl/flattened'
Plug 'vimwiki/vimwiki'
Plug 'lambdalisue/suda.vim'
Plug 'ap/vim-css-color' "Highlight RGB color
Plug 'KabbAmine/vCoolor.vim' "Open a dialog which let me choose RGB colors
call plug#end()

"------------------------ General Setup --------------------------
filetype plugin indent on 
syntax on 
set cursorline "Highlight the line where cursor is 
"colorscheme nord
set hls is "Making sure search highlights words as we type them
set relativenumber
"set termguicolors
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
