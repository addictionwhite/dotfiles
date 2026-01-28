#!/bin/bash
# Neovim セットアップスクリプト

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NVIM_CONFIG="$HOME/.config/nvim"

echo "Setting up Neovim config..."

# 既存の設定をバックアップ
if [ -e "$NVIM_CONFIG" ] && [ ! -L "$NVIM_CONFIG" ]; then
    echo "Backing up existing config: $NVIM_CONFIG -> ${NVIM_CONFIG}.backup"
    mv "$NVIM_CONFIG" "${NVIM_CONFIG}.backup"
fi

# 既存のシンボリックリンクを削除
if [ -L "$NVIM_CONFIG" ]; then
    rm "$NVIM_CONFIG"
fi

# シンボリックリンク作成
mkdir -p "$HOME/.config"
ln -s "$SCRIPT_DIR" "$NVIM_CONFIG"

echo "Linked: $SCRIPT_DIR -> $NVIM_CONFIG"
echo ""
echo "Done! Run 'nvim' to start. Plugins will install automatically."
