<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:83:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\upstudent.html";i:1502823478;}*/ ?>
<section class="wrapper">
  <form id= "uploadForm" enctype="multipart/form-data" style="display: none">  
    <input type="file" id="file1" name="file"/>
  </form>
  <h3>导入学生信息</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <div class="form-inline">
                  <div class="form-group">
                      <h4>点击进行导入学生信息（请按顺序导入）:</h4>                     
                  </div>
                  <button id="buttona" class="btn btn-theme">开始导入</button>
              </div>
                <hr>
                <h4 style="display: inline;">预览区:</h4>
                <button id="sure" class="btn btn-theme" style="margin-left: 1%;display: none;">确定导入</button>
                <table class="table table-bordered table-striped table-condensed">
                  <tbody id="tbody">
                    
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>