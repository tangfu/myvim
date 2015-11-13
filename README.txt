=================================================
1. 【说明】
我的vim设置

=================================================
2. 【安装与卸载】
git clone git://github.com/tangfu/myvim.git
cd myvim
git submodule init
git submodule update

a) 安装
./myvim.sh -i
b) 卸载
./myvim.sh -u

注：检查是否支持某些特性，vim --version
./configure --prefix=$INSTALL_DIR --enable-pythoninterp=yes --enable-luainterp --with-features=huge --with-python-config-dir=/usr/lib64/python2.6/config

=================================================
3. 【键位映射】
<F2>	doxygen插件开启
<F3>	fencview自动使用合适的编码
<F4>	打开对应的头文件或源文件
<F5>	打开修改历史记录窗口
<F6>	插入作者信息(在信息存在时执行只会更新时间)
<F7>	打开NerdTree
<F8>	zoomwin放大或者恢复当前窗口
<F10>	创建和生成tags
<F12>	删除当前buffer，在tabbar中相当于删除标签

其他组合键，请查看myvimrc文件
=================================================
4. 【Change】

4.1 tabbar:
# 修改映射
原始映射：ESC + NUM
修改后	：NUM(正常模式下)，ESC + NUM(插入模式下)


4.2 snipmate:
# 添加switch 
snippet sw
	switch {
		case ${1:condition1}:
			break;
		default:
			break;
	}
# 添加case
snippet case
	case ${1:condition1}:
		break;

4.3 txtbrowser:
添加【】的标题支持
