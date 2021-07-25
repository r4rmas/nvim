set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set sw=2
set noshowmode
set completeopt+=menuone
set completeopt+=noinsert

noremap <C-S> : update<CR>
noremap <C-Q> : quit<CR>
noremap gm :call cursor(0, virtcol('$')/2)<CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'townk/vim-autoclose'
call plug#end()

" let NERDTreeQuitOnOpen=1
noremap <C-E> :NERDTreeFind<CR>
