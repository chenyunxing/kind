<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:89:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\summary.html";i:1502889662;}*/ ?>
<section class="wrapper">
  <h3>成绩统计页面</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
              <div class="form-inline">
                <div class="form-group">
                    <h4>点击进行最终成绩统计:</h4>                      
                </div>
                <button id="buttona" class="btn btn-theme">开始统计</button>
              </div>
              <hr>
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
                        <td><a href="<?php echo url('index/shuaige/apilast'); ?>?id=<?php echo $vo['id']; ?>"><button class="btn btn-success btn-sm pull-left" >导出最终成绩</button></a></td>
                      </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </tbody>
                  </table>
                </div>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>