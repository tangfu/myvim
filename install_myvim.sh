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
		rm ~/.vimrc
		ln -s $local ~/.myvim
		ln -s $local/myvimrc ~/.vimrc
	else
		echo "目录不正确，请在正确的pathogen插件目录下执行命令\n"
		return 1
	fi
}

local=`pwd`
standard_dir=~/.myvim
if [ $local = $standard_dir ];then
	echo "不能在~/.myvim目录下进行安装\n"
	exit 1
fi
back_vim
set_myvim
