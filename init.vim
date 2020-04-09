call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
" Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
" Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
Plug 'kana/vim-textobj-user'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'ycm-core/YouCompleteMe'
Plug 'brooth/far.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'vifm/vifm.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'craigemery/vim-autotag'

Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-bundler'

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
set completeopt=menu,menuone,preview,noselect,noinsert

" Bindings
" map <C-n> :NERDTreeToggle<CR>
" let g:NERDTreeQuitOnOpen = 1
let mapleader=" "
nnoremap <leader>f :Vifm<CR>
nnoremap <C-p> :Files<Cr>
nnoremap <leader>t :Tags<Cr>
nnoremap <C-h> :History<Cr>
nnoremap <leader>g :Rg<Space>
nnoremap <leader>d "_d

let g:UltiSnipsExpandTrigger="<c-l>"
let g:ycm_collect_identifiers_from_tags_files=1
