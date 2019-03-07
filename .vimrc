"Start dein Scripts-------------------------
" プラグインが実際にインストールされるディレクトリ
"set pyxversion=3
let g:python_host_prog = $PYENV_ROOT.'/versions/anaconda3-5.3.1/bin/python'
let s:dein_dir = expand('~/.vim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . 'repos/github.com/Shougo/dein.vim'

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
  "call dein#load_toml(s:toml,      {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax on
"End dein Scripts-------------------------

"ファイルのエンコード
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileformats=unix,dos,mac
set fenc=utf-8
set ff=unix
set ambiwidth=double " □や○文字が崩れる問題を解決

"行番号表示
set number

"カーソルラインの表示
set cursorline

"ターミナルのタイトルバー
set title

"入力しているコマンドを右下表示
set showcmd

"コマンドのタブ補完
set wildmenu

"カーソルの位置情報を表示
set ruler

"ステータス行表示件数の変更
set laststatus=2
set showmode

" 対応する括弧やブレースを表示する
set showmatch

"対応かっこの表示秒数を３秒にする
set matchtime=3

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"スクロールする時にしたが見えるようにする
set scrolloff=2

"行番号の色
highlight LineNr ctermfg=darkyellow

"vimインデントの幅
set shiftwidth=4

"tab幅の指定
set tabstop=4

"連続の空白をバックスペースで連続で消せる
set softtabstop=4

"タブ入力を複数の空白入力に書き換え
set expandtab

"shiftwidthの数だけインデントする
set smarttab

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" 改行時に前の行のインデントを継続する
set autoindent

"インデントや空白をバックスペースで削除可能にする
set backspace=indent,eol,start

" vimでヤンクした内容をクリップボードにコピー
set clipboard+=unnamed,unnamedplus,autoselect

"Ctrl+j入力でインサートモードから抜ける
inoremap <silent> jj <Esc>
"inoremap <C-j> <Esc>

""""""" 検索関連 """"""""

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
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
""""""""""""""""""""""""""""""""""""


"if executable('pyls')
"  au User lsp_setup call lsp#register_server({
"              \ 'name': 'pyls',
"              \ 'cmd': {server_info->['pyls']},
"              \ 'whitelist': ['python'],
"              \ })
"endif
