call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'brooth/far.vim'
Plug 'farmergreg/vim-lastplace'
Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'maximbaz/lightline-ale' " lightline indicates only. not used
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vifm/vifm.vim'
" Plug 'w0rp/ale'
Plug 'wellle/targets.vim'
Plug 'yuttie/comfortable-motion.vim'
" Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'gioele/vim-autoswap'
Plug 'posva/vim-vue'
Plug 'tpope/vim-rsi'
Plug 'bkad/CamelCaseMotion'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-fugitive'
" Plug 'kassio/neoterm'
Plug 'svermeulen/vim-subversive'
Plug 'junegunn/vim-peekaboo'
Plug 'leafgarland/typescript-vim'
Plug 'slim-template/vim-slim'
Plug 'elixir-editors/vim-elixir'
Plug 'github/copilot.vim'
Plug 'luochen1990/rainbow'
Plug 'mkotha/conflict3'
Plug 'dyng/ctrlsf.vim'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'tek/vim-textobj-ruby'

" Plug 'haya14busa/vim-asterisk'
call plug#end()


" set hidden
highlight ColorColumn ctermbg=8
highlight MatchParen cterm=bold ctermbg=none ctermfg=none
highlight Search cterm=underline,bold ctermbg=Black ctermfg=none
set clipboard=unnamedplus
set colorcolumn=80
" set cursorline
set iskeyword+=-
set list
set number
" set relativenumber
set ruler
set scrolloff=3
set showbreak=↪
set undofile
set wrap linebreak
set lazyredraw            " improve scrolling performance when navigating through large results

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
" nnoremap <leader>/ :Rg<Space>
" nnoremap <leader>/ :CocSearch -F<Space>
" vmap <silent> <leader>/ y:Rg<space><C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
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
:command NoMoreWQ :echoe "Use ZZ"
:cabbrev wq <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'NoMoreWQ' : 'wq')<CR>

let g:no_cecutil_maps = 1

let g:coc_global_extensions = [
  \ 'coc-actions',
  \ 'coc-json',
  \ 'coc-snippets',
  \ 'coc-solargraph',
  \ 'coc-spell-checker',
  \ 'coc-yaml',
  \ 'coc-tsserver',
  \ 'coc-tabnine',
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
imap <C-l> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Far
let g:far#source = "rgnvim"
let g:far#window_layout = "current"
let g:far#default_file_mask = "**/*.*"

" CamelCaseMotion.vim
let g:camelcasemotion_key = '<leader>'

" vim-subversive
nmap gr <plug>(SubversiveSubstitute)
nmap grr <plug>(SubversiveSubstituteLine)

" rainbow pharentesis
let g:rainbow_active = 1

" ctrlsf.vim
nmap <leader>/ <Plug>CtrlSFPrompt
vmap <leader>/ <Plug>CtrlSFVwordPath
nmap <leader>k :CtrlSFToggle<CR>
" nmap <leader>j :CtrlSFOpen <CR> :CtrlSF<Space>
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_auto_focus = { "at": "start" }

" terminal
" :tnoremap <Esc> <C-\><C-n>

" let g:ale_virtualtext_cursor = 1
