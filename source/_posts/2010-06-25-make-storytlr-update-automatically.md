--- 
categories: 
  - "about blog"
comments: true
layout: post
published: true
status: publish
tags: 
  - "cron job"
  - lifestream
  - storytlr
title: storytlr自动更新的实现
type: post
---
其实我用子域名在空间里建这个lifestream已经有段时间了，也一直能实现自动更新，只是正好有人问我要如何实现，所以才有了此文。  我的空间是cpanel的面板，所以我也只会在cpanel里面弄，下面的截图也是cpanel的。  

<div><img style="display: block; float: none; margin-left: auto; margin-right: auto" title="时钟守护作业" alt="时钟守护作业" src="http://storage.live.com/items/B7436849503DA4DE!912?filename=ScreenShot_2010-06-25_140946.jpg" width="450" height="241"></div>  

时钟守护作业，其实就是cron job，熟悉linux的人都应该不会陌生。要使得storytlr能自动更新，其实我们要做的就是创建一个cron job，请详细看下面的官方解说：  

Updating Your Sources    <br>Storytlr doesn't automatically update itself, so you will need to help it out.   The file /protected/tools/update.php is a command line PHP script that will update a single user's sources.   To try it, run:   $ php5 protected/tools/update.php admin    <br>To make this update regularly, you'll need to set up a cron job, sometimes called a scheduled task by web hosts.   There are various ways to set up a cron job, often your web host will provide a web based interface to create the job.   Here is an example crontab that will run the update script every 15 minutes:   */15 * * * * /usr/bin/php5 /home/jmhobbs/storytlr/protected/tools/update.php admin    <br>Note that your cron job will differ, paths to PHP and your source code are dependent on the host. Please check with your hosting company if you have trouble setting up a cron job.   

一切就是这么简单，所以也弄得我的这篇日志也好像很没有营养，再介绍一点何为storytlr来丰富一下内容吧。  

<strong>Bring your content together</strong>  <ul>
<li>
<strong>Import your web 2.0 life:</strong> Pick your sources and they will appear as a lifestream directly on your site. We currently support the following services: <tt>Delicious, Digg, Disqus, Flickr, Google Reader, Identi.ca / Laconi.ca, Last.fm favorites, Picasa, Qik, RSS Feeds, Seesmic, StumbleUpon, Tumblr, Twitpic pictures in Twitter tweets, Twitter, Vimeo, Youtube Favorites</tt> </li>    <li>
<strong>Post anything you want:</strong> In just a few simple steps you can update your status, share a song you liked, give your opinion or link to an interesting site. </li> </ul>
<strong>Mashup your data into stories</strong>  <ul>
<li>
<strong>Tell your stories in a new way:</strong> Photo albums are old school! Pick your sources, start and end date and your story is good to go. If necessary you can tweak it for a better flow. </li> </ul>
<strong>Reinvent your homepage</strong>  <ul>
<li>
<strong>Choose your own style:</strong> Pick from a range of compelling templates that are easy to customize. </li>    <li>
<strong>No prominent service branding:</strong> It is all about you, so you will not find big logos or fixed brand colors on storytlr. </li>    <li>
<strong>Pick or use your own domain name:</strong> You are free to use any domain you want. </li> </ul>   

好了，介绍完毕，再顺便给我自己的storytlr广告一下吧 ~ <a href="http://story.hopes4.me" target="_blank"><strong><em><font color="#808000">我的网络生活</font></em></strong></a>
