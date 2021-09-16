"===bismillah===>
syntax on 
set number 
set noswapfile 
set hlsearch
set ignorecase
set incsearch


"===plugin===>
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
call plug#end()


"===konfigurasi coc===>
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
if exists('*complete_info')
  inoremap <silent><expr> <cr> complete_info(['selected'])['selected'] != -1 ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

autocmd FileType json syntax match Comment +\/\/.\+$+


"===template html===>
nnoremap <F9> :r /home/keju/.vim/template/html.html


"===exit dari insert mode===>
inoremap jk <ESC>

"===savevimassudo===>
command! -nargs=0 Sw w !sudo tee % > /dev/null

"===konfigurasi ALE===>
let g:ale_disable_lsp = 1
let g:airline#extensions#ale#enabled = 1

"===konfigurasifolding===>
let g:SimpylFold_docstring_preview = 1


"===konfigurasipython===>
"indentation
au BufNewFile,BufRead *.py 
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"flagging unnecessary whitespac
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"setutf-8 support
set encoding=utf-8
"make your code look pretty
let python_highlight_all=1
syntax on
"System Clipboard
set clipboard=unnamed

"===konfigurasifullstackdevelopment===>
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

