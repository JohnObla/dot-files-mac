" custom key bindings

" set mapleader to space
nnoremap <space> <nop>
let mapleader = "\<space>"

" commenting below while I sort out shortcuts
" " buffer next shortcut
" nnoremap <leader>bn :bn<cr> ;buffer next

" " new tab shortcut
" nnoremap <leader>tn gt ;new tab

" reload vimrc
nnoremap <leader>rv :source $MYVIMRC<CR>

" file save and file quit 
nnoremap <leader><leader>w :w<CR>
nnoremap <leader><leader>q :q<CR>

" makes window navigation easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" rebind horizontal split
nnoremap <c-w>h <c-w>s
