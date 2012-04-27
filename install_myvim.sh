#!/bin/sh

function back_vim {
	cd ~
	temp=`ll .vimrc`
	[ "1${temp}" = "1-" ] && mv .vimrc .vimrc_bak
	[ -d .vim ] && mv .vim .vim_bak
}

function set_myvim {
	cd $local
	if [ -f myvimrc ];then 
		ln -s $local ~/.myvim
		ln -s $local/myvimrc ~/.vimrc
	else
		echo "目录不正确，请在正确的pathogen插件目录下执行命令\n"
		return 1
	fi
}

local=`pwd`
if [ $local = "~/.myvim" ];then
	echo "不能在~/.myvim目录下进行安装\n"
	exit 1
fi
back_vim
set_myvim
