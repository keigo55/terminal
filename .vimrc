"デザイン
"{{{
"vimの背景をターミナルとそろえる"
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
"vimのカラープラグイン"
colorscheme jellybeans
"文字カラーON"
syntax on
"行番号表示"
set number
" status line
set laststatus=2 " always show
"}}}

"文字コード
"{{{
 "ファイル書き込み時の文字コード
set fenc=utf-8
"ファイル読み込み時の文字コード
set fileencodings=iso=utf-8,2202-jp,euc-jp,sjis
set fileformats=dos,unix,mac
"}}}

"インシデント
"{{{
"自動インデントでずれる幅
set shiftwidth=4
"画面上でタブ文字が占める幅"
set tabstop=4
set expandtab
set autoindent
set smartindent
"}}}

"コマンド変更
"{{{
nnoremap <F3> :noh<CR>
noremap O :<C-u>call append(expand('.'), '')<Cr>j"改行"
nnoremap sj <C-w>j"画面下移動"
nnoremap sk <C-w>k"画面右移動"
nnoremap sl <C-w>l"画面上移動"
nnoremap sh <C-w>h"画面左移動"
nnoremap sw <C-w>w"次の画面に移動"

nnoremap sJ <C-w>J"画面ごと下移動"
nnoremap sK <C-w>K"画面ごと上移動"
nnoremap sL <C-w>L"画面ごと右移動"
nnoremap sH <C-w>H"画面ごと左移動"
nnoremap sr <C-w>r"画面の回転"

nnoremap s< <C-w><"画面左拡大"
nnoremap s> <C-w>>"画面右拡大"
nnoremap s+ <C-w>;"画面上拡大"
nnoremap s- <C-w>-"画面下拡大"

"括弧の自動補完"
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
"}}}

"プラグインのショートカットキー
"{{{
nnoremap <Space>t :NERDTree<CR>
nnoremap <Space>i :IndentGuidesToggle<CR>
"}}}

"起動時の初期設定
"{{{
"vimでヤンクした内容を別のウィンドウにペーストする
set clipboard=unnamed,autoselect
set foldmethod=marker
"set spelllang+=cjk "スペルチェック(日本語除外)
"set spell         "スペルチェック機能をON
set hlsearch       "前回の検索パターンが存在するとき、それにマッチするテキストをすべて強調表示する
set wrap           "オンの時は、ウィンドウ幅を超えたら折り返す
set backspace=indent,eol,start  "バックスペースで何でも消せるようにする
set backspace=2    "改行を削除できるようにする
set display=lastline " Show all even if there is many characters in one line.
set swapfile       " use swap file
set noswapfile       " don't use swap file
set nobackup       "ファイルを上書きする前にバックアップを作らない
set nowritebackup  "↑がオンでない限り、バックアップは上書き後削除される
set history=100    " Keep 100 lines of command line history

set incsearch      " Do incremental searching
set ignorecase     " 検索パターンにおいて大文字と小文字を区別しない
set smartcase      " 検索パターンがお文字を含んでいたらignorecaseを上書きする
set nowrapscan     " 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set infercase      " Ignore case for completion

set ruler          " カーソルが何行目の何列目にあるか表示
set showcmd        " コマンドを画面の最下行に表示
set novisualbell   " ビープ音すべて視覚表示しない
set scrolloff=10  " Show cursor around the middle
set scroll=0       " Number of lines to scroll with C-U/C-D (0 for half window)
set ambiwidth=double  " For UTF-8, width for East Asian Characters. It doesn't work at specific terminals?(iTerm, putty, etc..?)
set cmdheight=1    " メッセージ表示欄を1行確保
set showmatch      " 括弧が閉じられてるかの確認
set matchtime=1    " 0.1*matchtime sec for showing matching pattern (default:5)
set pumheight=20   " length of popup menu for completion
set splitright     " New window is right
" bash-like tab completion
set wildmode=list:longest
set wildmenu
" Folding
set foldnestmax=1
set foldlevel=100 "open at first
set hidden          "保存されていないファイルがある時でも別のファイルを開くことができる
set switchbuf=useopen" Jump to the first opened window
set virtualedit=all"文字が無いところにカーソルを移動できるようにする
set synmaxcol=1000 "URL等のLonglineがあるとvimが落ちるので1000文字までに設定
                   "デフォルトで一行3000文字に設定されてる
function! s:remove_space_in_last_line()  "最終行の空白を消す
    if getline('$') == ""
           $delete _
    endif
endfunction
autocmd BufWritePre * :%s/\s\+$//ge      "空白を消す
"}}}

"プラグインの初期設定
"{{{
" vim-indent-guides
" Vim 起動時 vim-indent-guides を自動起動
let g:indent_guides_enable_on_vim_startup=1
" ガイドをスタートするインデントの量
let g:indent_guides_start_level=2
" 自動カラー無効
let g:indent_guides_auto_colors=0
" 奇数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=gray
" 偶数番目のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
" ガイドの幅
let g:indent_guides_guide_size = 1

"}}}

"dein Scripts
"{{{
if &compatible
   set nocompatible               " Be iMproved
endif

set runtimepath^=/home/keigo/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin('/home/keigo/.cache/dein')

" Let dein manage dein
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
"元々入っていたもの
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

"自分で追加したもの
call dein#add('itchyny/lightline.vim') "ステータスラインの表示強化
call dein#add('nathanaelkane/vim-indent-guides') "インシデント分かりやすく
call dein#add('scrooloose/nerdtree')      "ツリー表示
"call dein#add('Shougo/neocomplcache.vim') "古い補完プラグイン
call dein#add('Shougo/neocomplete.vim')    "補完プラグイン。重いから無効
call dein#add('bronson/vim-trailing-whitespace') "無用に入ったスペース可視化
call dein#add('davidhalter/jedi-vim')            "pythonの補完プラグイン
call dein#add('scrooloose/syntastic')  "文法チェック
"call dein#add('thinca/vim-quickrun')  "コンパイルをvim上で行う
call dein#add('Shougo/vimproc.vim')   "非同期処理(処理が終わるまで動けなくなるため)に必要
call dein#add('Shougo/vimshell.vim')   "vimからshellを起動する
call dein#add('tmhedberg/SimpylFold')   "python折り畳み機能
call dein#add('Konfekt/FastFold')   "python補完でエラーが出たから入れた
call dein#add('sudar/vim-arduino-syntax')   "Arduinoで必要
call dein#add('OmniSharp/omnisharp-vim')   "unity,C#で必要
call dein#add('justmao945/vim-clang')   "Cの補完
call dein#add('Shougo/neoinclude.vim')  "Cの補完用
call dein#add('Shougo/vimproc.vim', {'build': 'make'})  "Cの補完用

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#end()

filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
   call dein#install()
endif
"}}}

"neocomplete(補完プラグイン設定)
"{{{
"neocomplete.vim"
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
" return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : \<Space>"


" 'Shougo/neocomplete.vim' {{{
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"""}}}

" 'justmao945/vim-clang' {{{

" disable auto completion for vim-clanG
let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1

" default 'longest' can not work with neocomplete
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

let g:clang_exec = 'clang'
let g:clang_format_exec = 'clang-format'

let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '
  \ -std=c++1z
  \ -stdlib=libc++
  \ -pedantic-errors
  \ '
" }}}

"}}}

"ステータスライン設定
"{{{
let g:lightline = {
        \ 'colorscheme': 'seoul256',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'right': [ [ 'syntastic', 'lineinfo' ],
        \              [ 'percent' ], [ 'winform' ],
        \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'branch', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'linetotal': 'LightLineTotal',
        \   'modified': 'LightLineModified',
        \   'readonly': 'LightLineReadonly',
        \   'fugitive': 'LightLineFugitive',
        \   'filename': 'LightLineFilename',
        \   'filepath': 'LightLineFilepath',
        \   'fileformat': 'LightLineFileformat',
        \   'filetype': 'LightLineFiletype',
        \   'fileencoding': 'LightLineFileencoding',
        \   'mode': 'LightLineMode',
        \   'winform': 'LightLineWinform'
        \ },
        \ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
        \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
        \ 'component_expand': {
        \   'syntastic': 'SyntasticStatuslineFlag',
        \ },
        \ 'component_type': {
        \   'syntastic': 'error',
        \ }
        \ }
let g:lightline.component = {
      \ 'lineinfo': '%3l[%L]:%-2v'}
function! LightLineWinform()
  return winwidth(0) > 50 ? 'w' . winwidth(0) . ':' . 'h' . winheight(0) : ''
endfunction

function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? "?" : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%') && winwidth(0) <=120 ? expand('%:t') : winwidth(0) >120 ? expand('%:p') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFilepath()
  return winwidth(0) <=120 ? expand('%:h') : ''
endfunction

function! LightLineFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head') && winwidth(0) > 55
      let _ = fugitive#head()
      return strlen(_) ? '? '._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 80 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 60 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 30 ? lightline#mode() : ''
endfunction

function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction
"}}}

"gcc設定
"{{{
"gccは使えるがデバック時に誤動作するのでgcc -gでコンパイルする
command! Run call s:Run()
nmap <F5> :Run<CR>
function! s:Run()
  let e = expand("%:e")
  if e == "c"
    :Gcc
  endif
  if e == "py"
    :Python
  endif
  if e == "f90" || e == "f95"
    :Gfortran
  endif
endfunction

command! Python call s:Python()
function! s:Python()
  :!python %
endfunction

command! Gcc call s:Gcc()
function! s:Gcc()
  :!gcc -g % -o %:r.exe
endfunction

command! Gfortran call s:Gfortran()
function! s:Gfortran()
  if has("win32") || has("win64")
    :!gfortran % -o %:r.exe
    :!%:r.exe
  else
    :!gfortran % -o %:r.out
    :!%:r.out
  endif
endfunction
"}}}

"python設定
"{{{
"コンパイル---------------------------
nmap <F6> :!/cygdrive/C/Users/Keigo/Anaconda3/python.exe %<CR>
"デバッグ(windowsのpath指定ができなくて起動しない)
"nmap <F12> :!/cygdrive/c/Python27/Lib/pdb.py %<CR>
"-------------------------------------

"jedi-vim(補完)---------------------------
let g:jedi#auto_initialization = 1
let g:jedi#rename_command = "<leader>R"
let g:jedi#popup_on_dot = 1
autocmd FileType python let b:did_ftplugin = 1
"docstringは表示しない
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
" let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

"python辞書設定
"補完候補表示パターン設定
let g:neocomplete#force_omni_input_patterns.python = '[^. \t]\.\w*'
" 辞書参照設定
let g:neocomplete#sources#dictionary#dictionaries = {
\   'python': $HOME . '/.vim/dicts/python.dict',
\ }
"------------------------------------------

"syntastic"-------------------------------
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
"let g:syntastic_python_checkers = ['flake8']
"syntastic一部エラー無視（複数指定する場合はカンマ区切り）
let g:syntastic_python_flake8_args = '--ignore="import seaborn as sns"'
"----------------------------------------

"}}}

" ヤンクしたものをクリップボードと共有する
"{{{
if system('uname -r') =~ "Microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@")
    augroup END
endif
"}}}
