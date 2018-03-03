<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:88:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\modify.html";i:1502816097;}*/ ?>
<section class="wrapper">
<h3>修改通知</h3>
<div class="row mt">
      <div class="col-md-12">
          <div class="content-panel">
              <h4>通知列表</h4>
              <hr>
              <table class="table table-striped table-advance table-hover">
                <thead>
                <tr>
                    <th><i class="fa fa-bullhorn"></i> 标题</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i> 发布时间</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <?php if(is_array($data) || $data instanceof \think\Collection || $data instanceof \think\Paginator): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                  <tr>
                    <td><a href="<?php echo url('index/student/shownotice'); ?>?p=<?php echo $vo['id']; ?>"><?php echo $vo['title']; ?></a></td>
                    <td class="hidden-phone"><?php echo $vo['time']; ?></td>
                    <td></td><td></td>
                    <td>
                    <a href="<?php echo url('index/student/shownotice'); ?>?p=<?php echo $vo['id']; ?>"><button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button></a>
                    <button id="change<?php echo $i; ?>" data="<?php echo $vo['id']; ?>" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                    <button id="delete<?php echo $i; ?>" data="<?php echo $vo['id']; ?>" class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                    </td>
                  </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
              </table>
              <?php if($pageNumber == '1'): else: ?>
              <span id="up" class="btn btn-default btn-sm" style="margin-left: 1%;" pageNumber="<?php echo $pageNumber-1; ?>">上一页</span>
              <?php endif; if($next == '1'): ?>
                <span id="next" class="btn btn-default btn-sm" style="margin-left: 1%;" pageNumber="<?php echo $pageNumber+1; ?>">下一页</span>
              <?php endif; ?>
              
          </div><!-- /content-panel -->
      </div><!-- /col-md-12 -->
  </div>
</section>