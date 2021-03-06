#!/bin/bash
# Author: Hsin-Yi Chen <ossug.hychen AT gmail.com>
# Alter: Odin Yu <qdssly AT gmail.com>
ERRMSG_WRONGDIR='You are not under octopress directory'
[ ! -f _config.yml ] && echo ${ERRMSG_WRONGDIR} && exit

BLOGDIR=${PWD}

submit(){
	local message=${1?"requires message"}
	git add .
	git commit -m ${message}
	git push origin source
}

update(){
	cd _deploy
	git pull origin master
	cd ..
	git pull origin source
	rake generate
}

generate(){
	rake generate
}

deploy(){
	rake deploy
}


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
	ff http://127.0.0.1:4000
}


upgrade(){
	update_octopress
	generate
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
	md ${BLOGDIR}/$file
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
