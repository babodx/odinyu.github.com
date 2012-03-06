--- 
categories: 
  - "about blog"
  - "about web"
comments: true
layout: post
published: true
status: publish
tags: 
  - flickr
  - 域名
title: 用Flickr图片来展示你的域名
type: post
---
今天在网上看到一个网站,可以用Flickr上的图片来拼写英文字母。我用它来展示我的域名，五颜六色并形状各异的一个个字母排列在一起，真得很漂亮！效果见下图，另外每刷新一下页面会有不同的效果。
这个网站的网址是，<a href="http://metaatem.net/words/" target="_blank">http://metaatem.net/words/</a>，值得一试哦。
我的页面上使用的是类似下面的js代码，这样才能每次刷新显示不同的图片。


{% codeblock %}

<script type="text/javascript" src="<a href="http://metaatem.net/spell.php?picsize=s&amp;string=hopes4.me%22">http://metaatem.net/spell.php?picsize=s&amp;string=hopes4.me"</a>></script>

{% endcodeblock %}

<!--more-->

<script src="http://metaatem.net/spell.php?picsize=s&string=hopes4.me" type="text/javascript"></script>
