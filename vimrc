" Adding fzf
set rtp+=/Users/erenteria/homebrew/opt/fzf

set relativenumber

syntax on

let mapleader = "f" 

" Keymaps
" Normal mode
nnoremap <C-p> :GFiles<CR>
nnoremap <C-o> :Files<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>S :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>w :bd

" Insert mode
inoremap <C-s> <Esc>:w<CR>
