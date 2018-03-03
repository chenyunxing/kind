<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:85:"D:\web\htdocs\kind\thinkphp\public/../application/index\view\shuaige\showkecheng.html";i:1502823118;}*/ ?>
<section class="wrapper">
  <h3>查看当前使用课程</h3>
  <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4>表格区:</h4>
                <hr>
                <table class="table table-bordered table-striped table-condensed">
                  <tbody id="tbody">
                    <?php
                      for ($i=0; $i <$hang ; $i++) { 
                        echo '</tr>';
                        for ($f=0; $f <$line ; $f++) {
                          $temp=explode(':',$data[$i][$f],2);
                          if($temp[0]==0&&$temp[1]==0){continue;}
                            echo "<td rowspan=".$temp[1]." colspan=".$temp[0].">".$sheetData[$i][$f]."</td>";
                        }
                        echo '</tr>';
                      }
                    ?>  
                  </tbody>
                </table>
            </div><!-- /content-panel -->
        </div><!-- /col-md-12 -->
    </div>
</section>