--- 
categories: 
  - "about blog"
comments: true
layout: post
published: true
status: publish
tags: 
  - Gravatar
  - 折腾
  - 缓存
title: 还在折腾：十行代码搞定Gravatar缓存
type: post
---
<span class="inner_title">这次折腾的目的</span>
我的博客上有3个地方用到了Gravatar，留言+灌水榜+“伟大的墙”，特别是墙每次打开都是缓慢地读头像图片，让我很不舒服。
<span class="inner_title">这次折腾的参考</span>
因为本人在这方面是小白，所以首先当然是去参考前人+高手们的经验之谈，总结下来有两种方法：
<!--more-->

一、使用“GRAVATAR CACHE”这个组件（注意不是插件），其步骤比较繁琐。
代表人物分别是：
<a href="http://ishawn.net">Shawn</a>的<a href="http://ishawn.net/my-blog-related/cache-gravatar-into-local-server.html">《如何缓存 Gravatar 至本地服务器》</a>
<a href="http://zou.lu/">Showfom</a>的<a href="http://zou.lu/change-hosting-and-cache-gravatar/">《更换空间 + 再次提速之 Gravatar 头像缓存》</a>
<a href="http://www.life-studio.cn/">万戈</a>的《缓存 Gravatar 头像至本地服务器》
二、直接使用php代码来搞定，其步骤相对简单。
代表人物：
<a href="http://willin.heliohost.org/">willin</a>的<a href="http://willin.heliohost.org/?p=1277" target="_blank">《簡易的 GRAVATAR 頭像緩存》</a>
<span class="inner_title">这次折腾的操作</span>
标题已经夸下海口，十行代码搞定，所以不拿出来献丑是不行的了。我的代码主要是参考了<a href="http://willin.heliohost.org/">willin</a>的，然后稍做改动以适应我自己的需要。

{% codeblock %}

function my_avatar($email, $rating, $size, $default){
$p = 'avatar/';//这个是指在wp-content下建立一个权限为755并且名称为avatar的文件夹
$f = md5(strtolower($email));//根据email得到Gravatar头像的文件名
$a = $p . $f .'.jpg';//加上jpg后缀
$e = ABSPATH . 'wp-content/' . $a;//Gravatar头像在服务器上的路径
$t = 1209600;    //设定为14天，单位:秒，可按需自己改
if ( !is_file($e) || (time() - filemtime($e)) >    $t ){ //当头像不存在或文件超过14天才更新
$g = '<a href="http://www.gravatar.com/avatar/'">http://www.gravatar.com/avatar/'</a>.$f.'.jpg?s='.$size.'&d='.$default.'&r='.$rating;//获取头像的地址
copy($g, $e);//保存头像到本地服务器
}
return get_bloginfo('home').'/wp-content/' . $a;//返回本地服务器上头像的地址
}


{% endcodeblock %}

下面简单说一下步骤：
1、先在wp-content下建立一个权限为755并且名称为avatar的文件夹。
2、把上面的代码贴到主题下的functions.php文件里。
3、在需要的地方引用即可。
<span class="inner_title">这次折腾的收获</span>
总有人曾教导我们，要总结才会有收获，OK,我就总结一下吧：
1、全站Gravatar头像缓存到本地服务器，包括插件展示的，提升博客速度（心理作用使然）。
2、开始有点了解php和wordpress，感觉--值得深入！
3、继续发扬“生命不息，折腾不止”的崇高精神，得到心灵上的升华。
O了。
