#!/bin/sh

function back_vim {
	cd ${install_home}
	temp=`ls -l .vimrc 2>/dev/null`
	[ "1${temp:0:1}" = "1-" ] && mv .vimrc .vimrc_bak
	[ -d .vim ] && mv .vim .vim_bak
}

function set_myvim {
	cd $local
	if [ -f myvimrc ];then 
		rm -rf ${install_home}/.myvim
		rm -f ${install_home}/.vimrc
		ln -s $local ${install_home}/.myvim
		ln -s $local/myvimrc ${install_home}/.vimrc
	else
		echo "目录不正确，请在正确的pathogen插件目录下执行命令\n"
		return 1
	fi
}

function unset_myvim {
	cd ${install_home}
	[ -f .vimrc_bak ] && mv .vimrc_bak .vimrc
	[ -d .vim_bak ] && mv .vim_bak .vim
}

############################################main##############################################

option=$1
if [ "a$2" = "a" ];then
	install_home=~
else
	if [ -d "/home/$2" ];then
		install_home=/home/$2
	elif [ -d "$2" ];then
		install_home=$2
	else
		install_home=~
	fi
fi
local=`pwd`
standard_dir=${install_home}/.myvim
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
    echo "[USAGE] ./install_myvim.sh -i|-u [username|dir]"
    echo "第二参数可选，用于指定安装到的用户或者主目录"
fi

