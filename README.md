clone後、terminalフォルダからhomeディレクトリ内に移動する


※.vimrcを書き換えるとdeinが認識しなくなることがあるので、

　インストールしなおす

　→$rm .cache

　→$mkdir -p .cache/dein

　→$cd .cache/dein

　→$curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

　→ sh ./installer.sh ~/.cache/dein





※注意以下ファイルは環境に合わせてpathの書き換えが必要

.vimrc

  keigoで検索して該当するpathは変更する必要がある

.bashrc

  Spresenseの設定は適宜消す
