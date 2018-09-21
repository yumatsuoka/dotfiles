"dein Scripts(https://qiita.com/delphinus/items/00ff2c0ba972c6e41542)-----------------------------

"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein')
"let s:dein_dir = expand('~/.vim/dein/repos/github.com')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . 'repos/github.com/Shougo/dein.vim'
"let s:dein_repo_dir = s:dein_dir . '/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  let g:rc_dir    = expand('~/')
  let s:toml      = g:rc_dir . '.dein.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable
"End dein Scripts-------------------------

"ファイルのエンコード
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileformats=unix,dos,mac

"スクロールする時にしたが見えるようにする
set scrolloff=3

"行番号表示
set number

"ターミナルのタイトルバー
set title

"入力しているコマンドを右下表示
set showcmd

"カーソルの位置情報を表示
set ruler

"カーソルラインの表示
set cursorline

"シンタックスハイライト
syntax on

"ステータス行表示件数の変更
set laststatus=2
set showmode

"ステータス行にいろんな情報を表示
"ファイルナンバー表示
set statusline=[%n]
"ホスト名表示
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
"ファイル名表示
set statusline+=%<%F

" 対応する括弧やブレースを表示する
set showmatch

"対応かっこの表示秒数を３秒にする
set matchtime=3

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"行番号の色
highlight LineNr ctermfg=darkyellow

" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
""""""""""""""""""""""""""""""

"vimインデントの幅
set shiftwidth=4

"tab幅の指定
set tabstop=4

"タブ入力を複数の空白入力に書き換え
set expandtab

"shiftwidthの数だけインデントする
set smarttab

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" 改行時に前の行のインデントを継続する
set autoindent

""""""""""""""""""""""""""""""""""""""""

"マウス操作有効
"set mouse=a

"Ctrl+j入力でインサートモードから抜ける
inoremap <silent> jj <Esc>
"inoremap <C-j> <Esc>

""""""""""""""""""""""""""""""""""""""""

"検索時などに大文字小文字無視
set ignorecase

"検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch

"検索時などに大文字ではじめたら大文字小文字無視しない
set smartcase

"検索文字をハイライト
set hlsearch

"インクリメンタルサーチを行う
set wrapscan

""""""""""""""""""""""""""""""""""""""""
"画面分割系のコマンド割り当て。sキーをつぶした。

nnoremap s  <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')


" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif


"----------------------------------------------------------
" neocomplete・neosnippetの設定
"----------------------------------------------------------
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
" 3文字以上の単語に対して補完を有効にする
let g:neocomplete#min_keyword_length = 3
" 区切り文字まで補完する
let g:neocomplete#enable_auto_delimiter = 1
" 1文字目の入力から補完のポップアップを表示
let g:neocomplete#auto_completion_start_length = 1
" バックスペースで補完のポップアップを閉じる
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
" エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"----------------------------------------------------------

"インデントや空白をバックスペースで削除可能にする
set backspace=indent,eol,start

"タブ補完
"set wildmenu

" vimでヤンクした内容をクリップボードにコピー
set clipboard+=unnamed,unnamedplus,autoselect

nnoremap <silent><C-t> :NERDTreeToggle<CR>

