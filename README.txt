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

4.4 delimitMate:
自动补齐括号

4.5 surround:
# 添加括号 ysw)
# 删除括号 ds)
# 替换括号 cs)]

4.6 easymotion:
快速移动到本屏中任意一行, 执行后，输入屏幕中的字母即可跳到相应位置
# 原移动升级	,h ,j ,k ,l ,f ,F
# 搜索升级		,/

4.7 indentLine:
\l 显示对齐线

4.8 multiedit multiple-cursors
多文本编辑
#Ctrl+n选中内容，重复选中同样的内容，c替换内容
#\m{a,A,i,I,o,O}添加标记，\M编辑标记(记得同时删除标记)

4.9 move
块移动
#Ctrl - j,k 块上下移动(需要先选中)
#Ctrl - h,l 行上下移动

4.10 bookmarking
标记应用
#bt  打标记
#bn  切换到下一标记

4.11 visincr
递增序列(I左对齐，II右对齐，可带参数递增间隔)
#数字自增       :I :IO :IX
#日期自增       :IYMD :IMDY :IDMY
#阿拉伯自增     :IA
#日期英文名自增 :ID IM IY
