<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:81:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\lookstu.html";i:1520104377;}*/ ?>
<section class="wrapper">
  <h3>查看学生信息</h3>
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
                        <td><button class="btn btn-success btn-sm pull-left" id="delete<?php echo $i; ?>"  value="<?php echo $vo['id']; ?>" >删除</button></td>
                        <td><button class="btn btn-success btn-sm pull-left" id="button<?php echo $i; ?>"  value="<?php echo $vo['id']; ?>" >查看信息</button></td>
                        <td><button class="btn btn-success btn-sm pull-left" id="add<?php echo $i; ?>"  value="<?php echo $vo['id']; ?>" >增加学生</button></td>
                      </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                    <button id="sentid" value="<?php echo $i; ?>" style="display: none;"></button>
                  </tbody>
                </table>
              <hr>
              <h4 style="display: inline;">查看区:</h4>
              <table class="table table-bordered table-striped table-condensed">
                <thead>
                  <tr>
                    <th>组号</th>
                    <th>班级名字</th>
                    <th>班内序号</th>
                    <th>学生学号</th>
                    <th>学生姓名</th>
                    <th>学生性别</th>
                  </tr>
                </thead>
                <tbody id="tbody">
                  
                </tbody>
              </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>