# ~/.zshrc

# --- 基本設定 ---
#export LANG=ja_JP.UTF-8
#export LC_ALL=ja_JP.UTF-8
export EDITOR="code --wait"

# --- zsh plugin manager ---
# antidote 初期化（brew 経由）
source $(brew --prefix)/share/antidote/antidote.zsh
# プラグインを .zsh_plugins.txt から読み込む
antidote load < ~/.zsh_plugins.txt

# --- PATH設定 ---
# Homebrew (macOS/Apple Silicon対応)
export PATH="/opt/homebrew/bin:$PATH"
# Volta (Node.js/PNPMなどのバージョン管理)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# uv (Rust製の高速Pythonパッケージマネージャ)
export PATH="$HOME/.cargo/bin:$PATH"

# --- ターミナル環境判定 ---
TERM_PROGRAM_NAME="${TERM_PROGRAM:-unknown}"

# --- 共通エイリアス ---
alias ll='ls -la'
alias gs='git status'
alias gco='git checkout'
alias ..='cd ..'
alias ...='cd ../..'

# --- Warp用の設定 ---
if [[ "$TERM_PROGRAM_NAME" == "WarpTerminal" ]]; then
  export STARSHIP_DISABLED=1
  export BAT_THEME="TwoDark"
  eval "$(zoxide init zsh)"

# --- VSCodeやiTermなどの汎用ターミナル用 ---
else
  eval "$(starship init zsh)"
  eval "$(zoxide init zsh)"
  [[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

  alias ls='eza --icons'
  alias cat='bat'
  export BAT_THEME="OneHalfDark"
fi

# --- Zsh補完機能の初期化 ---
autoload -Uz compinit
compinit


