---
layout: post
title: "使用脚本发布octopress日志"
date: 2012-03-07 13:31
comments: true
categories: octopress
---
经过本人不断的努力和尝试，终于可以比较舒服地并不受打扰地发布日志到octopress，这下终于爽了！哈哈！

###此举的目的
可以毫不避讳地说，是为了偷懒。

###准备工作
不过为了长期地偷懒，先期还是需要做一些准备工作的。

- 首先是在网上找到高手写的sh脚本。
- 然后对脚本进行修改，也就是自定义。
- 下载并安装mktemp for windows。

###贴出脚本
脚本需要放在octopress的安装目录。

{% codeblock blog %}
#!/bin/bash
# Author: Hsin-Yi Chen <ossug.hychen AT gmail.com>
# Alter: Odin Yu <qdssly AT gmail.com>
ERRMSG_WRONGDIR='You are not under octopress directory'
[ ! -f _config.yml ] && echo ${ERRMSG_WRONGDIR} && exit

BLOGDIR=${PWD}

submit(){
	git add .
	git commit -m $1
	git push origin source
}

deploy(){
	rake generate
	rake deploy
}

#我没有用到
update_octopress(){
	echo 'upgrading octopress source'
	git pull octopress master     # Get the latest Octopress
	bundle install                # Keep gems updated
	rake update_source            # update the template's source
	rake update_style             # update the template's style
}

preview(){
	rake preview &
	sleep 1
	ff http://127.0.0.1:4000             # 这里的ff是我加的，是用firefox进行预览
}

#也没有用到
upgrade(){
	update_octopress
	deploy
}

# start to write new post
# @param: post title
post(){
	local title=${1?"requires title"}
	_new_item post ${title}
}

# start to write new page
# @param: page title
page(){
	_new_item page $1
}

_new_item(){
	local tmpfile=`mktemp`
	local item_name=${1?"requires item name"}
	local title=${2?"requires title"}
	rake new_${item_name}["${title}"] | tee ${tmpfile}
	local file=`cat ${tmpfile} | awk -F: '{print $2}' | sed -e 's/ //'`
	md ${BLOGDIR}/$file                 # 这里的md是我自己加的，是用MarkdownPad打开生成的文件
	rm ${tmpfile}
	# return file name
	RET=${file}
}

# Main
# ----
actions="post upgrade preview deploy"
action=${1?"requirs action!, avaliabl actions are ${actions}"}

# run action
shift
${action} $@

{% endcodeblock %}

###我的自定义
上面的脚本里提到的两个我自己加的程序调用的代码如下
{% codeblock md %}
#!/bin/sh

exec "c:\Users\Administrator\AppData\Local\Apps\2.0\W8LVT3AZ.YHR\5O9LMMDL.270\mark..tion_12329825c85e214b_0001.0001_aee1d4f50dc5492c\MarkdownPad" "$@"
# 上面的路径需要自己修改
{% endcodeblock %}

{% codeblock ff %}
#!/bin/sh

exec "d:\Program Files\Mozilla Firefox\firefox" "$@"
# 上面的路径需要自己修改
{% endcodeblock %}

这两个文件不要有后缀名，并放到Git安装目录里的bin目录下

###整个日志发布的工作流

{% codeblock 日志发布的步骤 %}
blog.sh update
# 如果有多台电脑同时编辑博客的话，可能需要先更新到最新的状态
blog.sh post this-is-the-test-title        
# blog.sh是我对脚本的命名
# post是命令
# this-is-the-test-title是日志的title，同时也是markdown文件的名字
# 执行这条命令后我的电脑上会打开MarkdownPad来编辑新创建的markdown文件
blog.sh deploy
# 执行这条命令后，会进行rake genarate和rake deploy操作，如果有发布密码则会提示
blog.sh submit this is work for XXX
# 执行这条命令，即提交所有的修改到github上去
{% endcodeblock %}

###小结
通过脚本将原先需要分多次手打的命令整合到一起，这样方便操作，更适合懒人。

脚本方面可能还需要调整和测试，不过暂时能凑合着用了。