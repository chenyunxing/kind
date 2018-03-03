<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:87:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\group.html";i:1502886518;}*/ ?>
<section class="wrapper">
  <h3>进行学生分组</h3>
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
                        <td></td>
                        <td></td>
                      </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </tbody>
                </table>
                <div class="form-inline">
                  <div class="form-group">
                      <label for="exampleInputEmail2">请输入需要分的组数:</label>
                      <input type="number" class="form-control" name="groupnum" id="exampleInputEmail2">
                  </div>
                  <button id="start" class="btn btn-theme">开始分组</button>
              </div>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>