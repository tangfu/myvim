#!/bin/sh

function back_vim {
	cd ~
	temp=`ls -l .vimrc`
	[ "1${temp:0:1}" = "1-" ] && mv .vimrc .vimrc_bak
	[ -d .vim ] && mv .vim .vim_bak
}

function set_myvim {
	cd $local
	if [ -f myvimrc ];then 
		rm -rf ~/.myvim
		rm -f ~/.vimrc
		ln -s $local ~/.myvim
		ln -s $local/myvimrc ~/.vimrc
	else
		echo "目录不正确，请在正确的pathogen插件目录下执行命令\n"
		return 1
	fi
}

function unset_myvim {
	cd ~
	[ -f .vimrc_bak ] && mv .vimrc_bak .vimrc
	[ -d .vim_bak ] && mv .vim_bak .vim
}

local=`pwd`
standard_dir=~/.myvim
option=$1
if [ $local = $standard_dir ];then
	echo "不能在~/.myvim目录下进行安装\n"
	exit 1
fi

if [ "o$option" = "o-i" ];then
    back_vim
    set_myvim
elif [ "o$option" = "o-u" ];then    
    unset_myvim
else
    echo "[USAGE] ./install_myvim.sh [-i|-u]"
fi

