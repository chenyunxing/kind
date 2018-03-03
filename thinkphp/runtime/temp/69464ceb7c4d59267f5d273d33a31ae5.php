<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:81:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\chosecu.html";i:1502821634;}*/ ?>
<section class="wrapper">
  <h3>课程管理</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>课程表列表</h4>
                <hr>
                <table class="table table-striped table-advance table-hover">
                  <thead>
                  <tr>
                      <th><i class="fa fa-bullhorn"></i> 课程表名字</th>
                      <th class="hidden-phone"><i class="fa fa-question-circle"></i> 发布时间</th>
                      <th></th>
                      <th></th>
                      <th></th>
                  </tr>
                  </thead>
                  <tbody>
                    <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                      <tr id="tr<?php echo $i; ?>">
                        <td><?php echo $vo['name']; ?></td>
                        <td><?php echo $vo['time']; ?></td>
                        <td></td>
                        <td></td>
                        <?php if($vo['state'] == '0'): ?>
                          <td><button id="button<?php echo $i; ?>" value="<?php echo $vo['id']; ?>" class="btn btn-info">使用</button></td>
                          <td><a href="<?php echo url('index/shuaige/outkecheng'); ?>?id=<?php echo $vo['id']; ?>" target="_blank"><button class="btn btn-primary">导出</button></a></td>
                          <td><button id="delete<?php echo $i; ?>" value="<?php echo $vo['id']; ?>" class="btn btn-danger">删除</button></td>
                        <?php else: ?>
                          <td><button id="button<?php echo $i; ?>" value="<?php echo $vo['id']; ?>" class="btn btn-info" style="background: #555;opacity: 0.5;cursor: default;">已使用</button></td>
                          <td><a href="<?php echo url('index/shuaige/outkecheng'); ?>?id=<?php echo $vo['id']; ?>" target="_blank"><button class="btn btn-primary">导出</button></a></td>
                         <td><button id="delete<?php echo $i; ?>" class="btn btn-danger" value="<?php echo $vo['id']; ?>" style="background: #555;opacity: 0.5;cursor: default;">删除</button></td>
                        <?php endif; ?>
                      </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </tbody>
                </table>
                <?php if($page == '1'): else: ?>
                <span id="up" class="btn btn-default btn-sm" style="margin-left: 1%;" pageNumber="<?php echo $page-1; ?>">上一页</span>
                <?php endif; if($nextstate == '1'): ?>
                  <span id="next" class="btn btn-default btn-sm" style="margin-left: 1%;" pageNumber="<?php echo $page+1; ?>">下一页</span>
                <?php endif; ?>
                
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>
