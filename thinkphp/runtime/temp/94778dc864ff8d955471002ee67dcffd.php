<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:88:"D:\UPUPW_AP5.6\htdocs\kind\thinkphp\public/../application/index\view\shuaige\change.html";i:1502817710;}*/ ?>
<section class="wrapper">
  <h3>修改通知</h3>
  <div class="row mt">
    <div class="col-lg-12">
        <div class="form-panel">
            <form class="form-horizontal style-form">
              <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">通知标题</label>
                  <div class="col-sm-10">
                      <input id="title" type="text" class="form-control" value="<?php echo $data['title']; ?>">
                      <input id="sentid" type="text" style="display: none;" value="<?php echo $data['id']; ?>">
                  </div>
              </div>
              <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">通知内容</label>
                  <div class="col-sm-10" id="editorcontent">
                      <script id="editor" style="height: 220px;" type="text/plain">
                      <?php echo $data['content']; ?>
                      </script>
                  </div>
              </div>
              <div class="form-group">
                <input type="button" id="sent" class="btn btn-theme" style="float: right;margin-right: 1.5%;" value="修改" >
              </div>
            </form>
        </div>
    </div><!-- col-lg-12-->     
  </div>
</section>