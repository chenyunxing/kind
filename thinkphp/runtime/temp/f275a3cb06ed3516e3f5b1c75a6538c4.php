<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:86:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\back.html";i:1502889671;}*/ ?>
<section class="wrapper">
  <h3>还原数据页面</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>文件列表</h4>
                <hr>
                <table class="table table-striped table-advance table-hover">
                  <thead>
                  <tr>
                      <th><i class="fa fa-bullhorn"></i>结束课程日期</th>
                      <th class="hidden-phone"></th>
                      <th></th>
                      <th></th>
                      <th></th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php if(is_array($datalist) || $datalist instanceof \think\Collection || $datalist instanceof \think\Paginator): $i = 0; $__LIST__ = $datalist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                      <tr>
                        <td><?php echo $filename[$i-1]; ?></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><button id="button<?php echo $i; ?>" value="<?php echo $vo; ?>" class="btn btn-success btn-sm pull-left">还原</button></td>
                      </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
    <button id="sentid" value="<?php echo $i; ?>" style="display: none;"></button>
</section>