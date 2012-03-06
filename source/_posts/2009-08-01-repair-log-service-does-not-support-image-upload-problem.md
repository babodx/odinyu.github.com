--- 
categories: 
  - "about blog"
  - WordPress
comments: true
layout: post
published: true
status: publish
tags: 
  - blog
  - picture
  - upload
  - WordPress
title: 修复“日志服务不支持图片上载”的问题
type: post
---
其实这个问题的产生是因为我的博客搬家的缘故，搬家的原因见<a href="http://www.hopes4.me/2009/08/01/for-a-host-i-feel-a-quick-visit-to-the-speed-of/" target="_blank">《换了个主机，感觉访问速度快点了》</a>。发现这个问题是因为我想在日志<a href="http://www.hopes4.me/2009/08/01/lomo-style-pig/" target="_blank">《LOMO风格的小猪》</a>里放一张小猪的照片，可是原来没搬家前wlw（windows live writer）支持直接上传日志里的图片到服务器上，可这次却提示“日志服务不支持图片上载”的错。  对wordpress真的是不熟，我天真地以为直接到后台的media里去上传总可以了吧，然后看到的是两行红字： <!--more-->  <font color="#ff0000">无法建立目录 /home/qdssl/public-html/../../images/uploads/2009/08。</font>  <font color="#ff0000">是否上级目录没有写权限？</font>  <font color="#000000">这下我没办法了，只能又去麻烦<a href="http://hugege.com/" target="_blank">胡戈戈</a>。据他的指引，我看到了《解决WordPress搬家后无法上传文件问题》这篇博文。这篇日志里也谈到了这个问题，作者的解决方法是直接修改数据库。</font>  <font color="#000000">我也到数据库看了下，的确是上传的路径因为搬家的关系有了改变，而数据库是直接移过来的没有作相应的修改所致。突然我想起来我好像在后台里看到有个地方是可以修改文件上传路径的，而后台的修改其实也就是在修改数据库，相比我直接去改数据库要安全得多。</font>  <font color="#000000">于是最终我在杂项里找到了修改默认上传路径的功能，修改完成后，wlw点发布即没有之前所出现的问题了。</font>  ps：搬家后wp-super-cache不能正常使用，只能停用，删除时报错，目前还是无解。另外有一段JS目前在FF、chrome、opera、safari里都能正常工作，但ie7、ie8都不行，而原先都是可以的，maybe和升级到2.8.2有关？
