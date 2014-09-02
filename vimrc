set shell=/bin/sh

" Use Pathogen to load plugins (https://github.com/tpope/vim-pathogen)
execute pathogen#infect()

" Syntax highlighting ON
syntax on
set background=dark
let g:rehash256 = 1
colorscheme molokai

" Enabled Vim to load plugins, settings or key mappings that are only useful in the context of specific file types
filetype plugin indent on

" Hides buffers instead of closing them. This means that you can have
" unwritten changes to a file and open a new file using :e, without being
" forced to write or undo your changes first. Also, undo buffers and marks
" are preserved while the buffer is open.
set hidden

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Basic stuff
set nowrap        		" don't wrap lines
set tabstop=2     		" a tab is two spaces
set autoindent    		" always set autoindenting on
set copyindent    		" copy the previous indentation on autoindenting
set number        		" always show line numbers
set shiftwidth=2  		" number of spaces to use for autoindenting
set shiftround    		" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     		" set show matching parenthesis
set ignorecase    		" ignore case when searching
set smartcase     		" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      		" insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      		" highlight search terms
set incsearch     		" show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set cursorline

" No backups
set nobackup
set noswapfile

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Gundo (https://github.com/vim-scripts/Gundo)
nnoremap <F5> :GundoToggle<CR>

nnoremap <silent> <leader>w :w<CR>

" Autoreload .vimrc
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

