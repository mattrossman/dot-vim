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
filetype indent on
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
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
nnoremap <leader>- :sp<CR>
nnoremap <leader>\| :vsp<CR>
set splitbelow
set splitright
noremap <leader>q :q<cr>
nnoremap Q @q
vnoremap Q :norm @q<cr>
imap <leader><leader> <Esc>
vmap <leader><leader> <Esc>
