<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:86:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\student\show.html";i:1505385072;}*/ ?>
﻿<!DOCTYPE html>
<html>
   <head>
      <title>查询结果</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- 引入 Bootstrap -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
   <style>
      @media screen and (max-width: 500px) {
         body {
           width: 500px;
         }
      }
      .contain {
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
      }
      #left_main{
         padding: 1rem 1rem 1rem 1rem;
         text-align: center;
      }
      #left_main_up{
         padding: 0.1rem 0 0.5rem 0;
      }
      #information{
         color: #e0d2d4;
         font-size: 1em;
      }
      #grouping{
         font-size: 1em;
         margin:1rem auto;
         border-radius:10px;
         border:10px #000 ;
         background: #fff;
         padding:0.5rem 1rem 0.5rem 1rem;
      }
      #grouping h3{
         text-align: center;
         font-family: "微软雅黑";
         font-size: 1.2em;
         margin:1rem 0 0 0;
      }
      .dividing{
         background: #fff;
         margin-top: 1%;
         margin-left: 7%;
         margin-bottom: 8%;
         height:1px;
         width:85%;
         border:none;
         box-shadow:2px 2px 5px rgba(0,0,0,.3);
      }
      #left_main_down{
         padding:0.5rem 1rem 0.5rem 1rem;
         background:#fff;
         border-radius:10px;
         border:10px #000 ;
      }
      .fontcenter{
         text-align: center;
      }
      #left_main_down h3{
         text-align: center;
         font-family: "微软雅黑";
         font-size: 1.2em;
         margin:1rem 0 0 0;
      }
      span{
         color: red;
      }
      /*右边样式*/
      #right_main{
         padding:1rem;
      }
      #main{
         /*padding: 0.6rem auto;*/
         margin:0.5rem;
         background:#fff;
         border-radius:10px;
         border:10px #000 ;
         padding: 0.7rem 0 0.7rem 0;
      }
      #main h3{
         margin:1rem 0 1rem 0;
         text-align: center;
         font-size: 1.2em;
      }
      #main table{
         /*margin:2% 0 0 5%;*/
         margin:0 auto;
         width: 95%;
      }
      #main th,td{
         width: 5%;
         text-align: center;
         font-weight:bold;
      }
      .last{
         margin:1% 0 0 5%;
         color: red;
      }
      /*底部样式*/
      footer{
         /*position: relative;*/
         font-family: '微软雅黑';
      }
      footer #copy{
         text-align: center;
         font-size: 1.2em;
         padding:0.5rem 0 0.5rem 0;
      }
   </style>
      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
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
      <div id="left_main" class="col-md-2">
         <div id="left_main_up">
<!--             <div id="information">
               <p>&gt;&gt;<?php echo $stuname; ?>查询结果如下:</p>
            </div> -->
            <div id="grouping">
               <h3>查询结果</h3>
               <div class="dividing"></div>
               <p><span><?php echo $stuname; ?></span>查询结果如下:你的组号为<span><?php echo $stugroup; ?></span>，在右边的课程表已为你用<span>红色字体</span>标注，请仔细阅读。</p>
            </div>
         </div>
         <div id="left_main_down">
            <h3>实习地点</h3>
            <div class="dividing"></div>
            <p>B3一楼：<span>普车、普洗<span></p>
            <p>B3三楼：<span>钳工</span></p>
            <p>B4一楼：<span>铸造、冲压、模具、加工中心、数控冲床</span></p>
            <p>B4二楼：<span>数控车、数控铣、PLC、电火花、线切割</span></p>
            <p>B4三楼：<span>快速成型、焊接、热处理</span></p>
            <h3>实习时间</h3>
            <div class="dividing"></div>
            <p class="fontcenter">上午：<span>8:40 -- 12:00</span></p>
            <p class="fontcenter">下午：<span>2:15 -- 17:00</span></p>
            <h3>考试时间</h3>
            <div class="dividing"></div>
            <p class="fontcenter"><span>留意考试通知</span></p>
         </div>
      </div>
      <div id="right_main" class="col-md-10">
         <div id="main">
            <h3><?php echo $stuclass; ?>实习安排表</h3>
            <table  class="table table-bordered table-condensed">
               <?php
                  for ($i=0; $i <$hang ; $i++) { 
                     echo '</tr>';
                     for ($f=0; $f <$line ; $f++) {
                        $temp=explode(':',$data[$i][$f],2);
                        if($temp[0]==0&&$temp[1]==0){continue;}
                        if($i>=3&&$f>=3&&$i<($hang-2))
                        $sheetData[$i][$f]=str_replace($stugroup,"<span style='color: #red;'>".$stugroup."</span>",$sheetData[$i][$f]);
                        if($sheetData[$i][$f])
                        echo "<td rowspan=".$temp[1]." colspan=".$temp[0].">".$sheetData[$i][$f]."</td>";
                     }
                     echo '</tr>';
                  }
               ?> 
            </table>
            <p class="last">递交实习总结时间:实习结束的一周内由班长统一收交到工程训练办公室（每位同学同时提交电子文档，发送邮件到Duanhaifeng5@qq.com）</p>
         </div>
      </div>
   </div>
   <footer>
      <div id="copy">
         <p>Copyright &copy; 2016-2017 华南理工大学广州学院机械工程学院 版权所有 <br>网站联系人 ：童州 &nbsp;&nbsp;&nbsp;联系电话：36903100</p>
      </div>
   </footer>
   </div>
      <!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
      <script src="__ROOT__/static/js/jquery-3.2.1.min.js"></script>
      <!-- 包括所有已编译的插件 -->
      <script src="__ROOT__/static/bootstrap/js/bootstrap.min.js"></script>
   </body>
</html>