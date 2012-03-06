--- 
categories: 
  - android
comments: true
excerpt: "Nook Color到手已经半个月了，昨晚把它从1.0.1升级到了1.1.0。虽然整个过程无惊无险，但感觉步骤还是蛮多的，老是到论坛上去找帖子也不大方便，索性直接整理一下到自己的博客上。"
layout: post
published: true
status: publish
tags: 
  - "nook color"
title: "Nook Color破解步骤备忘（for 1.1.0）"
type: post
---
Nook Color到手已经半个月了，昨晚把它从1.0.1升级到了1.1.0。虽然整个过程无惊无险，但感觉步骤还是蛮多的，老是到论坛上去找帖子也不大方便，索性直接整理一下到自己的博客上。  

既然是整理，就要理理清楚，下面正式开始。 

<strong><font style="background-color: #9bbb59">需要准备的工具和下载的资源：</font></strong>   

<a href="http://http://reviews.imp3.net/bn/nookcolor/winima85.zip" target="_blank">WinImage 8.50</a>，制作破解卡的软件。  

<a href="http://reviews.imp3.net/bn/nookcolor/sdformatter.rar" target="_blank">SD卡格式化工具</a>，恢复破解卡原始容量，直接格式化是无法恢复容量的。  

<a href="http://images.barnesandnoble.com/presources/download/nookcolor/v1.0.1/Sideload_update.zip" target="_blank">官方1.0.1ROM</a>，最早一批机器是1.0.0的ROM。  

<a href="http://images.barnesandnoble.com/presources/download/nookcolor/v1.1/Sideload_update.zip" target="_blank">官方1.1.0ROM</a>，我自己的机器是1.0.1的ROM。  

<a href="http://reviews.imp3.net/bn/nookcolor/pbpai.com-nookcolor-rom1.1.0-v0.9.5-20110219.rar" target="_blank">Nook Color 破解集成包 v0.9.5</a>，bbs.imp3.net上嘟嘟在auto_rooter 3.0.0基础上的修改版,比较适合国人使用，只针对1.1.0的ROM。  

<a href="http://reviews.imp3.net/bn/nookcolor/pbpai.com-nookcolor-rom1.0.1-v0.9.3-20110125.rar" target="_blank">Nook Color 破解集成包 v0.9.3</a>，bbs.imp3.net上嘟嘟在auto_rooter 2.12.25基础上的修改版,比较适合国人使用，针对1.0.1的ROM。  

<a href="http://u.115.com/file/f6ef59a905" target="_blank">auto_rooter 3.0.0</a>，国外高手制作的破解文件，同样只针对1.1.0的ROM。  

<a href="http://http://reviews.imp3.net/bn/nookcolor/adb.rar" target="_blank">USB驱动和adb程序包</a>，用于解决电脑上设备管理器无法找到 Nook 设备的情况。  

需要有WIFI网络。  

需要一张MicroSD卡（TF卡），并最好有一个读卡器，据说笔记本自带的那种读卡器会有问题。 

<font style="background-color: #9bbb59"><strong>判断自己的Nook Color是什么情况：</strong></font>   

情况一：新机器但不是最新的ROM（最新的ROM是1.1.0），先注册或者登录 B&N 账号并进入到桌面，然后升级到最新的ROM。  

情况二：新机器且已经是最新的ROM（最新的ROM是1.1.0），先注册或者登录 B&N 账号并进入到桌面。  

情况三：已经破解过的机器，先恢复到出厂状态（本文最后有详细的恢复到出厂状态步骤），然后升级到最新的ROM（最新的ROM是1.1.0）,再注册或者登录 B&N 账号并进入到桌面。 

<font style="background-color: #9bbb59"><strong>下面开始正式破解：</strong></font>   

1、将上述的那些下载的东西全部解压，备用。  

2、制作破解卡  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/0001.png"><img style="background-image: none; border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="0001" border="0" alt="0001" src="http://www.hopes4.me/wp-content/uploads/2011/03/0001_thumb.png" width="454" height="345"></a>  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/0002.png"><img style="background-image: none; border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="0002" border="0" alt="0002" src="http://www.hopes4.me/wp-content/uploads/2011/03/0002_thumb.png" width="454" height="345"></a>  

打开映像文件，如看不到img格式的映像文件，请在“打开”按钮上面选择 all files(*.*)。  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/0003.png"><img style="background-image: none; border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="0003" border="0" alt="0003" src="http://www.hopes4.me/wp-content/uploads/2011/03/0003_thumb.png" width="454" height="345"></a>  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/0004.png"><img style="border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="0004" border="0" alt="0004" src="http://www.hopes4.me/wp-content/uploads/2011/03/0004_thumb.png" width="454" height="345"></a>  

<a href="http://www.hopes4.me/wp-content/uploads/2011/03/0005.png"><img style="border-right-width: 0px; padding-left: 0px; padding-right: 0px; display: block; float: none; border-top-width: 0px; border-bottom-width: 0px; margin-left: auto; border-left-width: 0px; margin-right: auto; padding-top: 0px" title="0005" border="0" alt="0005" src="http://www.hopes4.me/wp-content/uploads/2011/03/0005_thumb.png" width="454" height="345"></a>  

制作好的破解卡只能看到一个容量为40M左右的磁盘，实际还有个隐藏的磁盘无法看到。破解卡用完后直接格式化是无法恢复容量的，需要使用上文提到的<a href="http://reviews.imp3.net/bn/nookcolor/sdformatter.rar" target="_blank">SD卡格式化工具</a>才能恢复容量。  

3、彻底关闭Nook Color，长按电源键，然后选择power off。  

4、将破解卡放到卡槽内。  

5、用随机自带的数据线连接Nook Color和电脑，此时Nook Color依然保持黑屏，但实际上已经开始自动进行破解，电脑上会提示找到一个新的usb device并会提示说找不到驱动，不用管。  

6、大约2分钟左右，Nook Color会自动重启，这样破解就宣告成功！  

7、在欢呼的同时可以断开Nook Color和电脑，并进行下面的一些设置工作。  

8、具体的一些破解后的设置：  

1）、进入系统后，会有提示设置google账号，选择跳过。  

2）、选择ADW进入桌面，找到Nook Color Tools。  

3）、打开Nook Color Tools，可以看到Allow Non-Market Apps（允许安装非官方电子市场应用软件） 的默认状态是勾选的，但实际并未生效，需要先去掉勾选再重新勾选一下。  

4）、Nook Color Tools 里面的键盘默认是英文的，可以点 Choose Keyboard 来选择百度输入法。  

5）、打开gmail，提示设置google账号，此时再进行设置。  

9、再次彻底关闭Nook Color，并取出破解卡，否则再次重启时会造成不明影响。 

<strong><font style="background-color: #9bbb59">附录一、恢复出厂状态：</font></strong>   

2种方法，请自己选择  

1、用数据线连接电脑，在DOS窗口，执行以下命令（电脑要安装好adb驱动）：  
{% codeblock %}
adb shell    
echo -n -e "\x08\x00\x00\x00" > /rom/devconf/BootCnt     
reboot 
{% endcodeblock %}

执行完上面的命令，Nook Color 会自动重启并开始刷出厂时自带的ROM，等待刷完ROM后会自动重启。  

2、使用GScript  

1）、先下载<a href="http://reviews.imp3.net/software/android/gscript/gscript.rar" target="_blank">GScript</a>（内含常用的脚本）。  

2）、装入相应的脚本，恢复出厂ROM.sh。  

3）、执行即可。 

<strong><font style="background-color: #9bbb59">附录二、ROM升级方法：</font></strong>   

1、电量保持 20% 以上，取下TF卡，USB数据线连接电脑，Nook Color 解除锁屏。  

2、将下载好的ROM文件 Sideload_update.zip 拷贝到盘符是 MyNOOKcolor 的可移动磁盘中，ROM文件不要解压，不要改名，也不要做任何修改。  

3、在电脑上安全弹出盘符是 MyNOOKcolor 的可移动磁盘，这时不要做任何操作，也不要关机，等待 Nook Color 自动重启。  

4. 重启后 Nook Color 会开始刷ROM，完成后会自动重启，重启后 ROM 升级就完成了。
