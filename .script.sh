####��ư���˰ʲ��¹�######

#!/usr/bin/bash

#�ץ��ץȤ�ɽ������
#{{{
# $����ɽ��
#export PS1='$ '

# �桼����̾�ܥۥ���̾
#export PS1='\u@\h \$ '

# ���ߤΥǥ��쥯�ȥ����ɽ��
#export PS1='\W $ '

# ���ߤΥǥ��쥯�ȥ�����Хѥ�ɽ��
#export PS1='\w $ '

# ���ߤΥǥ��쥯�ȥ����ɽ�� (���դ�)
export PS1='\[\e[33m\]\W\[\e[0m\]$ '
#}}}

#$SHLVL��3�λ�����ssh�����С�Ω���夲���ޥ�ɼ¹�
if [ $SHLVL = 3 ];then
    echo password | sudo -S service ssh restart
    tmux
fi
