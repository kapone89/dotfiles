call plug#begin('~/.config/nvim/plugged')
" Common deps
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'stevearc/dressing.nvim'
Plug 'MunifTanjim/nui.nvim'
" Plug 'MeanderingProgrammer/render-markdown.nvim'
" Plug 'nvim-tree/nvim-web-devicons'
" Plug 'echasnovski/mini.icons'

" Theme
Plug 'itchyny/lightline.vim'
" Plug 'joshdick/onedark.vim'
Plug 'navarasu/onedark.nvim'

Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim' " gS, gJ to split/join lines
Plug 'farmergreg/vim-lastplace' " reopen files at the last edit position
Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'tomtom/tcomment_vim' " gc{motion} to comment, gcc to toggle
Plug 'tpope/vim-abolish' " cru, crs, etc. to change case
" Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise' " auto close Ruby blocks
Plug 'tpope/vim-surround' " change surrounding quotes, brackets, etc.
Plug 'tpope/vim-unimpaired' " add new lines using [SPAPE and ]SPACE
" Plug 'vifm/vifm.vim' " file manager
" Plug 'w0rp/ale'
Plug 'yuttie/comfortable-motion.vim'
Plug 'gioele/vim-autoswap'
Plug 'posva/vim-vue'
Plug 'tpope/vim-rsi'
Plug 'bkad/CamelCaseMotion'
Plug 'sickill/vim-pasta' " auto indent pasted text
Plug 'tpope/vim-fugitive'
" Plug 'kassio/neoterm'
Plug 'svermeulen/vim-subversive' " gr, grr to substitute
Plug 'junegunn/vim-peekaboo'
Plug 'leafgarland/typescript-vim'
Plug 'slim-template/vim-slim'
Plug 'elixir-editors/vim-elixir'
Plug 'luochen1990/rainbow' " rainbow parentheses
Plug 'mkotha/conflict3' " 3-way merge conflict resolution
Plug 'dyng/ctrlsf.vim' " CtrlSF search
Plug 'stevearc/oil.nvim' " built-in file manager

" AI tools
Plug 'github/copilot.vim'
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'tag': '*' }
" Plug 'Exafunction/codeium.vim'
" Plug 'zbirenbaum/copilot.lua'
" Plug 'pasky/claude.vim'

" Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Text objects
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'tek/vim-textobj-ruby'
Plug 'michaeljsmith/vim-indent-object'

" Plug 'haya14busa/vim-asterisk'
call plug#end()

" set hidden
highlight ColorColumn ctermbg=8
highlight MatchParen cterm=bold ctermbg=darkgrey ctermfg=none
highlight Search cterm=underline,bold ctermbg=darkgrey ctermfg=none
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
" nnoremap <leader>f :Vifm<CR>
nnoremap <leader>f :Oil<CR>
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
" nnoremap h :echoe "Use w e b"<CR>
" nnoremap l :echoe "Use w e b"<CR>
:command NoMoreWQ :echoe "Use ZZ"
:cabbrev wq <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'NoMoreWQ' : 'wq')<CR>

let g:no_cecutil_maps = 1

" Coc
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

" disabled coc extensions

imap <C-l> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gR <Plug>(coc-references)

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

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'gitbranch', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineFilename',
      \ },
      \ }

" diable mouse integration
set mouse=

" Theme
let g:onedark_config = {
    \ 'style': 'warmer',
\}
colorscheme onedark

" lua << EOF
"   require("copilot").setup({})
" EOF

lua require("CopilotChat").setup { debug = true, model = 'claude-3.5-sonnet' }
" lua << EOF
"   require('avante').setup({
"     provider = 'copilot',
"     copilot = {
"       model = 'claude-3.7-sonnet',
"     }
"   })
" EOF

" Oil file manager
lua require("oil").setup()
nmap - :Oil<CR>

" Toggleterm
lua require("toggleterm").setup()
