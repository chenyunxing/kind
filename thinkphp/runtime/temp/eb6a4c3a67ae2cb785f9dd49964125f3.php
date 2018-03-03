<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:79:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\addcu.html";i:1502822427;}*/ ?>
<section class="wrapper">
  <form id= "uploadForm" enctype="multipart/form-data" style="display: none">  
    <input type="file" id="file1" name="file"/>
  </form>
  <h3>上传课表</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>请选择先上传文件后输入文件名并确定保存</h4>
                <div class="form-inline">
                  <div class="form-group">
                      <label>&nbsp;点击进行导入课表:</label>                       
                  </div>
                  <button id="buttona" class="btn btn-theme">开始导入</button>
              </div>
                <hr>
                <h4>预览区:</h4>
                <div id="chose" class="form-inline" style="margin-left: 1%;display: none;">
                  <p style="display: inline;">请输入课程名然后确定上传:</p>
                  <input class="form-control" id='kecheng'>
                  <button  class="btn btn-theme" id="sure">确定上传</button>
                </div>
                <table class="table table-bordered table-striped table-condensed">
                  <tbody id="tbody">
                    
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>