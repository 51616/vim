set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" original repos on github
Bundle 'EasyMotion'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'

"Bundle 'SuperTab'

" To install YouCompleteMe
"    cd ~/.vim/bundle/YouCompleteMe
"    ./install.sh --clang-completer
Bundle 'Valloric/YouCompleteMe.git'
"Bundle 'Shougo/neocomplcache.git'

Bundle 'surround.vim'
Bundle 'SearchComplete'
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'ctrlp.vim'
Bundle 'SingleCompile'
Bundle "myusuf3/numbers.vim"
Bundle 'Solarized'
Bundle 'Raimondi/delimitMate.git'
Bundle 'nathanaelkane/vim-indent-guides.git'
Bundle 'xolox/vim-session.git'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-fugitive.git'
Bundle 'corntrace/bufexplorer.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'dahu/vim-fanfingtastic.git'
Bundle 'ronny/birds-of-paradise.vim.git'
if executable('ctags')
  Bundle 'majutsushi/tagbar'
endif
Bundle 'L9'
Bundle 'vim-scripts/FuzzyFinder.git'
Bundle 'vim-scripts/LustyJuggler.git'
Bundle 'tsaleh/vim-matchit.git'
Bundle 'anders-/vim-indented-blocks.git'
Bundle 'kshenoy/vim-signature.git'
Bundle 'vim-scripts/mru.vim.git'


filetype plugin indent on     " required!

syntax on
set noswapfile
set smartindent
set autoindent
set cindent
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ignorecase
set smartcase
set gdefault
set wildmenu
set wildmode=list:longest,full
set incsearch
set display=lastline
set foldmethod=syntax
set autoread

colorscheme jellybeans

"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:EasyMotion_leader_key = '<leader>'
let g:Tex_CompileRule_dvi = 'pdflatex \\nonstopmode \\input\{$*\}'
let tex_no_error=1
let g:session_autosave = 'no'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
  "set guifont=Inconsolata\ 12
  set guifont=Menlo_for_Powerline:h12
  let g:Powerline_symbols = 'fancy'
else
  "set guifont=Menlo_Regular:h13
  set guifont=Menlo_for_Powerline:h12
  let g:Powerline_symbols = 'fancy'
endif
set laststatus=2

noremap Y y$
vnoremap y y`>
noremap ci,, T,ct,
noremap ci(, T(ct,
noremap ci,) T,ct)
nnoremap j gj
nnoremap k gk
nnoremap \r :SCCompileRun<CR>:silent botright cw 8<CR>
nnoremap \m :w<CR>:execute "try \| cd bin \| catch \| \| endtry"<CR>:make %:t:r<CR>:botright cw 8<CR>
nnoremap \[ :cp<Cr>
nnoremap \] :cn<Cr>
noremap -= =a}''
map [[ ?{<CR>w99[{
map ]] j0[[%/{<CR>

nmap <F8> :TagbarToggle<CR>

imap <c-l> <Plug>IMAP_JumpForward
nmap <c-l> <Plug>IMAP_JumpForward
map <c-j> <leader>j
map <c-k> <leader>k
map <c-f> <leader>f
map <c-g> <leader>F
nmap <SPACE> H\f
map <c-c> <plug>NERDCommenterToggle<c-m>
noremap <C-n> :NERDTreeToggle<CR>
"nmap <F2> :cd %:p:h<CR>:FufFile<CR>
nmap <F2> :FufFileWithCurrentBufferDir<CR>
imap <F2> <esc>:FufFileWithCurrentBufferDir<CR>
nmap <F3> :FufBuffer<CR>
imap <F3> <esc>:FufBuffer<CR>
nmap <F4> \lj
imap <F4> <esc>\lj

filetype plugin on

hi MatchParen guibg=NONE gui=underline

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set grepprg=grep\ -nH\ $*
