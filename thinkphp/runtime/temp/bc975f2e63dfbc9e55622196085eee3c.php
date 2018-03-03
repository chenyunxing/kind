<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:90:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\readylogin\index.html";i:1502608504;}*/ ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>登录 - 金工管理系统管理后台</title>

    <!-- Bootstrap core CSS -->
    <link href="__ROOT__/static/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="__ROOT__/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="__ROOT__/static/assets/css/style.css" rel="stylesheet">
    <link href="__ROOT__/static/assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
      function check(){
        var username = document.getElementById("username").value.replace(/^\s+|\s+$/g,"");
        var password = document.getElementById("password").value.replace(/^\s+|\s+$/g,"");
        if(username == ""||password == ""  ){
          alert("用户名和密码不能为空");
          return false;
        }
        document.getElementById("formid").submit();
      }
    </script>
  </head>

  <body>
	  <div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" id="formid" method="POST" action="<?php echo url('index/readylogin/justlogin'); ?>">
		        <h2 class="form-login-heading">登录管理后台</h2>
		        <div class="login-wrap">
		            <input type="text" name="username" id="username" class="form-control" placeholder="用户名" autofocus>
		            <br>
		            <input type="password" name="password" id="password" class="form-control" placeholder="登录密码">
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal">忘记密码?</a>
		
		                </span>
		            </label>
		            <button class="btn btn-theme btn-block" type="submit" onclick="check()"><i class="fa fa-lock"></i> 登 录</button>
		            <hr>
		            
		            <div class="login-social-link centered">
		            <p>金工管理系统管理后台</p>
		            </div>
		            <div class="registration">
		                guoph@gcu.edu.cn
		            </div>
		
		        </div>
		      </form>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">忘记密码?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>你还真点忘记密码啊？没有这个功能！！</p>
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">关闭</button>
		                          <button class="btn btn-theme" type="button">好吧</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="__ROOT__/static/assets/js/jquery.js"></script>
    <script src="__ROOT__/static/assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="__ROOT__/static/assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("__ROOT__/static/assets/img/login-bg.jpg", {speed: 500});
    </script>
  </body>
</html>
