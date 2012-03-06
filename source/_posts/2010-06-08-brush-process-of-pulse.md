--- 
categories: 
  - android
comments: true
layout: post
published: true
status: publish
tags: 
  - pulse
  - 刷机
  - 手机
title: Pulse(u8220)2.1rom刷机过程备忘
type: post
---
这篇日志其实是写给自己看的，备忘是主要的目的，当然如果能有朋友也需要那是再好没有。不过事先要申明一点的是，如果你按着我的流程刷机变砖，我可是不负并且也负不了责任的哦（前提：我自己肯定是成功的）。  

准备工作：  

目前比较稳定的2.1版本的rom是匈牙利的2.1rom，然后安卓论坛上的Pulse版块里有很多高手放出他们精简的rom，我个人用的是r7-pulse-mcr-a2sd-vanilla-streamlined-by-dawndark这个rom，刷完机内存有70多M空余，并且很稳定，用下来没有什么重启和报错。另外在刷机过程中还需要Pulse的PC-Suit（就是手机的驱动）和1.5.2-pulse-recovery（为了做recovery）。  

准备好上面所说的那几个文件，把手机充足电（其实刷机过程很快）再拿上数据线，打开电脑就可以开工了。最后，请确认手机当前在用的是1.5的rom，并做过recovery。  

具体步骤：  

1、安装好PC-Suit，备用  

2、按红色挂机键+MENU键+开机键，进入recovery模式，用轨迹球选择主菜单的第5个选项wipe，wipe5个子选项  

3、还是在recovery模式内，选择主菜单里的第2个选项USB-MS toggle，通过数据线把匈牙利rom解压到SD卡内，确保dload目录是在SD卡根目录，退出usb模式  

4、拨电池，然后按音量增大键+红色挂机键+开机键，进入系统升级状态，直到进度条全部完成显示一个绿色的勾，再次拨电池  

5、再次进入recovery模式并激活usb，将之前从匈牙利rom内解压出来的CUSTOMIZED_HU这个目录里的dload目录替换掉SD卡根目录上的那个，然后重复第4步的操作（这里有一点要注意：这么做的目的是为了保证匈牙利rom里的桌面底部4个图标不错位，但如果你是要再刷其他的custom rom的话，可能custom rom会改变桌面的布局，而这一步就变为并不是必须的）  

6、按音量减小键+红色挂机键+开机键，进入bootloader模式，把数据线连上电脑，执行1.5.2-pulse-recovery这个压缩包内的1.5.2-pulse-amonrarecovery\install-recovery-windows.bat，然后再拨电池（在刷1.5的rom做recovery时，这个步骤会在手机屏幕上看到ok的字样，2.1rom将没有任何变化，但是recovery还是成功的）  

7、再一次进入recovery模式并激活usb，将custom rom（之前介绍的类似r7-pulse-mcr-a2sd-vanilla-streamlined-by-dawndark的）直接放到SD卡上，不用解压，然后回到主菜单选择第4个选项flash zip from sdcard，按提示进行操作  到此基本上刷机已经是大功告成了，要注意的是在手机上操作，确认都是用绿色通话键，取消是其他任何键。  由于Pulse的内存比较小，所以如果想比较爽地使用Pulse，还是有必要做一下app2sd的。需要做app2sd的，请再按下面的步骤继续，不需要做的直接reboot system now。  

8、选择主菜单上的第6个选项partition sdcard，然后是partition sd，用轨迹球设置swap的大小（建议设置为0）。然后再是设置ext的大小，直接用默认的512M就可以了，然后确认，等手机完成这个操作  

9、选择sd:ext2 to ext3，确认，再等待  

10、sd:ext3 to ext4我个人不建议做，反正我做了之后就死活进不了系统  

11、回到主菜单选择最下面的other选项，再选择Fix apk uid mismatches（不能选错）  

12、返回主菜单，reboot system now  

总共12步全部完成，如果顺利的话一般2-3分钟就能看到一个绿色的机器人了，相比黑莓至少7-8分钟才能进系统要快多了。  

2.1rom的刷机过程基本上就是这样了，操作熟练了一般10分钟就能搞定，方便快捷！留此文备忘，年纪大了，有些东西老是记不住。
