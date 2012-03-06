--- 
categories: 
  - "about soft"
comments: true
layout: post
published: true
status: publish
tags: 
  - chrome
  - "chrome extension"
  - twitter
title: Chrome上用第三方API来twitter
type: post
---
最近一直试着研究chrome的扩展，自己也尝试地做了一个，而今天的主题同样也是和chrome的扩展有关。  <span class="inner_title">关键词：</span>  twitter，主要的目的就是要在chrome上用这个。  第三方twitter API，使用这个就可以不用VPN，不用代理，不用设置hosts而担心什么时候又不能用了。  chrome扩展，因为是要在chrome上用，所以离不开扩展。介绍两个扩展，<a href="https://chrome.google.com/extensions/detail/aefaeloiencfjnaljicdoieoekoecmha" target="_blank">Metrist</a>和<a href="https://chrome.google.com/extensions/detail/ffcbeckjmgmgigkmnhmgjplmomcpfall" target="_blank">Chrowety</a>，需要翻墙才能安装。  <span class="inner_title">使用Metrist</span>  <a href="https://chrome.google.com/extensions/detail/aefaeloiencfjnaljicdoieoekoecmha" target="_blank">Metrist</a>，这个是国人开发的一个扩展，它的强大之处在于支持自定义第三方API以及很好地还原了twitter的原始样式（我是这样看的），缺点是没有短网址生成的功能，打开链接是前台而不是后台等等。  至于Metrist如何使用第三方API，它的作者有官方的解释，我给出链接而不再越俎代庖了，链接：<a href="http://code.google.com/p/chrome-metrist/wiki/API_HOWTO_ZH" target="_blank">Metrist 的第三方 API 设置说明</a>  <a name="%E8%AE%BE%E7%BD%AE%E7%AC%AC%E4%B8%89%E6%96%B9_API"></a>  
{% codeblock %}
   在插件初次安装或者点击相应的设置按钮后，会弹出设置页面。在此页面中，您可以设置您的第三方 API 地址，例如原 Twitter 获取 timeline 地址为：    
{% codeblock %}
http://twitter.com/statuses/user_timeline/feelinglucky.json
{% endcodeblock %}


  同时您的第三方对应的 API 地址为

  
{% codeblock %}
http://twitter.com/statuses/user_timeline/feelinglucky.json
{% endcodeblock %}


{% endcodeblock %}


摘抄作者的原话，目的是为下面要介绍的<a href="https://chrome.google.com/extensions/detail/ffcbeckjmgmgigkmnhmgjplmomcpfall" target="_blank">Chrowety</a>服务。

<span class="inner_title">使用Chrowety</span>

<a href="https://chrome.google.com/extensions/detail/ffcbeckjmgmgigkmnhmgjplmomcpfall" target="_blank">Chrowety</a>，估计作者可能是个巴西人，因为它的代码里的文字看上去像巴西葡语。它的优点是支持多种短网址的生成（包括刚出炉的goo.gl），有新的推会主动弹出层来alert以及链接是在后台打开。

我个人是比较倾向于用Chrowety的，但它默认是用twitter自己的API，于是就有了本文存在的理由，怎么修改成第三方API。

过程很简单，大家慢慢跟我来试。

首先，找到你的chrome的扩展的安装路径，一般来说总是C盘，我给出我的路径以供参考，c:\Users\<font color="#ff0000">XXX</font>\AppData\Local\Google\Chrome\User Data\Default\Extensions\，<font color="#ff0000">XXX</font>代表你的系统的登陆名。

然后，在chrome的地址栏输入<a href="chrome://extensions/">chrome://extensions/</a>，应该会看到如下图的文字。
<img style="width: 326px; display: block; float: none; margin-left: auto; margin-right: auto" src="https://pcl9ea.bay.livefilestore.com/y1pQshZGa3hDCeu5tZqk8IUWB8LeYOj4sidP5RLLgXiyI-QZgsWfj8MPWqhGgxpzKbBWhvj0cOtAvrvSVSQpga5BBrmpS1fSydm/ScreenShot_2009-12-24_133623.jpg/" height="102">上图中的ID后面的字符串就是插件所在路径中的文件夹名，进入这个文件夹，找到background.html。打开background.html，把第13行到第27行中的<font color="#0000ff">https://twitter.com</font>替换成第三方API的链接，也就是上文已经摘抄的那段文字里的<font color="#0000ff">http://foo.com/api</font>这样。像我是用google的App Engine架的birdnest的API，我的链接就像这样<font color="#0000ff">http://myid.appspot.com/api</font>。

修改好后可能需要重启一下chrome，之后你应该就可以很畅快地使用Chrowety来发推了。如果以后这个插件的作者依然没有引入第三方API自定义的功能的话，可能每次扩展有更新都需要像刚才那样修改一下API的链接，不过聪明如你的读者，有了第一次以后应该也就不会觉得这是个麻烦了吧。

最后，仅以此文献给平安夜，愿大家一生平安！
