<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:95:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\kaoshichengji.html";i:1505979159;}*/ ?>
<section class="wrapper">
  <form id= "uploadForm" enctype="multipart/form-data" style="display: none">  
    <input type="file" id="file1" name="file"/>
  </form>
  <h3>导入机考成绩</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>请选择先上传机考成绩文件后确定上传<br>同名者将在下方显示，并且后期请将数据从导入实验成绩处重新导入</h4>
                <div class="form-inline">
                  <div class="form-group">
                      <label>&nbsp;点击进行导入成绩:</label>                       
                  </div>
                  <button id="buttona" class="btn btn-theme">开始导入</button>
              </div>
                <hr>
                <h4>预览区:</h4>
                <div id="chose" class="form-inline" style="margin-left: 1%;display: none;">
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