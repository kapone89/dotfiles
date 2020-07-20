call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'brooth/far.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'maximbaz/lightline-ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vifm/vifm.vim'
Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'gioele/vim-autoswap'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'rhysd/vim-textobj-ruby'
Plug 'tek/vim-textobj-ruby'

" Plug 'haya14busa/vim-asterisk'
call plug#end()


" set hidden
highlight ColorColumn ctermbg=8
set clipboard=unnamedplus
set colorcolumn=80
" set cursorline
set iskeyword+=-
set list
set number
set relativenumber
set ruler
set scrolloff=3
set showbreak=↪
set undofile
set wrap linebreak

" Search
" set gdefault
set hlsearch
set ignorecase
set inccommand=split
set smartcase

" Indentation
set copyindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Completion
" set completeopt=menu,menuone,preview,noselect,noinsert

" Bindings
let mapleader=" "
nnoremap <leader>f :Vifm<CR>
nnoremap <C-j> :Files<Cr>
nnoremap <C-k> :History<Cr>
nnoremap <leader>/ :Rg<Space>
vmap <silent> <leader>/ y:Rg<space><C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
noremap <leader>d "_d
nnoremap <leader>s :update<CR>
" nnoremap <leader>q :q<CR>
" nnoremap <leader>a :e #0<CR>
nnoremap <leader>r :History:<CR>
nnoremap <leader>c :Commands<CR>
" map <leader>ciw <Plug>(asterisk-z*)cgn
nnoremap <leader>ciw *Ncgn
nnoremap <leader>h :noh<CR>

" Macros
nnoremap <leader>q @q
let @r = '0df/t#d$' " clean rspec output

" Marks
nnoremap mm mM
" nnoremap <leader>m 'M'.$
nnoremap <leader>m 'M

" temp
nnoremap h :echoe "Use w e b"<CR>
nnoremap l :echoe "Use w e b"<CR>

let g:no_cecutil_maps = 1

let g:coc_global_extensions = [
  \ 'coc-actions',
  \ 'coc-json',
  \ 'coc-snippets',
  \ 'coc-solargraph',
  \ 'coc-spell-checker',
  \ 'coc-yaml',
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

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

