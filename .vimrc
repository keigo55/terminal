"�ǥ�����
"{{{
"vim���طʤ򥿡��ߥʥ�Ȥ�����"
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
"vim�Υ��顼�ץ饰����"
colorscheme jellybeans
"ʸ�����顼ON"
syntax on
"���ֹ�ɽ��"
set number
" status line
set laststatus=2 " always show
"}}}

"ʸ��������
"{{{
 "�ե�����񤭹��߻���ʸ��������
set fenc=utf-8
"�ե������ɤ߹��߻���ʸ��������
set fileencodings=iso=utf-8,2202-jp,euc-jp,sjis
set fileformats=dos,unix,mac
"}}}

"���󥷥ǥ��
"{{{
"��ư����ǥ�ȤǤ������
set shiftwidth=4
"���̾�ǥ���ʸ����������"
set tabstop=4
set expandtab
set autoindent
set smartindent
"}}}

"���ޥ���ѹ�
"{{{
nnoremap <F3> :noh<CR>
noremap O :<C-u>call append(expand('.'), '')<Cr>j"����"
nnoremap sj <C-w>j"���̲���ư"
nnoremap sk <C-w>k"���̱���ư"
nnoremap sl <C-w>l"���̾��ư"
nnoremap sh <C-w>h"���̺���ư"
nnoremap sw <C-w>w"���β��̤˰�ư"

nnoremap sJ <C-w>J"���̤��Ȳ���ư"
nnoremap sK <C-w>K"���̤��Ⱦ��ư"
nnoremap sL <C-w>L"���̤��ȱ���ư"
nnoremap sH <C-w>H"���̤��Ⱥ���ư"
nnoremap sr <C-w>r"���̤β�ž"

nnoremap s< <C-w><"���̺�����"
nnoremap s> <C-w>>"���̱�����"
nnoremap s+ <C-w>;"���̾����"
nnoremap s- <C-w>-"���̲�����"

"��̤μ�ư�䴰"
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
"}}}

"�ץ饰����Υ��硼�ȥ��åȥ���
"{{{
nnoremap <Space>t :NERDTree<CR>
nnoremap <Space>i :IndentGuidesToggle<CR>
"}}}

"��ư���ν������
"{{{
"vim�ǥ�󥯤������Ƥ��̤Υ�����ɥ��˥ڡ����Ȥ���
set clipboard=unnamed,autoselect
set foldmethod=marker
"set spelllang+=cjk "���ڥ�����å�(���ܸ����)
"set spell         "���ڥ�����å���ǽ��ON
set hlsearch       "����θ����ѥ�����¸�ߤ���Ȥ�������˥ޥå�����ƥ����Ȥ򤹤٤ƶ�Ĵɽ������
set wrap           "����λ��ϡ�������ɥ�����Ķ�������ޤ��֤�
set backspace=indent,eol,start  "�Хå����ڡ����ǲ��Ǥ�ä���褦�ˤ���
set backspace=2    "���Ԥ����Ǥ���褦�ˤ���
set display=lastline " Show all even if there is many characters in one line.
set swapfile       " use swap file
set noswapfile       " don't use swap file
set nobackup       "�ե�������񤭤������˥Хå����åפ���ʤ�
set nowritebackup  "��������Ǥʤ��¤ꡢ�Хå����åפϾ�񤭸��������
set history=100    " Keep 100 lines of command line history

set incsearch      " Do incremental searching
set ignorecase     " �����ѥ�����ˤ�������ʸ���Ⱦ�ʸ������̤��ʤ�
set smartcase      " �����ѥ����󤬤�ʸ����ޤ�Ǥ�����ignorecase���񤭤���
set nowrapscan     " �������ե����������ޤǿʤ���顢�ե�������Ƭ����ƤӸ���
set infercase      " Ignore case for completion

set ruler          " �������뤬�����ܤβ����ܤˤ��뤫ɽ��
set showcmd        " ���ޥ�ɤ���̤κǲ��Ԥ�ɽ��
set novisualbell   " �ӡ��ײ����٤ƻ��ɽ�����ʤ�
set scrolloff=10  " Show cursor around the middle
set scroll=0       " Number of lines to scroll with C-U/C-D (0 for half window)
set ambiwidth=double  " For UTF-8, width for East Asian Characters. It doesn't work at specific terminals?(iTerm, putty, etc..?)
set cmdheight=1    " ��å�����ɽ�����1�Գ���
set showmatch      " ��̤��Ĥ����Ƥ뤫�γ�ǧ
set matchtime=1    " 0.1*matchtime sec for showing matching pattern (default:5)
set pumheight=20   " length of popup menu for completion
set splitright     " New window is right
" bash-like tab completion
set wildmode=list:longest
set wildmenu
" Folding
set foldnestmax=1
set foldlevel=100 "open at first
set hidden          "��¸����Ƥ��ʤ��ե����뤬������Ǥ��̤Υե�����򳫤����Ȥ��Ǥ���
set switchbuf=useopen" Jump to the first opened window
set virtualedit=all"ʸ����̵���Ȥ���˥���������ư�Ǥ���褦�ˤ���
set synmaxcol=1000 "URL����Longline�������vim�������Τ�1000ʸ���ޤǤ�����
                   "�ǥե���Ȥǰ��3000ʸ�������ꤵ��Ƥ�
function! s:remove_space_in_last_line()  "�ǽ��Ԥζ����ä�
    if getline('$') == ""
           $delete _
    endif
endfunction
autocmd BufWritePre * :%s/\s\+$//ge      "�����ä�
"}}}

"�ץ饰����ν������
"{{{
" vim-indent-guides
" Vim ��ư�� vim-indent-guides ��ư��ư
let g:indent_guides_enable_on_vim_startup=1
" �����ɤ򥹥����Ȥ��륤��ǥ�Ȥ���
let g:indent_guides_start_level=2
" ��ư���顼̵��
let g:indent_guides_auto_colors=0
" ������ܤΥ���ǥ�Ȥο�
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=gray
" �������ܤΥ���ǥ�Ȥο�
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray
" �����ɤ���
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
"�������äƤ������
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

"��ʬ���ɲä������
call dein#add('itchyny/lightline.vim') "���ơ������饤���ɽ������
call dein#add('nathanaelkane/vim-indent-guides') "���󥷥ǥ��ʬ����䤹��
call dein#add('scrooloose/nerdtree')      "�ĥ꡼ɽ��
"call dein#add('Shougo/neocomplcache.vim') "�Ť��䴰�ץ饰����
call dein#add('Shougo/neocomplete.vim')    "�䴰�ץ饰���󡣽Ť�����̵��
call dein#add('bronson/vim-trailing-whitespace') "̵�Ѥ����ä����ڡ����Ļ벽
call dein#add('davidhalter/jedi-vim')            "python���䴰�ץ饰����
call dein#add('scrooloose/syntastic')  "ʸˡ�����å�
"call dein#add('thinca/vim-quickrun')  "����ѥ����vim��ǹԤ�
call dein#add('Shougo/vimproc.vim')   "��Ʊ������(�����������ޤ�ư���ʤ��ʤ뤿��)��ɬ��
call dein#add('Shougo/vimshell.vim')   "vim����shell��ư����
call dein#add('tmhedberg/SimpylFold')   "python�ޤ���ߵ�ǽ
call dein#add('Konfekt/FastFold')   "python�䴰�ǥ��顼���Ф��������줿
call dein#add('sudar/vim-arduino-syntax')   "Arduino��ɬ��
call dein#add('OmniSharp/omnisharp-vim')   "unity,C#��ɬ��
call dein#add('justmao945/vim-clang')   "C���䴰
call dein#add('Shougo/neoinclude.vim')  "C���䴰��
call dein#add('Shougo/vimproc.vim', {'build': 'make'})  "C���䴰��

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#end()

filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
   call dein#install()
endif
"}}}

"neocomplete(�䴰�ץ饰��������)
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

"���ơ������饤������
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

"gcc����
"{{{
"gcc�ϻȤ��뤬�ǥХå����˸�ư���Τ�gcc -g�ǥ���ѥ��뤹��
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

"python����
"{{{
"����ѥ���---------------------------
nmap <F6> :!/cygdrive/C/Users/Keigo/Anaconda3/python.exe %<CR>
"�ǥХå�(windows��path���꤬�Ǥ��ʤ��Ƶ�ư���ʤ�)
"nmap <F12> :!/cygdrive/c/Python27/Lib/pdb.py %<CR>
"-------------------------------------

"jedi-vim(�䴰)---------------------------
let g:jedi#auto_initialization = 1
let g:jedi#rename_command = "<leader>R"
let g:jedi#popup_on_dot = 1
autocmd FileType python let b:did_ftplugin = 1
"docstring��ɽ�����ʤ�
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
" let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

"python��������
"�䴰����ɽ���ѥ���������
let g:neocomplete#force_omni_input_patterns.python = '[^. \t]\.\w*'
" ���񻲾�����
let g:neocomplete#sources#dictionary#dictionaries = {
\   'python': $HOME . '/.vim/dicts/python.dict',
\ }
"------------------------------------------

"syntastic"-------------------------------
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
"let g:syntastic_python_checkers = ['flake8']
"syntastic�������顼̵���ʣ�����ꤹ����ϥ���޶��ڤ��
let g:syntastic_python_flake8_args = '--ignore="import seaborn as sns"'
"----------------------------------------

"}}}

" ��󥯤�����Τ򥯥�åץܡ��ɤȶ�ͭ����
"{{{
if system('uname -r') =~ "Microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@")
    augroup END
endif
"}}}
