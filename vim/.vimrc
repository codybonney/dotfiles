set sessionoptions-=options

" Show whitespace
set listchars=tab:»·,trail:·,extends:#,nbsp:·

" Allows vim-airline to show up
set laststatus=2
set noshowmode

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" vim-nerdtree configuration
let g:NERDTreeWinSize=62
nnoremap <F4> :NERDTreeToggle<CR>

set expandtab
set tabstop=4     " a tab is 4 spaces
set softtabstop=4 " so deletion at an initial tab will remove 4 spaces
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent    " always set autoindenting on
set backspace=indent,eol,start " fix backspace behavior
set clipboard=unnamed " allow coping to system clipboard
set foldlevelstart=7

let g:colors_name = "seti"
set background    = "dark"
set t_Co=256    " fix colors

"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" map keys for quick paste mode
map <F9> :set paste<CR>
map <F10> :set nopaste<CR>
imap <F9> <C-O>:set paste<CR>
imap <F10> <nop>
set pastetoggle=<F10>

" set up toggling of line numbers
map <F8> :set invnumber<CR>
set number

" setup toggling of relative line numbers
map <F7> :set invrelativenumber<CR>

hi! Normal ctermbg=NONE guibg=NONE
hi Normal ctermfg=252 ctermbg=none
hi NonText ctermfg=250 ctermbg=none
hi SignColumn ctermbg=NONE guibg=NONE
hi LineNr guibg=NONE ctermbg=NONE

hi CursorLine   cterm=NONE  guibg=Gray80
"set cursorline

" map Q to quit
map Q :q!<CR>

" map F1 to save and continue editing
map <F1> <ESC><ESC>:w!<CR>
