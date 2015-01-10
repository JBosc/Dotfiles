" Plugins

let g:plug_window = 'enew'

call plug#begin("$XDG_CONFIG_HOME/vim/plugged")

" Sensible options that should always be set
Plug 'tpope/vim-sensible'

" Map common readline binding in insert and command mode
Plug 'tpope/vim-rsi'

" Mapping for surronding text
Plug 'tpope/vim-surrond'

" Automagically detect the indenting style in the file
Plug 'tpope/vim-sleuth'

" Exchange two sections of text with ease (cxi)
Plug 'tommcdo/vim-exchange'

" Automatically enable 'paste' when pasting for a supporting terminal
" http://www.xfree86.org/current/ctlseqs.html#Bracketed Paste Mode
Plug 'ConradIrwin/vim-bracketed-paste'

" Do completion with <Tab> instead of <C-P>
" Plug 'ervandew/supertab'

" Syntax Checking
Plug 'scrooloose/syntastic'

" Completion Engine
Plug 'valloric/youcompleteme'

" Fuzzy search
Plug 'kien/ctrlp'

" Ag search
Plug 'ervandew/ag'
