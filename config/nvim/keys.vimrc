" custom key bindings

" set mapleader to space
nnoremap <space> <nop>
let mapleader = "\<space>"

" commenting below while I sort out shortcuts
" " buffer next shortcut
" nnoremap <leader>bn :bn<cr> ;buffer next

" " new tab shortcut
" nnoremap <leader>tn gt ;new tab

" " rebind horizontal split
" nnoremap <c-w>h <c-w>s

" reload vimrc
nnoremap <leader>rv :source $MYVIMRC<CR>

" file save and file quit 
nnoremap <leader>fw :w<CR>
nnoremap <leader>fq :q<CR>