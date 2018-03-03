<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:92:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\student\shownotice.html";i:1505384570;}*/ ?>
﻿<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>公告</title>
	<style>
		/*顶部样式*/
		#head{
			padding: 0% 0 1% 0%;
		}
		#logo{
			/*width: 50%;*/
		}
		#logo img{
			width: 60%;
		}
		*{
			margin:0;
			padding:0;
			font-family: "微软雅黑";
		}
		#wrap_content{
			overflow: hidden;
			width: 100%;
			height: 75%;
			background: url('__ROOT__/static/imgage/background.jpg') no-repeat;
			background-size:cover;		
		}
		#content{
			margin:0 auto 10px;
			width: 75%;
			background:#eee;
			padding: 0 5% 0 5%;
		}
		#title{
			margin:10px auto;
		}
		h3{
			text-align: center;
			margin-bottom: 10px;
		}
		hr{
			height:2px;
			border:none;
			box-shadow:2px 2px 5px rgba(0,0,0,.3);
		}
		footer{
			text-align: center;
		}
	</style>
	<script type="text/javascript" charset="utf-8" src="__ROOT__/static/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<header id="head">
		<a  href="index.html">
			<div id="logo">
				<img border="0" src="__ROOT__/static/imgage/title.png">
			</div>
		</a>
	</header>
	<div id="wrap_content">
		
		<div id="content">
			<div id="title">
				<h3><?php echo $data[0]['title']; ?></h3>
				<hr>
			</div>
			<?php echo $data[0]['content']; ?>
		</div>
	</div>
	<footer>
		<div id="copy">
			<p>Copyright &copy; 2007-2016 华南理工大学广州学院机械工程学院 版权所有 网站及院务联系 ：郭培虹 guoph@gcu.edu.cn</p>
		</div>
	</footer>
	<script>
	$(document).ready(function(){
		var imglist=$("#content").find('img');
		var contentwidth=$('#content').width();
		imglist.each(function(){
			if($(this).width()>contentwidth){
				$(this).width('100%');
			};
		});
	});
	</script>
</body>
</html>