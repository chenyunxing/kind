<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:82:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\template.html";i:1507960038;}*/ ?>
<section class="wrapper">
  <h3>导出成绩模板</h3>
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
                      <td><a href="<?php echo url('index/shuaige/shiyan'); ?>?id=<?php echo $vo['id']; ?>"><button class="btn btn-success btn-sm pull-left">导出实验成绩模板</button></a></td>
                      <td><a href="<?php echo url('index/shuaige/dataout2'); ?>?id=<?php echo $vo['id']; ?>"><button class="btn btn-success btn-sm pull-left">导出单科成绩模板</button></a></td>
                    </tr>
                  <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
              </table>
          </div><!-- /content-panel -->
      </div><!-- /col-md-12 -->
    </div>
</section>