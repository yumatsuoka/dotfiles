" ------------------------------
" 基本設定
" ------------------------------
set nocompatible              " Vim の古い互換モードを無効化
set encoding=utf-8
set fileencodings=utf-8,sjis,euc-jp
set fileformats=unix,dos,mac
set number                    " 行番号を表示
set showcmd                  " 入力中のコマンド表示
set showmode                 " 挿入モードなどを表示
set cursorline               " 現在行をハイライト
set nowrap                   " 行の折り返しをしない
set scrolloff=5              " スクロール時の余白

" ------------------------------
" インデント設定
" ------------------------------
set tabstop=2                " タブ幅（表示）
set shiftwidth=2             " 自動インデントの幅
set expandtab                " タブ入力をスペースに変換
set autoindent               " 自動インデント
set smartindent              " 構文に応じたインデント

" ------------------------------
" 検索
" ------------------------------
set ignorecase               " 大文字小文字を無視
set smartcase                " 大文字を含めば大文字小文字を区別
set incsearch                " 入力途中でも検索
set hlsearch                 " 検索結果をハイライト

" ------------------------------
" バックアップ/履歴/保存
" ------------------------------
set history=1000             " コマンド履歴数

" ------------------------------
" 表示と見た目
" ------------------------------
syntax on                    " シンタックスハイライト有効化
set background=dark          " dark系のカラースキーム用設定
colorscheme desert           " 色テーマ（例: desert / industry / elflord）

" ------------------------------
" 補完
" ------------------------------
set wildmenu                 " コマンド補完の強化
set wildmode=longest,list,full

" ------------------------------
" キーマップのカスタム
" ------------------------------
" jjでノーマルモードに戻る
inoremap jj <Esc>
" カーソル移動を矢印キーでしないようにする（練習用）
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" ------------------------------
" プラグイン（vim-plug使用時）
" ------------------------------
" if has('nvim') || has('vim_starting')
"   call plug#begin('~/.vim/plugged')
"   Plug 'junegunn/fzf.vim'
"   Plug 'preservim/nerdtree'
"   Plug 'tpope/vim-commentary'
"   call plug#end()
" endif

