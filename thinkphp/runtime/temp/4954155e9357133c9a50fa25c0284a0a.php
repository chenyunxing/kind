<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:91:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\changeown.html";i:1502888500;}*/ ?>
<section class="wrapper">
  <h3>修改单科成绩</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>已上传班级列表</h4>
                <hr>
                <h4>修改单科成绩的方法为先选择要清除的科目，然后点击对应的清除按钮，然后在导入单科成绩界面进行重新导入</h4>
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
                        <td>
                          <select id="select<?php echo $i; ?>" style="width: 50%" class="form-control" id='gongzhong' value='0'>
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
                        </td>
                        <td><button id="button<?php echo $i; ?>" class="btn btn-success btn-sm pull-left" value="<?php echo $i; ?>:<?php echo $vo['id']; ?>">清除此科目成绩</button></td>
                      </tr>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
    <button id="sentid" value="<?php echo $i; ?>" style="display: none;"></button>
</section>