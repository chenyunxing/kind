<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:93:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\changegroup.html";i:1502887178;}*/ ?>
<section class="wrapper">
  <form id= "uploadForm" enctype="multipart/form-data" style="display: none">  
    <input type="file" id="file1" name="file"/>
  </form>
  <h3>修改学生分组</h3>
  <div class="row mt">
      <div class="col-md-12">
          <div class="content-panel">
              <h4>已上传班级列表</h4>
              <hr>
              <table class="table table-striped table-advance table-hover">
                <thead>
                <tr>
                    <th><i class="fa fa-bullhorn"></i> 班级名字</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 班级人数</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                  <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                    <tr>
                      <td><?php echo $vo['classname']; ?></td>
                      <td><?php echo $vo['allS']; ?></td>
                      <td></td>
                      <td><button id="button<?php echo $i; ?>" class="btn btn-success btn-sm pull-left">导入修改后的表</button></td>
                      <td><a href="<?php echo url('index/shuaige/dataout'); ?>?id=<?php echo $vo['id']; ?>"><button class="btn btn-success btn-sm pull-left">导出</button></a></td>
                    </tr>
                  <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
              </table>
          </div><!-- /content-panel -->
      </div><!-- /col-md-12 -->
    </div>
    <button id="sentid" value="<?php echo $i; ?>" style="display: none;"></button>
</section>