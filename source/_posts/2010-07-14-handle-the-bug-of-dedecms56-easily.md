--- 
categories: 
  - "about soft"
comments: true
layout: post
published: true
status: publish
tags: 
  - bug
  - dedecms
title: 轻松解决dedecms5.6发布文章后空白的bug
type: post
---
这两天在用dedecms5.6做一个项目，上传好了模板添加文档，填好内容后点击保存，页面上是一片空白，等很久也没有反应。然后可以在“网站栏目管理”那看到文档数增加，但却看不到新增的文档，在相应的路径里也看不到新生成的文档。  

放狗搜索后终于找到答案，解决起来也很方便，因此留下此日志以备忘。解决方法：  

“系统”--“系统基本参数”--“其它选项”，将“自动提取关键字”这个功能关掉即可。
