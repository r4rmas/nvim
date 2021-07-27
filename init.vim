set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set sw=2
set noshowmode
set completeopt+=menuone
set completeopt+=noinsert
set sua+=.js

highlight VertSplit cterm=NONE

noremap <C-S> : update<CR>
noremap <C-Q> : quit<CR>
noremap gm :call cursor(0, virtcol('$')/2)<CR>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
call plug#end()

noremap <C-E> :NERDTreeFind<CR>


" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,js'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
