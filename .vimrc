filetype plugin indent on

" pathogen plugin management:
"execute pathogen#infect()

" autocompletion suggestions you can cycle through with <tab>
set wildmenu

" shows a column that indicates the 80 character in line
" (conform to PEP, make a newline after 79 char)
set colorcolumn=80
" to specifically wrap on character 79, uncomment following line:
" set textwidth=79

" if lines get wrapped, don't break words:
set linebreak

" Utf-8 encoding:
set encoding=utf8

" tabs to spaces:
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" on pressing tab, insert 4 spaces
set expandtab

" set to auto read when a file is changed from the outside
set autoread

" messy!:
" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" when scrolling with j,k, cursor won't reach screen edge
:set scrolloff=5

" allows hiding buffers with unsaved changes
set hid

" ignore case when searching
set ignorecase 
" only ignores case when the search term is all lower-case
set smartcase
" highlight search results
set hlsearch

" moves cursor to matching strings while typing
" (browser-like)
"set incsearch

" tenths of sec of blinking, when showing matching brackets
" while in insert mode (!) (not highlight mode)
set mat=5

" moves through wrapped lines like they were seperate lines
map j gj
map k gk

" show line numbers
set number

"lightline
set laststatus=2
set t_Co=256
set noshowmode

" syntax highlighting:
syntax enable
" colors:
colorscheme elflord
" transparent background
hi Normal guibg=NONE ctermbg=NONE
" gray comments:
hi Comment guifg=gray ctermfg=gray
" gray line numbers:
hi LineNr guifg=gray ctermfg=gray
