<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:87:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\upachievement.html";i:1502887905;}*/ ?>
<section class="wrapper">
  <form id= "uploadForm" enctype="multipart/form-data" style="display: none">  
    <input type="file" id="file1" name="file"/>
  </form>
  <h3>导入单科成绩</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>请选择先上传文件后选择工种</h4>
                <div class="form-inline">
                  <div class="form-group">
                      <label>&nbsp;点击进行导入单科学生成绩:</label>                       
                  </div>
                  <button id="buttona" class="btn btn-theme">开始导入</button>
              </div>
                <hr>
                <h4>预览区:</h4>
                <div id="chose" class="form-inline" style="margin-left: 1%;display: none;">
                  <p style="display: inline;">请选择工种然后确定上传:</p>
                  <select class="form-control" id='gongzhong' value='0'>
                      <option value='Qian_gong'>钳工</option>
                      <option value='Pu_xi'>普铣</option>
                      <option value='Mo_xue'>磨削</option>
                      <option value='Dian_huo_hua'>电火花</option>
                      <option value='Chong_ya'>冲压</option>
                      <option value='Zhu_zao'>铸造</option>
                      <option value='Mu_ju'>模具</option>
                      <option value='Han_jie'>焊接</option>
                      <option value='Pu_che'>普通车削</option>
                      <option value='Jia_gong'>加工中心</option>
                      <option value='Shu_chong'>数控冲床</option>
                      <option value='Shu_xi'>数控铣床</option>
                      <option value='Shu_che'>数控车床</option>
                      <option value='PLC'>PLC</option>
                      <option value='Xian_qie_ge'>线切割</option>
                      <option value='Kuai_su_cheng_xing'>快速成型</option>
                      <option value='re_chu_li'>热处理</option>
                  </select>
                  <button  class="btn btn-theme" id="sure">确定导入</button>
                </div>
                <table class="table table-bordered table-striped table-condensed">
                  <tbody id="tbody">
                    
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>