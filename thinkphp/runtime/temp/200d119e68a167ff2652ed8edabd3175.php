<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:79:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\student\index.html";i:1505385036;}*/ ?>
﻿<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>金工实习</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入 Bootstrap -->
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<style>
		.contain {
			padding: 0 15px;
		}
		#containless{
			padding: 0 15px;
		}
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
		/*中央样式*/
		#wrap_content{
			overflow: hidden;
			background: url('__ROOT__/static/imgage/background.jpg') no-repeat center;
			background-size:cover;
			padding: 10% 5% 10% 5%;
		}
		#main{
			border-radius:10px;
			border:10px #000 ;
			background: #fff;
		}
		#notice{
			padding: 3% 2% 0 2%;
		}
		#notice_head{
			width: 100%;
		}
		#notice_head img{
			display: inline;
			width: 6%;
		}
		#notice_head p{
			font-weight: bolder;
			margin-left: 3%;
			color: #185da2;
			font-size: 2.5rem;
			display: inline;
		}
		#notice_list{
			overflow: hidden;
			width: 100%;
			margin-top: 4%;
		}
		#notice_list li{
			/*height: 10%;*/
			font-weight: bold;
			font-size: 1.7rem;
			list-style:none;
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
		}
		#notice_list li + li{
			margin:2% 0 2% 0;
		}
		#notice_list ul{
			padding: 0;
		}
		a{
			text-decoration: none;
			color: #000;
		}
		#select{
			padding-top: 4%;
			padding-right: 2%;
		}
		#select_head{
			width: 100%;
			text-align: center;
			font-size: 2.1rem;
			font-weight: bolder;
		}
		#select_head p{
			padding:0;
		}
		#select form{
			width: 100%;
			height: 100%;
		}
		#select input{
			margin-top: 8%;
			margin-left: 10%;
			border: 1px solid #000;
			width: 80%;
		}
		#select_submit{
			font-size: 1.7rem;
			font-weight: bolder;
			border: 0;
			width:76%;
			/*height: 10%;*/
			background: #0164cc;
			color: #fff;
			text-align: center;
			margin-bottom: 2%;
		}
		#select_stuname{
			background: url('__ROOT__/static/imgage/user.png') 2% no-repeat;
			background-size: 10% 77%;
			padding-left: 10%;
		}
		#select_stunum{
			background: url('__ROOT__/static/imgage/pass.png') 2% no-repeat;
			background-size: 10% 65%;
			padding-left: 10%;
		}
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
			-webkit-appearance: none;
		}
		input[type="number"]{
			-moz-appearance: textfield;
		}
		/*底部样式*/
		footer{
			font-family: '微软雅黑';
		}
		footer #copy{
			text-align: center;
			font-size: 1.2em;
			padding:0.5rem 0 0.5rem 0;
		}
		@media screen and (max-width: 990px) {
			#dividing{
				background: #fff;
				margin-left: 2%;
				height:1px;
				width:95%;
				border:none;
				box-shadow:2px 2px 5px rgba(0,0,0,.3);
			}
			#notice{
				text-align: center;
			}
		}
	</style>
	<script type="text/javascript" charset="utf-8" src="__ROOT__/static/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="contain">
	<header id="head">
		<a  href="index.html">
			<div id="logo">
				<img border="0" src="__ROOT__/static/imgage/title.png">
			</div>
		</a>
	</header>
	<div id="wrap_content" class="row">
		<div id="main" class="col-md-6 col-md-push-5">
			<div id="containless" class="row">
			<div id="notice" class="col-md-6">
				<div id="notice_head">
					<img src="__ROOT__/static/imgage/kind.png">
					<p>金工实习通知</p>
				</div>
				<div id="notice_list">
					<ul>
						<?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
						<li><a href="<?php echo url('index/student/shownotice'); ?>?p=<?php echo $vo['id']; ?>">▪ <?php echo $vo['time']; ?>&nbsp;|&nbsp;<?php echo $vo['title']; ?></li></a>
						<?php endforeach; endif; else: echo "" ;endif; ?>
					</ul>
				</div>
			</div>
			<div id="dividing"></div>
			<div id="select" class="col-md-6">
				<div id="select_head">
					<p>学生查询</p>
				</div>
				<form action="<?php echo url('index/student/show'); ?>" method="POST" onsubmit="return check()">
					<input class="form-control" id="select_stuname" name="stuname" type="text" placeholder="请输入学生姓名">
					<input class="form-control" id="select_stunum" type="number" name="stunum"  maxlength="12" placeholder="请输入学生学号">
					<input class="btn btn-default" type="submit" id='select_submit' value="查&nbsp;询">
				</form>
			</div></div>
		</div>
	</div>
	<footer>
		<div id="copy">
			<p>Copyright &copy; 2016-2017 华南理工大学广州学院机械工程学院 版权所有 <br>网站联系人 ：童州  &nbsp;&nbsp;&nbsp;联系电话：36903100</p>
		</div>
	</footer>
	</div>
	<script>
	function check(){

		stuname=$("#select_stuname").val().replace(/^\s+|\s+$/g,"");
		stunum=$("#select_stunum").val().replace(/^\s+|\s+$/g,"");
		// alert(stunum);
		// alert(stuname);
		if(stuname==''||stunum==''){
			alert('学号和姓名不能为空');
			return false;
		}else{
			return true;
		}
	}
	</script>
	<!-- 包括所有已编译的插件 -->
	<script src="__ROOT__/static/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>