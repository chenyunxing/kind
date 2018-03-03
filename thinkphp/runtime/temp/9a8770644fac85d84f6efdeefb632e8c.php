<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:89:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\upchengjionline.html";i:1508224900;}*/ ?>
<section class="wrapper">
  <h3>在线修改学生成绩</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>已上传班级列表</h4>
                <h5>选择班级，然后下方修改区会出现数据可进行修改，点击保存修改后即完成操作</h5>
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
                      <td></td>
                      <td><button  class="btn btn-success btn-sm pull-left"  id="button<?php echo $i; ?>" value="<?php echo $vo['id']; ?>" >进行修改</button></td>
                    </tr>
                  <?php endforeach; endif; else: echo "" ;endif; ?>
                  </tbody>
                </table>
                <button id="sentid" value="<?php echo $i; ?>" style="display:none;"></button>
                <hr>
                <h4>修改区:</h4>
                <table class="table table-bordered table-striped table-condensed">
                  <tbody id="tbody">
                    
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>