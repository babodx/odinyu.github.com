--- 
categories: 
  - "about soft"
comments: true
layout: post
published: true
status: publish
tags: 
  - im
  - pidgin
  - skin
title: 给pidgin换个skin，让它更漂亮！
type: post
---
pidgin用了几天了，老是看到一个灰灰的好友列表和一个土土的聊天窗口，心有不甘！于是又上google，看看它是不是支持换肤，毕竟现在的软件都兴这个嘛。查了一下，pidgin本身没有皮肤这个概念，不过它是基于GTK的，把GTK的theme换了也就等于把它的skin也换了。
好，有了方向继续google，在一些linux论坛上找到了一些GTK的theme，一个一个地试了下。这里先介绍一下怎么换GTK的theme，C:Program FilesCommon FilesGTK2.0bingtkthemeselector.exe，找到这个程序并运行。里面应该已经有默认的几个theme了，可以先试试。确定一个后，要重新打开pidgin才能看到效果。

<!--more-->
我这里要推荐一个theme，iCookie，我觉得蛮漂亮的！先上图。



[caption id="attachment_39578" align="aligncenter" width="270" caption="好友列表"]<img class="size-full wp-image-39578" title="好友列表" src="http://www.hopes4.me/images/uploads/2008/02/list.jpg" alt="好友列表" width="270" height="482">[/caption]

[caption id="attachment_39579" align="aligncenter" width="270" caption="好友列表展开"]<img class="size-full wp-image-39579" title="好友列表展开" src="http://www.hopes4.me/images/uploads/2008/02/friend.jpg" alt="好友列表展开" width="270" height="482">[/caption]

[caption id="attachment_39580" align="aligncenter" width="450" caption="聊天面板"]<img class="size-full wp-image-39580" title="聊天面板" src="http://www.hopes4.me/images/uploads/2008/02/chat.jpg" alt="聊天面板" width="450" height="354">[/caption]

[caption id="attachment_39581" align="aligncenter" width="300" caption="选项卡"]<img class="size-full wp-image-39581" title="选项卡" src="http://www.hopes4.me/images/uploads/2008/02/setting.jpg" alt="选项卡" width="300" height="495">[/caption]
怎么样，还挺顺眼的吧，喜欢的可以到这里去下，<a href="http://www.adrive.com/public/37c01366a982ce0dd08cc22a5eef8f3a8252fb4db32206ec602080170a58a396.html" target="_blank">iCookie</a>
如果你下了，请把这个文件解压到C:Program FilesCommon FilesGTK2.0sharethemes这个目录下，然后再用刚才介绍的gtkthemeselector来选定它。重新打开你的pidgin后，你就可以看到一个全新的pidgin喽。
ps:有能力也有闲的朋友可以对这个theme自定义,在压缩文件里找到gtkrc这个文件，用记事本打开可以进行编辑。我本人修改过这个文件里的字体，我改成了微软雅黑，你也可以改成你喜欢的字体。
希望使用pidgin但还没有换过skin的朋友看到此文能有所启发。
