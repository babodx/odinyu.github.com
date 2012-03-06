--- 
categories: 
  - "about blog"
comments: true
layout: post
published: true
status: publish
tags: 
  - bug
  - ie
  - "php speedy"
title: "php speedy的一个bug"
type: post
---
之前一直在博客上装着php speedy这个插件，作用就是把所有引用的js和css文件合并再压缩，这样可以加速网站的访问速度。  

使用了这个插件后，在博客提速方面感觉并不是很明显，但心理感觉上总觉得好像是快了一点，也就一直在用着。不过昨天刚换了主题后却发现了这个插件的一个bug，会对某些主题产生影响。  

bug的主要问题就是body上加的背景图片在ie8下不能显示，注意仅仅是在ie8下不能显示。我试过把php speedy停用，则在ie8上背景图片显示没有问题。或者php speedy使用，用其他浏览器，背景图片显示也没有问题。唯独是在php speedy使用并用ie8浏览会有问题，真是很奇怪的一个bug。  

目前我还在用这个插件，所以也只能对不住用ie8的朋友了。另外，希望有也在用这个插件的朋友能告诉相关的解决办法，让我的博客显示上不再这么杯具。
