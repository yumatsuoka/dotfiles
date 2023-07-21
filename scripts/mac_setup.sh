### finder周りの設定
以下のコマンドを実行
```
ファインダーでホームディレクトリ を表示
$ chflags nohidden ~/
隠しファイルを表示する
$ defaults write com.apple.finder AppleShowAllFiles TRUE
$ killall Finder
共有フォルダで .DS_Store ファイルを作成しない
$ defaults write com.apple.desktopservices DSDontWriteNetworkStores true
```

### brewをインストール
以下のコマンドを実行
```
# brewのインストール
$ xcode-select --install
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# PATHを通りして、brewを使えることを確認。
$ echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/shin/.zprofile
$ brew help
$ brew -v

# Homebrew本体のアップデート
$ brew update && brew upgrade
# Bundlefileに記載されたコマンド、アプリをインストール
$ brew bundle

### direnvの設定
echo 'eval "$(direnv hook bash)"' >> ~/.zshrc

### pyenvをインストール
gitからインストール
```
$ git clone https://github.com/yyuu/pyenv.git ~/.pyenv
$ echo 'export PYENV_ROOT="${HOME}/.pyenv"' >> ~/.zshrc
$ echo 'if [ -d "${PYENV_ROOT}" ]; then' >> ~/.zshrc
$ echo 'export PATH=${PYENV_ROOT}/bin:$PATH' >> ~/.zshrc
$ echo 'eval "$(pyenv init -)"' >> ~/.zshrc
$ echo 'fi' >> ~/.zshrc
$ source ~/.zshrc
$ pyenv install --list | grep 3.
$ pyenv install 3.8.8
$ pyenv global 3.8.8
$ pyenv rehash
```
### aws-mfa

$ pip install -U
$ pip install aws-mfa

### nodeのインストール
```
nodenvのインストール.
$ brew install nodenv
.zshrcに以下を追加
$ eval "$(nodenv init -)"
設定ファイルの読込み
$ source ~/.zshrc
インストール可能なversionを確認
$ nodenv install -l
12.16.13をインストール
$ nodenv install 12.16.3
global設定
$ nodenv global 12.16.3
```
### 公開鍵の作成
以下を実行
```
$ ssh-keygen -t rsa -b 4096
(Enterを押していく)
$ pbcopy < ~/.ssh/id_rsa.pub
```
- gitlab接続先リストにIP入力
- gitlabにアクセス
- 公開鍵を登録

# fzfの設定
$(brew --prefix)/opt/fzf/install

# install programing nerd eont
brew tap homebrew/cask-fonts
brew install font-hackgen
brew install font-hackgen-nerd

# ln to dotfiles
cd 
ln -s setup/aws .aws
ln -s setup/config .config
ln -s setup/zshrc .zshrc
ln -s setup/tmux.conf .tmux.conf
ln -s setup/Brewfile Brewfile
