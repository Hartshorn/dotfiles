execute pathogen#infect()


set nocompatible

filetype indent plugin on

syntax on

colorscheme apprentice

set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase

set ruler

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler

set laststatus=2

set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number
set relativenumber

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>

set cindent
set tabstop=8
set shiftwidth=8
set softtabstop=8
set noexpandtab

autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

let g:tmuxline_powerline_separators = 0

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : ['#H', '#(whoami)', '#(uname -o)'],
      \'c'    : '#(ipconfig | grep IPv4 | cut -d: -f2)',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W'],
      \'x'    : ['%A', '%B %e', '%Y'],
      \'z'    : '%r'}

