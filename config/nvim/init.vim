"------------------------ Vim Plug--------------------------
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
"Plug 'romainl/flattened'
Plug 'vimwiki/vimwiki'
Plug 'lambdalisue/suda.vim'
"Plug 'ap/vim-css-color' "Highlight RGB color
"Plug 'KabbAmine/vCoolor.vim' "Open a dialog which let me choose RGB colors
"Plug 'mcchrish/nnn.vim'
Plug 'hardcoreplayers/gruvbox9'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()

"------------------------ General Setup --------------------------
filetype plugin indent on 
syntax on 
set cursorline "Highlight the line where cursor is 
"colorscheme nord
set hls is "Making sure search highlights words as we type them
set number relativenumber
if (has("termguicolors"))
 set termguicolors
endif
colorscheme nord
"colorscheme OceanicNext
"Custome key
nnoremap <silent> <F5> :w !./%<CR>
"Plugin Configurate
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
augroup pandoc_syntax
  autocmd! FileType vimwiki set syntax=markdown.pandoc
augroup END


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


"-------------------------Autocmd-------------------------
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
"
"-------------------------Mapping------------------------
nnoremap <C-g> :Goyo <CR>
nnoremap <leader>f :NERDTreeToggle <CR>
