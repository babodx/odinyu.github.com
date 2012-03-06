--- 
categories: 
  - "about web"
comments: true
layout: post
published: true
status: publish
tags: 
  - chrome
  - "chrome extension"
title: chrome快捷键自动填写博客评论个人信息
type: post
---
今天早些时候看到<a href="http://ifeiyang.cn/" target="_blank">i飞扬</a>的一篇博文，受到启发，因此有了此文。  

<a href="http://ifeiyang.cn/" target="_blank">i飞扬</a>的原文为<a href="http://ifeiyang.cn/archives/2111.html" target="_blank">一步简单解决Wordpress评论个人信息自动填写！</a>他的方式是使用bookmarklet，但是对于chrome比较宝贵的书签栏位置来说，增加一个bookmarklet还是很让人费神的。  

突然想起曾经看到过一个可以自定义chrome的扩展，貌似那样就可以直接用快捷键来执行这个操作了。  

<a href="https://chrome.google.com/webstore/detail/mgjjeipcdnnjhgodgjpfkffcejoljijf" target="_blank">Shortcut Manager</a>就是能达到此功用的“神器”  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/ScreenShot_2011-03-23_170703.jpg"><img style="background-image: none; border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="ScreenShot_2011-03-23_170703" border="0" alt="ScreenShot_2011-03-23_170703" src="http://www.hopes4.me/wp-content/uploads/2011/03/ScreenShot_2011-03-23_170703_thumb.jpg" width="338" height="75"></a>  

上图是设定自己喜欢的快捷键的位置  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/ScreenShot_2011-03-23_170841.jpg"><img style="background-image: none; border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="ScreenShot_2011-03-23_170841" border="0" alt="ScreenShot_2011-03-23_170841" src="http://www.hopes4.me/wp-content/uploads/2011/03/ScreenShot_2011-03-23_170841_thumb.jpg" width="580" height="391"></a>  

上图中红圈的位置是选择使用js，而不是打开网页。然后就是放入相关的js代码，下面附上js代码。
 
{% codeblock %}
javascript:(function(){document.getElementById('author').value='昵称';document.getElementById('email').value='邮件地址';document.getElementById('url').value='网站链接';document.getElementById('comment').value='博主写得很赞!'})()
{% endcodeblock %}
  
当然，上面的代码直接保存为书签也是可以的，看各人喜好了
