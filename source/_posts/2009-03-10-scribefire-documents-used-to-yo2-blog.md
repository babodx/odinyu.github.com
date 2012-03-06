--- 
categories: 
  - "about blog"
comments: true
layout: post
published: true
status: publish
tags: []
title: 用ScribeFire发文到Yo2博客
type: post
---
之前的日志《用Windows Live Writer来写博客》里写到使用ScribeFire不能，不过今天经过不懈地搜索和尝试，终于可以用现在这个标题来写这篇日志了。  罗列一下具体需要的工具和解决的步骤吧，首先是工具：   1、当然firefox是必需的  <br>2、User Agent Switcher，firefox的插件，不过不是必需的  <br>3、主角，ScribeFire，也是firefox的插件    然后是步骤：   <!--more-->  1、安装上ScribeFire和User Agent Switcher。我用的是firefox3.0.7版本，不兼容User Agent Switcher，所以我没有用这个来修改User Agent，能使用这个插件的朋友，可以用这个软件来改。   <br>2、改User Agent。    <br>2.1、在地址栏输入 about:config，第一次进的话请点“我保证会小心”按钮。    <br>2.2、在下面的窗口里随便哪一行文字上点击鼠标右键，选择“新建”->“字符串”，出来的对话框中输入general.useragent.override。    <br>2.2、在弹出的对话框里填上下面的User Agent    <br>User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Windows Live Writer 1.0)    <br>如果比较熟悉这个的朋友可以用自己的写法。    <br>2.3、确认了就生效了。    <br>3、然后就是在ScribeFire里配置你自己的博客了，这个相关的教程网上很多的，我就不重复喽。  如此这般，就可以顺利地在ScribeFire里注册上你的博客了，其实这样做的主要原因竟然是yo2的博客对firefox的Useragent有歧视，改成它不认识的就可以绕过去了。  这里就是我用ScribeFire离线写并发布的日志。  <div class="zemanta-pixie"><img class="zemanta-pixie-img" alt="" src="http://img.zemanta.com/pixy.gif?x-id=c5d84099-d1ad-44e7-845b-c3cc2310183a"></div>  Powered by <a href="http://www.scribefire.com/">ScribeFire</a>.
