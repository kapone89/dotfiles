call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'brooth/far.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'vifm/vifm.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

Plug 'nelstrom/vim-textobj-rubyblock'

call plug#end()


" set background=light
set list
set number
set ruler
set cursorline
set colorcolumn=80
highlight ColorColumn ctermbg=8
set relativenumber
set scrolloff=3
set showbreak=↪
set wrap linebreak
set iskeyword+=-
" set hidden
set undofile
set clipboard=unnamedplus

" Search
set hlsearch
set ignorecase
set smartcase
" set gdefault
set inccommand=split

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set copyindent

" Completion
" set completeopt=menu,menuone,preview,noselect,noinsert

" Bindings
" map <C-n> :NERDTreeToggle<CR>
" let g:NERDTreeQuitOnOpen = 1
let mapleader=" "
nnoremap <leader>f :Vifm<CR>
nnoremap <C-j> :Files<Cr>
" nnoremap <leader>o :Files<Cr>
" nnoremap <leader>t :History<Cr>
nnoremap <C-k> :History<Cr>
nnoremap <leader>g :Rg<Space>
noremap <leader>d "_d
nnoremap <leader>s :update<CR>
nnoremap <leader>a :e #0<CR>
nnoremap <leader>r :History:<CR>
nnoremap <leader>c :Commands<CR>

let g:no_cecutil_maps = 1

let g:coc_global_extensions = [
  \ 'coc-snippets'
  \ ]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
imap <C-l> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" let g:ycm_language_server = [
"   \   {
"   \     'name': 'ruby',
"   \     'cmdline': [ 'solargraph', 'stdio' ],
"   \     'filetypes': [ 'ruby' ],
"   \   },
"   \ ]

