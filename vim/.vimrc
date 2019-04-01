runtime vundle-config.vim
set ruler               " show line, column number in bottom bar
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set lazyredraw          " redraw only when we need to.
set bs=2            " allow backspace in insert mode
set tabstop=4       " number of visual spaces per TAB
set expandtab       " tabs are spaces
set shiftwidth=0
set softtabstop=4   " number of spaces in tab when editing
set wildmenu
set showmatch
set incsearch           " search as characters are entered
set ignorecase
set smartcase
set whichwrap+=<,>,h,l,[,]
colorscheme gruvbox
set background=dark
syntax on
let mapleader=","
set exrc
set secure
set hidden
set smartindent
set autoindent
set number
set relativenumber
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
filetype indent plugin on
set fo+=t
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

noremap <C-n> :NERDTreeToggle<CR>
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bdelete<Return>
nnoremap <leader>- :sp<CR>
nnoremap <leader>\| :vsp<CR>
set splitbelow
set splitright
nnoremap <leader>w :w<cr>
inoremap <leader>w <C-c>:w<cr>
nnoremap <leader>W :wq<cr>
inoremap <leader>W <C-c>:wq<cr>
noremap <leader>q :q<cr>
nnoremap <leader>Q :q!<cr>
inoremap <leader>Q <C-c>:q!<cr>
nnoremap Q @q
vnoremap Q :norm @q<cr>
nnoremap <leader>R :e $MYVIMRC<CR>
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>V :e ~/.vim/vundle-config.vim<CR>
imap <leader><leader> <Esc>
vmap <leader><leader> <Esc>
nnoremap gp `[v`]
autocmd BufNewFile,BufRead .bash_* set syntax=sh
set backupdir=~/.vim/.backup//,/tmp//
set directory=~/.vim/.swp//,/tmp//
set undodir=~/.vim/.undo//,/tmp//
set backup
set undofile
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 45,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
      \ }
