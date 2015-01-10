" General vim conigurations
"
" vim-sensible takes care of most of the really common configuration changes
" for us.

set number
set nowrap
set cursorline
set hidden
set list
set hlsearch
set ignorecase
set smartcase
set autochdir
set tw=79
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233
set t_Co=256
color wombat256mod

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a
set bs=2

" Disable backup files
set nobackup nowritebackup noswapfile

" Tab configuration
set smartindent expandtab tabstop=4 shiftwidth=4 softtabstop=4 shiftround

" Set history and undo depth
set history=700 undolevels=700

" vmap Q gq
" nmap Q gqap

set laststatus=2

" open ag.vim, for better search
nnoremap <leader>a :Ag

" ctrlp control
let g:ctrlp_max_height=30
let g:ctlrp_match_window='bottom,order:ttb'
let g:ctlrp_switch_buffer=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'

let g:ycm_min_num_of_chars_for_completion = 2

set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/
set wildignore+=*/cache/*,*.sassc

" automagically add semicolons when closing parenthesis
autocmd FileType c,c++,perl,php let b:delimitMate_eol_marker=";"

" Open help windows on the right in  a vertical split
autocmd FileType help wincmd L
