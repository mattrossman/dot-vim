runtime vundle-config.vim
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set lazyredraw          " redraw only when we need to.
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
nnoremap <leader><space> :nohlsearch<CR>
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
map <Leader> <Plug>(easymotion-prefix)
map s <Plug>(easymotion-s)
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
