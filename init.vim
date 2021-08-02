set number
set relativenumber
set mouse=a
set clipboard=unnamedplus
set sw=2
set completeopt+=menuone
set completeopt+=noinsert
set sua+=.js
set termguicolors
" Always show tab bar
" set showtabline=1

highlight VertSplit cterm=NONE

noremap <C-S> : update<CR>
noremap <C-Q> : quit<CR>

call plug#begin('~/.vim/plugged')
" File system explorer
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
" Status bar
Plug 'itchyny/lightline.vim'
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
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'rakr/vim-one'
call plug#end()

noremap <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=26
" No arrows
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"

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
      \   'gitbranch': 'FugitiveHead',
      \   'filename' : 'LightlineFilename'
      \ },
\ }

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

colorscheme palenight
