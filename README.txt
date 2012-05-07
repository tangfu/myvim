
=================================================
1. 【说明】
我的vim设置

=================================================
2. 【安装】
git clone git://github.com/tangfu/myvim.git
cd myvim
git submodule init
git submodule update
./install_myvim.sh

=================================================
3. 【键位映射】
<F2>	doxygen插件开启
<F3>	grep插件
<F4>	打开对应的头文件或源文件
<F5>	删除当前buffer，在tabbar中相当于删除标签
<F6>	插入作者信息
<F7>	打开日历
<F8>	zoomwin放大或者恢复当前窗口
<F9>	生成tags
<F12>	打开项目工程

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
