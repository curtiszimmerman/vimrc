"
" most of this comes from stackoverflow.com/questions/164847/what-is-in-your-vimrc
" (hilarious that it's closed despite being such useful content)
"

" {{{Misc Settings
" slay the eight-character monster
set tabstop=4
" proper backspaces
set backspace=indent,eol,start
" line numbers
set number
" highlight search results
set hlsearch
" incremental search... show results as you type
set incsearch
" show what you're typing as cmd
set showcmd
" ...
set autoindent
" mouse support
set mouse=a
" clipboard support
let g:clipbrdDefaultReg = '+'
" remap jj to escape in insert mode
inoremap jj <Esc>
nnoremap JJJJ <Nop>
" deal with it
compiler gcc
" https://github.com/rjohnsondev/vim-compiler-go
" autocmd FileType go compiler golang
" if $GOROOT not set, hand-craft absolute path here 
"let g:golang_goroot = "/home/foo/go"
"
" this prevents workspace clutter AND stops sync utilities from freaking out about temp files
" IMPORTANT: vim won't create these for you, bruh...
"
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
" }}}

" {{{Look and Feel
" syntax on
syntax enable
" automatic filetype detection
filetype on
" match parens
highlight MatchParen ctermbg=4
" always display status line 
set laststatus=2
" full path, modified? $ ro? help? preview? (newline type?)(filetype) [row,col][percent to EOF]
set statusline=%F%m$%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
" }}}

" {{{Mappings
" let's navigate our tabs like irssi navigates its windows
" next tab (alt-right)
nnoremap <silent> <M-Right> :tabnext<CR>
" previous tab (alt-right)
nnoremap <silent> <M-Left> :tabprevious<CR>
" new tab
nnoremap <silent> <C-t> :tabnew<CR>
" }}}


