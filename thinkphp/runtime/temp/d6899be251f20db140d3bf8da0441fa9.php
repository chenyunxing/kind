<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:78:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\backup\index.html";i:1520666842;}*/ ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    
    <title>后台管理</title>
  
    <!-- Bootstrap core CSS -->
    <link href="__ROOT__/static/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="__ROOT__/static/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="__ROOT__/static/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="__ROOT__/static/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="__ROOT__/static/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="__ROOT__/static/assets/css/style.css" rel="stylesheet">
    <link href="__ROOT__/static/assets/css/style-responsive.css" rel="stylesheet">

    <script src="__ROOT__/static/assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" charset="utf-8" src="__ROOT__/static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="__ROOT__/static/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="__ROOT__/static/ueditor/lang/zh-cn/zh-cn.js"></script>
    <!-- ajax -->
    <script type="text/javascript" charset="utf-8" src="__ROOT__/static/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="__ROOT__/static/css/tishi.css?a=2">
    <script src="__ROOT__/static/js/common.js?q=3"></script>
    <script>var _root='__ROOT__'; var now='index1';//存储当前页面</script>
    <script src="__ROOT__/static/layer/layer.js"></script>
    <script src="" id='other'></script>
    <script id='temp'></script>
  </head>
  <body>
  <div id="fugai">
    <div id="tishi"  class="modal-body">
      <p>提交中，请耐心等待</p>
    </div>
  </div>
  <section id="container" >
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>金工管理系统</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
            </div>
            <div class="top-menu">
              <ul class="nav pull-right top-menu">
                    <li><a class="logout" href="<?php echo url('index/shuaige/loginout'); ?>">退出登录</a></li>
              </ul>
            </div>
        </header>
      <!--header end-->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  <p class="centered"><img src="__ROOT__/static/assets/img/ui-sam.jpg" class="img-circle" width="60"></p>
                  <h5 class="centered">管理员菜单</h5>
                    
                  <!-- <li class="mt">
                      <a class="active" href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>公告发布</span>
                      </a>
                  </li> -->

                  <!-- <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>通知管理</span>
                      </a>
                      <ul class="sub">
                          <li id="ajax1" ajax="index1"><p>发布新通知</p></li>
                          <li  id="ajax2" ajax="modify"><p>管理通知</p></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>课程管理</span>
                      </a>
                      <ul class="sub">
                          <li id="ajax3" ajax="chosecu"><p>管理课程</p></li>
                          <li id="ajax4" ajax="addcu"><p>新增课程</p></li>
                          <li id="ajax5" ajax="showkecheng"><p>查看当前使用课程</p></li>
                      </ul>
                  </li> -->
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>学生信息管理</span>
                      </a>
                      <ul class="sub">
                          <li  id="ajax6" ajax="upstudent"><p>导入学生信息</p></li>
                          <li  id="ajax7" ajax="lookstu"><p>查看学生信息</p></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>学生分组</span>
                      </a>
                      <ul class="sub">
                          <li id="ajax8" ajax="group"><p>进行学生分组</p></li>
                          <li id="ajax9" ajax="changegroup"><p>修改学生分组</p></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>成绩统计</span>
                      </a>
                      <ul class="sub">
                          <li id="ajax10" ajax="template"><p>导出成绩表模板</p></li>
                          <li id="ajax11" ajax="upachievement"><p>导入单科成绩</p></li>
                          <li id="ajax12" ajax="changeown"><p>清除单科成绩</p></li>
                          <li id="ajax18" ajax="upchengjionline"><p>在线修改成绩</p></li>
                          <li id="ajax17" ajax="kaoshichengji"><p>导入机考成绩</p></li>
                          <li id="ajax13" ajax="upshiyan"><p>导入实验成绩</p></li>
                          <li id="ajax14" ajax="summary"><p>成绩统计</p></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>结束课程</span>
                      </a>
                      <ul class="sub">
                          <li  id="ajax15" ajax="over"><p>结束课程</p></li>
                          <li  id="ajax16" ajax="back"><p>还原历次数据</p></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      
      <section id="main-content">
      </section>
      <section id="main-content2"></section>
      <!--main content end-->
      <!--footer start-->
      <!-- <footer class="site-footer">
          <div class="text-center">
              2017 - kind
              <a href="index.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer> -->
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="__ROOT__/static/assets/js/jquery.js"></script>
    <script src="__ROOT__/static/assets/js/jquery-1.8.3.min.js"></script>
    <script src="__ROOT__/static/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="__ROOT__/static/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="__ROOT__/static/assets/js/jquery.scrollTo.min.js"></script>
    <script src="__ROOT__/static/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="__ROOT__/static/assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="__ROOT__/static/assets/js/common-scripts.js"></script>

  </body>
</html>
