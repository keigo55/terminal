####起動時に以下実行######

#!/usr/bin/bash

#プロンプトの表示設定
#{{{
# $だけ表示
#export PS1='$ '

# ユーザー名＋ホスト名
#export PS1='\u@\h \$ '

# 現在のディレクトリだけ表示
#export PS1='\W $ '

# 現在のディレクトリの絶対パス表示
#export PS1='\w $ '

# 現在のディレクトリだけ表示 (色付き)
export PS1='\[\e[33m\]\W\[\e[0m\]$ '
#}}}

#$SHLVLが3の時だけsshサーバー立ち上げコマンド実行
if [ $SHLVL = 3 ];then
    echo password | sudo -S service ssh restart
    tmux
fi
