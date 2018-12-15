set nocompatible               " be iMproved

" Auto install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
else
  colorscheme gruvbox
endif

call plug#begin('~/.vim/plugged')

" original repos on github
Plug 'supasorn/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'wellle/targets.vim'
Plug 'Shougo/neocomplcache'

" Colorschemes
Plug 'xolox/vim-colorscheme-switcher'
Plug 'freeo/vim-kalisi'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'

Plug 'vim-scripts/a.vim' 
Plug 'Raimondi/delimitMate'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'
Plug 'dahu/vim-fanfingtastic' 

"if executable('ctags')
  "Plug 'majutsushi/tagbar'
"endif

Plug 'vim-scripts/L9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/mru.vim'
Plug 'mbbill/undotree'
Plug 'godlygeek/tabular'

Plug 'skammer/vim-css-color'
Plug 'othree/html5.vim'
Plug 'AndrewRadev/simple_bookmarks.vim'

Plug 'vim-scripts/ctags.vim'
Plug 'PeterRincker/vim-argumentative'
Plug 'skywind3000/asyncrun.vim'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
call plug#end()



autocmd GUIEnter * set visualbell t_vb=
set mouse=a
set noeb
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
"set colorcolumn=80

"set foldmethod=syntax
set scrolloff=3
set autoread
set encoding=utf-8
set laststatus=2
let os = substitute(system('uname'), "\n", "", "")

set go-=m
set go-=r
set go-=L
if os == "Linux"
  if match(system('uname -n'), "washington") >= 0
    set guifont=Inconsolata\ 9 
  elseif match(system('uname -n'), "raspberrypi") >= 0
    set guifont=Inconsolata\ 9 
  elseif match(system('uname -n'), "supasorn.mtv.corp.google.com") >= 0
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11 
  else
    "set guifont=Inconsolata\ for\ Powerline\ 10 
    set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11 
  endif
else
  "set guifont=Inconsolata:h9 
  set guifont=DejaVu_Sans_Mono_for_Powerline:h12
  "set guifont=Droid_Sans_Mono_for_Powerline:h12
endif
set completeopt-=preview

"----------------------------
""""""    Constants    """""" 
"----------------------------
if os == "Linux"
  let g:EchoFuncKeyNext = '<m-j>'
  let g:EchoFuncKeyPrev = '<m-k>'
else
  let g:EchoFuncKeyNext = '<D-j>'
  let g:EchoFuncKeyPrev = '<D-k>'
endif

let g:Powerline_symbols = 'fancy'

let g:session_autoload = 'no'
let g:colorscheme_switcher_define_mappings = 0
let g:colorscheme_switcher_exclude_builtins = 1

"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:EasyMotion_leader_key = '<leader>'
let g:Tex_CompileRule_dvi = 'pdflatex \\nonstopmode \\input\{$*\}'
let g:Imap_UsePlaceHolders = 0
let tex_no_error=1
let g:session_autosave = 'no'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

let g:fuf_fuzzyRefining = 1

let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_max_list = 15

" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 2


if !empty(glob('~/.vim/plugged/vim-airline'))
  let g:airline_powerline_fonts = 1
  let g:airline_theme="dark"
  let g:airline_section_z=airline#section#create_right(['%l'])
  let g:airline_section_warning=airline#section#create_right(['%c'])
  let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
endif

let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|\.class$'
let g:fuf_keyOpenVsplit = '<C-v>'

let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly

"let g:ConqueGdb_Continue = '<F5>'
"let g:ConqueGdb_Run = '<C-F5>'
"
let g:ConqueGdb_Next = '<F6>'
let g:ConqueGdb_Step = '<F7>'
let g:ConqueTerm_ToggleKey = ''

let g:netrw_silent = 1
"----------------------------
""""""    Remapping    """""" 
"----------------------------
"
inoremap <expr><C-h>     neocomplcache#undo_completion()
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><C-k> neocomplcache#close_popup()
"imap <C-TAB>  <Plug>(neocomplcache_snippets_force_expand_or_jump)

noremap Y y$
vnoremap y y`>
nnoremap j gj
nnoremap k gk

nnoremap =<SPACE> i <ESC>la <ESC>h

map <c-h> <esc>:A<CR>

" Map keyboard clipboard to k, mouse clipboard to m
map "k "+
map "m "*

"nnoremap \r :call FirstLineCompile()<CR>

command! -nargs=1 Gr call GrepCurrentDirectory(<f-args>)
nnoremap gr :grep '\b<cword>\b' %:p:h/*<CR>

nnoremap \m :w<CR>:execute "cd %:p:h \| try \| cd bin \| catch \| try \| cd ../bin \| catch \| endtry \| endtry"<CR>:make %:t:r<CR>
nnoremap \[ :cp<Cr>
nnoremap \] :cn<Cr>

noremap -= =a}``

map [[ ?{<CR>w99[{
map ]] j0[[%/{<CR>
vnoremap < <gv
vnoremap > >gv

nmap <F8> :TagbarToggle<CR>
nmap <F4> :MRU<CR>/
nmap <F9> :NextColorScheme<CR>
nmap <s-F9> :PrevColorScheme<CR>

nmap \p :call EasyMotion#SelectLinesPaste()<CR>

map <c-j> <leader>j
vmap <c-j> <leader>j
map <c-k> <leader>k
vmap <c-k> <leader>k
 
" ConqueGDB
map <leader>r :NERDTreeFind<cr>


nmap <SPACE> <leader>s
vmap <SPACE> <leader>s
map <c-c> <plug>NERDCommenterToggle<c-m>
noremap <C-n> :NERDTreeToggle<CR>

nmap <F5> :e %<CR>
imap <F5> <esc>:e %<CR>

"nmap <F2> :cd %:p:h<CR>:FufFile<CR>
nmap <F2> :FufFileWithCurrentBufferDir<CR>
imap <F2> <esc>:FufFileWithCurrentBufferDir<CR>
nmap <s-F2> :FufRenewCache<CR>
imap <s-F2> <esc>:FufRenewCache<CR>
nmap <F3> :FufBuffer<CR>
imap <F3> <esc>:FufBuffer<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>

nnoremap <silent> <leader>gs :Gstatus<CR>/modified:<CR>
nnoremap <silent> <leader>gc :Gcommit -m "auto commit"<CR>
nnoremap <silent> <leader>gp :Git push<CR>

command! OS OpenSession
command! SS SaveSession
command! RE RestartVim

" For jumping through function arguments
nmap <silent> ( :call JumpThroughParameter(-1)<CR>
nmap <silent> ) :call JumpThroughParameter(1)<CR>
"let blacklist = ['tex', 'txt', 'latex']
"au Filetype * if index(blacklist, &ft) < 0 | 
      "\ nmap <silent> ( :call JumpThroughParameter(-1)<CR>|
      "\ nmap <silent> ) :call JumpThroughParameter(1)<CR>| 
      "\ endif

nmap <F10> :call OpenRemoteOrLocal()<CR>


"----------------------------
""""""     autocmd     """""" 
"----------------------------

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete | set ts=2 | set sw=2
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd BufNewFile,BufReadPost *.ejs set filetype=html

au Filetype *.vim nmap <F5> :so %<CR>
au BufNewFile,BufRead *.cuh set filetype=cpp

" Auto open quickfix
autocmd QuickFixCmdPost [^l]* nested botright cwindow 8
autocmd QuickFixCmdPost    l* nested lwindow

au FileType cu,c,cpp let delimitMate_matchpairs = "(:),[:]"

filetype plugin on

hi MatchParen guibg=NONE gui=underline

au BufNewFile,BufRead *.as           setf actionscript

" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
autocmd BufWritePost *.cpp,*.h,*.c,*.cc call UpdateTags()

if filereadable(expand("~/.vim/vimrc.functions"))
  source ~/.vim/vimrc.functions
endif

augroup QuickfixStatus
    au! BufWinEnter quickfix setlocal 
        \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END
