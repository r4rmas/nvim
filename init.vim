set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set sw=2
set completeopt+=menuone
set completeopt+=noinsert
set sua+=.js
set termguicolors

highlight VertSplit cterm=NONE

noremap <C-S> : update<CR>
noremap <C-Q> : quit<CR>
noremap gm :call cursor(0, virtcol('$')/2)<CR>

call plug#begin('~/.vim/plugged')
" File system explorer
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
" Languages support & intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
" Git support 
Plug 'tpope/vim-fugitive'
" Icons
Plug 'ryanoasis/vim-devicons'
" Themes
Plug 'ntk148v/vim-horizon'
Plug 'navarasu/onedark.nvim'
Plug 'dracula/vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'itchyny/lightline.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
call plug#end()

noremap <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1


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

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx,*.ts'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx,*.ts'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,js,tsx,ts'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,tsx,ts'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
let g:lightline = { 
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ]]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
\ }

colorscheme palenight

