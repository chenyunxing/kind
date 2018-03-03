<?php
namespace app\index\controller;
use think\View;
use think\Controller;
use think\Session;
use think\Request;
use think\Config;
use think\Db;
	class shuaige extends Controller
	{
		protected $beforeActionList = [
		'first'
		];
		protected function first(){
			$Admin =model('admin');
			if($Admin->check(Request::instance()->session('username'),Request::instance()->session('password'))){

			}else{
				echo '<script>alert("未登录!");window.location.href="'.url('index/readylogin/index').'"</script>';
			}
		}
		public function index()
		{
			return view();
		}
		public function index1()
		{
			$view = new View();
			return $view->fetch();
		}
		public function modify(){
			$request = request();
			if(input('?get.pageNumber')&&input('get.pageNumber')>=1){
				$pageNumber=input('get.pageNumber');
			}else{
				$pageNumber=1;
			}
			$notice =model('notice');
			$result=$notice->next(intval($pageNumber),10);
			if($result)
				$next=1;
			else
				$next=0;
			$data=$notice->getnotice(intval($pageNumber),10);
			for ($i=0; $i < count($data); $i++) { 
				$data[$i]['time']=date("Y-m-d H:i:s",$data[$i]['time']);
			}
			$view = new View();
			$view->data = $data;
			$view->next=$next;
			$view->pageNumber=$pageNumber;
			return $view->fetch();
		}
		//发布新通知对应的ajax页面
		public function getajax(){
			//鉴定是否为ajax
			$request = request();
			if($request->isAjax()){
				$ajaxdata=$request->param();
				$notice =model('notice');
				if ($notice->addnotice($ajaxdata['title'],$ajaxdata['content'])) {
					$returndata['state']="发布成功!";
				}else{
					$returndata['state']="失败！！";
				}
				return ['state'=>$returndata['state']];
			}
			else{
				echo "???";
			}
		}
		// 删除函数
		function delete(){
			$request = request();
			$ajaxdata=$request->param();
			$notice=model('notice');
			$data=$notice->destroy(intval($ajaxdata['id']));
			if($data){
				return '1';
			}
			else
				return "0";
		}
		//修改界面
		function change(){
			$request = request();
			$getdata=$request->param();
			$notice=model('notice');
			$data=$notice->get(intval($getdata['id']));
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//修改接口
		function changedata(){
			$request = request();
			if($request->isAjax()){
				$ajaxdata=$request->param();
				$notice =model('notice');
				if ($notice->changenotice($ajaxdata['id'],$ajaxdata['title'],$ajaxdata['content'])) {
					$returndata['state']="修改成功!";
				}else{
					$returndata['state']="失败！！";
				}
				return ['state'=>$returndata['state']];
			}
			else{
				echo "???";
			}
		}
		//退出功能
		function loginout(){
			Session::delete('username');
			Session::delete('password');
			echo '<script>window.location.href="'.url('index/readylogin/index').'"</script>';
		}
		//上传学生信息页面
		function updatapage(){
			return view();
		}
		//分组的算法,传入参数为组数,返回值false代表参数小于等于0，返回true代表分组成功
		public function distribution($groupnum){
			// $groupnum=input('get.groupnum');//获取组数
			if (intval($groupnum)<=0) {
				return false;
			}
			$addclass =model('classss');
			$classdata=$addclass->returnall();
			$num=$addclass->count();
			for ($i=0; $i < $num; $i++) { 
				$group[$i]=intval($groupnum/$num);
			}
			$f=$groupnum%$num;
			$i=0;
			while ($f!=0) {
				if($i==$num){
					$i=0;
				}
				$group[$i]++;
				$f--;
			}
			//定义每一组人数存储的数组
			$grouppeople=array();
			for ($i=0; $i < $groupnum; $i++) { 
				$grouppeople[$i]=0;
			}
			for ($i=0; $i < $num; $i=$i+2) { 
				if($i==$num-1){
					$class1=$classdata[$i];
					$z=0;
					while ($grouppeople[$z]!=0) {
						$z++;
					}
					$nowgroup=$z;
					for ($z=$nowgroup; $z < $nowgroup+$group[$i]; $z++) { 
						$grouppeople[$z]=intval($class1['allS']/$group[$i]);
					}
					$f=$class1['allS']%$group[$i];
					$z=$nowgroup;
					while ($f!=0) {
						if($z==$nowgroup+$group[$i]){
							$z=$nowgroup;
						}
						$grouppeople[$z]++;
						$z++;
						$f--;
					}
					break;
				}
				$temp=$group[$i]+$group[$i+1];//前两组组数
				$class1=$classdata[$i];//获取第一个班信息
				$class2=$classdata[$i+1];//获取*2
				$classstunum=$class1['allS']+$class2['allS'];//两个班的总人数
				//获取目前处理到第几组
				$z=0;
				while ($grouppeople[$z]!=0) {
					$z++;
				}
				//将前两个班的组内人数进行处理
				$nowgroup=$z;
				for ($z=$nowgroup; $z < $nowgroup+$temp; $z++) { 
					$grouppeople[$z]=intval($classstunum/$temp);
				}
				$f=$classstunum%$temp;
				$z=$nowgroup;
				while ($f!=0) {
					if($z==$nowgroup+$temp){
						$z=$nowgroup;
					}
					$grouppeople[$z]++;
					$z++;
					$f--;
				}
				//如果组数为单数则进行两次判断是否强塞[即时判断用前一半组数在第一个班时和一半加一组数在第一班时]，如为双数则一次
				if($temp%2!=0){
					$change=0;
					$remainder=$class1['allS'];
					for ($z=$nowgroup; $z < intval($temp/2)+$nowgroup; $z++) { 
						$remainder=$remainder-$grouppeople[$z];
					}
					//当余数的绝对值小于等于组数一半时进行强塞
					if($remainder>=0&&$remainder<intval($temp/2)){
						$tempremainder=$remainder;
						for ($z=$nowgroup; ; $z++) { 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]++;
						}
						$tempremainder=$remainder;
						for ($z=intval($temp/2)+$nowgroup; ; $z++) { 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]--;
						}
						$change=1;
					}
					if ($remainder<=0&&$remainder>-1*intval($temp/2)){
						$tempremainder=$remainder*-1;
						for ($z=$nowgroup; ; $z++) { 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]--;
						}
						$tempremainder=$remainder*-1;
						for ($z=intval($temp/2)+$nowgroup; ; $z++){ 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]++;
						}
						$change=1;
					}
					if($change!=1){
						$remainder=$class1['allS'];
						for ($z=0; $z < intval($temp/2)+1; $z++) { 
							$remainder=$remainder-$grouppeople[$z];
						}
						//当余数的绝对值小于等于组数一半时进行强塞
						if($remainder>=0&&$remainder<intval($temp/2)){
							$tempremainder=$remainder;
							for ($z=$nowgroup; ; $z++) { 
								if ($tempremainder==0) {
									break;
								}
								$tempremainder--;
								$grouppeople[$z]++;
							}
							$tempremainder=$remainder;
							for ($z=intval($temp/2)+$nowgroup+1; ; $z++) { 
								if ($tempremainder==0) {
									break;
								}
								$tempremainder--;
								$grouppeople[$z]--;
							}
							$change=1;
						}
						if ($remainder<=0&&$remainder>-1*intval($temp/2)){
							$tempremainder=$remainder*-1;
							for ($z=$nowgroup; ; $z++) { 
								if ($tempremainder==0) {
									break;
								}
								$tempremainder--;
								$grouppeople[$z]--;
							}
							$tempremainder=$remainder*-1;
							for ($z=intval($temp/2)+$nowgroup+1; ; $z++){ 
								if ($tempremainder==0) {
									break;
								}
								$tempremainder--;
								$grouppeople[$z]++;
							}
							$change=1;
						}
					}
				}else{
					$remainder=$class1['allS'];
					for ($z=$nowgroup; $z < intval($temp/2)+$nowgroup; $z++) { 
						$remainder=$remainder-$grouppeople[$z];
					}
					//当余数的绝对值小于等于组数一半时进行强塞
					if($remainder>=0&&$remainder<intval($temp/2)){
						$tempremainder=$remainder;
						for ($z=$nowgroup; ; $z++) { 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]++;
						}
						$tempremainder=$remainder;
						for ($z=intval($temp/2)+$nowgroup; ; $z++) { 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]--;
						}
						$change=1;
					}
					if ($remainder<=0&&$remainder>-1*intval($temp/2)){
						$tempremainder=$remainder*-1;
						for ($z=$nowgroup; ; $z++) { 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]--;
						}
						$tempremainder=$remainder*-1;
						for ($z=intval($temp/2)+$nowgroup; ; $z++){ 
							if ($tempremainder==0) {
								break;
							}
							$tempremainder--;
							$grouppeople[$z]++;
						}
						$change=1;
					}
				}
			}
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			$z=0;
			$allstudent=model('allstudent');
			$sdata=$allstudent->select();
			for ($i=0; $i <count($grouppeople) ; $i++) { 
				for ($f=0; $f < $grouppeople[$i]; $f++) { 
					$allstudent->changegroup($sdata[$z]['stunum'],$charactors[$i]);
					$z++;
				}
			}
			return true;
		}
		//分组的页面
		public function group(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//进行分组的接口
		public function startgroup(){
			if($this->distribution($groupnum=intval(input('post.groupnum')))){
				$data['state']=200;
			}else{
				$data['state']=400;
			}
			return $data;
		}
		//修改分组的页面
		public function changegroup(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//导出excel的函数,传入classss表班级的id，GET传参
		public function dataout(){
			//获取输入的班级id
			$request = request();
			$getdata=$request->param();
			$id=intval($getdata['id']);
			if($id<=0){
				return;
			}
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($id);
			$allstudent=model('allstudent');
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			//进行导入excel
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			/*以下是一些设置 ，什么作者  标题啊之类的*/
			$objPHPExcel->getProperties()->setCreator("null")
				->setLastModifiedBy("null")
				->setTitle("null")
				->setSubject("null")
				->setDescription("null")
				->setKeywords("excel")
				->setCategory("result file");
			/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			//合并单元格制作标题栏
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->mergeCells('A1:R1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',$cdata[0]['classname']."实习分组表");
			//设置第二行序列
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			for ($i=0; $i < 2; $i++) { 
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($i*8)].'2', '组号')
				->setCellValue($charactors[1+($i*8)].'2', '序号')
				->setCellValue($charactors[2+($i*8)].'2', '学号')
				->setCellValue($charactors[3+($i*8)].'2', '姓  名')
				->setCellValue($charactors[4+($i*8)].'2', '性别')
				->setCellValue($charactors[5+($i*8)].'2', '实操')
				->setCellValue($charactors[6+($i*8)].'2', '作业');
				// $objPHPExcel->getActiveSheet()->mergeCells($charactors[7+($i*9)].'2'.':'.$charactors[8+($i*9)].'2');
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($i*8)].'2', '平时 成绩');
			}
			//设置宽度自适应
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('M')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getRowDimension(2)->setRowHeight(32);
			$objPHPExcel->getActiveSheet()->getStyle('A2:P2')->getAlignment()->setWrapText(true);
			//设置字体
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);

			$objPHPExcel->getActiveSheet()->getStyle('B3:B34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('B3:B34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			//制作尾部提示
			$objPHPExcel->getActiveSheet()->mergeCells('A35:R35');
			$objPHPExcel->getActiveSheet()->getStyle('A35')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A35','（注：实操满分85，作业满分15，平时成绩为实操加作业之和）');
			//制作内容栏
			$styleArray = array(  
						'borders' => array(  
							'allborders' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THIN, 
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
					$objPHPExcel->getActiveSheet()->getStyle("A2:P34")->applyFromArray($styleArray);
			//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			$temp=$sdata[0]['stugroup'];
			for ($i=0,$f=0,$z=3; $i < count($sdata); $i++,$z++) { 
				if($z==35){
					$f++;
					$z=3;
				}
				if($temp!=$sdata[$i]['stugroup']){
					// $objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z)->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THICK);
					$styleArray = array(  
						'borders' => array(  
							'top' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THICK,//边框是粗的  
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
					$objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*8)].$z.":".$charactors[7+($f*8)].$z)->applyFromArray($styleArray);
					$temp=$sdata[$i]['stugroup'];
					// echo $charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z;
					// die();
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*8)].$z,$sdata[$i]['stugroup'])
				->setCellValue($charactors[1+($f*8)].$z, $sdata[$i]['Xstu'])
				->setCellValueExplicit($charactors[2+($f*8)].$z, $sdata[$i]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
				->setCellValue($charactors[3+($f*8)].$z, $sdata[$i]['stuname'])
				->setCellValue($charactors[4+($f*8)].$z, $sdata[$i]['sex'])
				->setCellValue($charactors[5+($f*8)].$z, '')
				->setCellValue($charactors[6+($f*8)].$z, '');
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*8)].$z, '');
			}
			$styleArray = array(  
						'borders' => array(  
							'top' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THICK,//边框是粗的  
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
			$objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*8)].$z.":".$charactors[7+($f*8)].$z)->applyFromArray($styleArray);
			for(;$i<64;$i++,$z++){
				if($z==35){
					$f++;
					$z=3;
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*8)].$z,$i+1);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*8)].$z, '');
			}
			//工作表名
			$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			//写在第几个工作表
			$objPHPExcel->setActiveSheetIndex(0);
			//文件格式
			header('Content-Type: application/vnd.ms-excel');
			//文件名和路径
			header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			header('Cache-Control: max-age=0');
			//创建文件
			$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			//确定写入
			$objWriter->save('php://output');
			return;
		}
		//导出excel的函数,传入classss表班级的id，GET传参,合并了单元格的
		public function dataout2(){
			//获取输入的班级id
			$request = request();
			$getdata=$request->param();
			$id=intval($getdata['id']);
			if($id<=0){
				return;
			}
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($id);
			$allstudent=model('allstudent');
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			//进行导入excel
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			/*以下是一些设置 ，什么作者  标题啊之类的*/
			$objPHPExcel->getProperties()->setCreator("null")
				->setLastModifiedBy("null")
				->setTitle("null")
				->setSubject("null")
				->setDescription("null")
				->setKeywords("excel")
				->setCategory("result file");
			/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			//合并单元格制作标题栏
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->mergeCells('A1:R1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',$cdata[0]['classname']."实习分组表");
			//设置第二行序列
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			for ($i=0; $i < 2; $i++) { 
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($i*8)].'2', '组号')
				->setCellValue($charactors[1+($i*8)].'2', '序号')
				->setCellValue($charactors[2+($i*8)].'2', '学号')
				->setCellValue($charactors[3+($i*8)].'2', '姓  名')
				->setCellValue($charactors[4+($i*8)].'2', '性别')
				->setCellValue($charactors[5+($i*8)].'2', '实操')
				->setCellValue($charactors[6+($i*8)].'2', '作业');
				// $objPHPExcel->getActiveSheet()->mergeCells($charactors[7+($i*9)].'2'.':'.$charactors[8+($i*9)].'2');
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($i*8)].'2', '平时 成绩');
			}
			//设置宽度自适应
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('M')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getRowDimension(2)->setRowHeight(32);
			$objPHPExcel->getActiveSheet()->getStyle('A2:P2')->getAlignment()->setWrapText(true);
			//设置字体
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('I3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);

			$objPHPExcel->getActiveSheet()->getStyle('B3:B34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('B3:B34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			//制作尾部提示
			$objPHPExcel->getActiveSheet()->mergeCells('A35:P35');
			$objPHPExcel->getActiveSheet()->getStyle('A35')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A35','（注：实操满分85，作业满分15，平时成绩为实操加作业之和）');
			//制作内容栏
			$styleArray = array(  
						'borders' => array(  
							'allborders' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THIN, 
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
					$objPHPExcel->getActiveSheet()->getStyle("A2:P34")->applyFromArray($styleArray);
			//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			$temp=$sdata[0]['stugroup'];
			$temp2=3;
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A3",$sdata[0]['stugroup']);
			// $objPHPExcel->getActiveSheet()->mergeCells('A1:R1');
			for ($i=0,$f=0,$z=3; $i < count($sdata); $i++,$z++) { 
				if($z==35){
					$f++;
					$z=3;
					$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*8)].$z,$sdata[$i]['stugroup']);
					$objPHPExcel->getActiveSheet()->mergeCells('A'.$temp2.':A34');
					$temp2=$z;
				}
				//下一组
				if($temp!=$sdata[$i]['stugroup']){
					// $objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z)->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THICK);
					$styleArray = array(  
						'borders' => array(  
							'top' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THICK,//边框是粗的  
								// 'color' => array('argb' => 'FFFF0000'),
							),
						),
					);

					$objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*8)].$z.":".$charactors[7+($f*8)].$z)->applyFromArray($styleArray);
					$temp=$sdata[$i]['stugroup'];
					//合并组号列的单元格
					if($f==0){
						$objPHPExcel->getActiveSheet()->mergeCells('A'.$temp2.':A'.($z-1));
						$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*8)].$z,$sdata[$i]['stugroup']);
						$temp2=$z;
					}else if ($f==1) {
						if($z==3){
							$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*8)].$z,$sdata[$i]['stugroup']);
							$temp2=$z;
						}else{
							$objPHPExcel->getActiveSheet()->mergeCells('I'.$temp2.':I'.($z-1));
							$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*8)].$z,$sdata[$i]['stugroup']);
							$temp2=$z;
						}
						
					}
					
					// echo $charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z;
					// die();
				}
				// $objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*8)].$z,$sdata[$i]['stugroup'])
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*8)].$z, $sdata[$i]['Xstu'])
				->setCellValueExplicit($charactors[2+($f*8)].$z, $sdata[$i]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
				->setCellValue($charactors[3+($f*8)].$z, $sdata[$i]['stuname'])
				->setCellValue($charactors[4+($f*8)].$z, $sdata[$i]['sex'])
				->setCellValue($charactors[5+($f*8)].$z, '')
				->setCellValue($charactors[6+($f*8)].$z, '');
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*8)].$z, '');
			}
			$styleArray = array(  
						'borders' => array(  
							'top' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THICK,//边框是粗的  
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
			$objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*8)].$z.":".$charactors[7+($f*8)].$z)->applyFromArray($styleArray);
			$objPHPExcel->getActiveSheet()->mergeCells('I'.$temp2.':I'.($z-1));
			for(;$i<64;$i++,$z++){
				if($z==35){
					$f++;
					$z=3;
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*8)].$z,$i+1);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*8)].$z, '');
			}
			//工作表名
			$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			//写在第几个工作表
			$objPHPExcel->setActiveSheetIndex(0);
			//文件格式
			header('Content-Type: application/vnd.ms-excel');
			//文件名和路径
			header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			header('Cache-Control: max-age=0');
			//创建文件
			$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			//确定写入
			$objWriter->save('php://output');
			return;
		}
		//修改表中组号的数据ajax接口
		public function datain(){
			// 获取表单上传文件 例如上传了001.jpg
			$file = request()->file('file');
			if ($_FILES['file']['type']=="application/vnd.ms-excel") {
				// 移动到框架应用根目录/public/uploads/ 目录下
				$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads','1');
				if($info){
					vendor("PHPExcel.Classes.PHPExcel");
					vendor("PHPExcel.Classes.PHPExcel.IOFactory");
					$objPHPExcel = new \PHPExcel();
					vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
					$objReader = \PHPExcel_IOFactory::createReader('Excel5');
					$filename=ROOT_PATH."public" . DS . 'uploads/'.$info->getSaveName();
					// echo ROOT_PATH."public/static/1.xls";
					$encode='utf-8';
					$objReader->setReadDataOnly(true);
					// 读取文件并建立对应该文件excel类
					$objPHPexcel = $objReader->load($filename);
					// 获取工作表
					$objWorksheet = $objPHPexcel->getActiveSheet();
					// 取得总行数
					$highestRow = $objWorksheet->getHighestRow(); 
					// 取得总列数
					$highestColumn = $objWorksheet->getHighestColumn(); 
					$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
					// 创建数组存储数据
					$excelData = array(); 
					// 写入数据到数组中
					for ($row = 1; $row <= $highestRow; $row++) { 
						for ($col = 0; $col < $highestColumnIndex; $col++) { 
							$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
						} 
					}
					$allstudent =model('allstudent');
					for ($i=1; $i <=2 ; $i++) { 
						for ($f=3; $f <35 ; $f++) {
							if($i==1){
								$stugroup=$excelData[$f][0];
								$stunum=$excelData[$f][2];
								$data['stunum']=$stunum;
								$data['stugroup']=$stugroup;
								$allstudent->changegroup($stunum,$stugroup);
							}else if($i==2){
								$stunum=$excelData[$f][10];
								if($stunum==''){
									break;
								}else{
									$stugroup=$excelData[$f][8];
									$stunum=$excelData[$f][10];
									$data['stunum']=$stunum;
									$data['stugroup']=$stugroup;
									$allstudent->changegroup($stunum,$stugroup);
								}
								
							}
						}
					}
					$data1['state']="修改成功";
					
				}else{
					$data1['state']="上传错误";
					// echo $file->getError();
				}
			}else{
				$data1['state']="格式错误";
			}
			return $data1;
		}
		//导出成绩模板界面
		public function template(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//计算两个字母间距的函数，暂时并未判断太多，输入参数必须合法
		//两个参数分别为第一个字母和第二个字母
		//返回值为第二个字母距离第一个字母的距离
		function calculate($character1,$character2){
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//26个字母的数组
			$cha1=-1;
			$cha2=-1;
			for($i=0;$i<26;$i++){
				if($character1==$charactors[$i]){
					$cha1=$i;
				}
				if ($character2==$charactors[$i]) {
					$cha2=$i;
				}
			}
			if($cha1==-1||$cha2==-1){
				return 'method error';
			}else{
				return $cha2-$cha1;
			}
		}
		//计算是第几个字母的函数
		function charactorsnum($character1){
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//26个字母的数组
			$cha1=-1;
			for($i=0;$i<26;$i++){
				if($character1==$charactors[$i]){
					$cha1=$i;
				}
			}
			if($cha1==-1){
				return 'method error';
			}else{
				return $cha1+1;
			}
		}
		//学生信息上传页面
		function upstudent(){
			$view = new View();
			return $view->fetch();
		}
		//学生上传文件对应接口，返回预览数据
		function upstu(){
			$file = request()->file('file');
			//将文件保存起来
			if ($_FILES['file']['type']=="application/vnd.ms-excel") {
				// 移动到框架应用根目录/public/uploads/ 目录下
				$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads'. DS .'student','1');
			}else{
				$redata['state']='400';//返回格式错误
				return $redata;
			}
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
			$objReader = \PHPExcel_IOFactory::createReader('Excel5');
			$filename=ROOT_PATH."public/uploads/student/1.xls";
			$encode='utf-8';
			// $objReader->setReadDataOnly(true);
			// 读取文件并建立对应该文件excel类
			$objPHPexcel = $objReader->load($filename);
			// 获取工作表
			$objWorksheet=$objPHPexcel->getActiveSheet();
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
			// 创建数组存储数据
			$excelData = array(); 
			// 写入数据到数组中
			for ($row = 1; $row <= $highestRow; $row++) { 
				for ($col = 0; $col < $highestColumnIndex; $col++) { 
					$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
				} 
			}
			$sheetData = $objPHPexcel->getActiveSheet()->toArray(null,true,true,true);
			$sheetData=array_values($sheetData);
			for ($i=0; $i < count($sheetData) ; $i++) { 
				$sheetData[$i]=array_values($sheetData[$i]);
			}
			$arr=$objWorksheet->getMergeCells();
			// dump($arr);
			$arr=array_values($arr);
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$data=array();
			for ($i=0; $i <$highestRow ; $i++) { 
				$data[$i]=array();
				for ($f=0; $f <$highestColumnIndex ; $f++) {
					$data[$i][$f]="1:1";
				}
			}
			for ($i=0; $i < count($arr); $i++) { 
				$temp=explode(':',$arr[$i],2);
				$hang=$this->calculate(substr($temp[0], 0, 1),substr($temp[1], 0, 1));
				$lie=substr($temp[1], 1, 100)-substr($temp[0], 1, 100);
				$data[substr($temp[0], 1, 100)-1][$this->charactorsnum(substr($temp[0], 0, 1))-1]="".($hang+1).":".($lie+1);
				if($lie>0&&$hang==0){
					for ($f=substr($temp[0], 1, 100); $f < substr($temp[0], 1, 100)+$lie; $f++) {
						$data[$f][$this->charactorsnum(substr($temp[0], 0, 1))-1]="0:0";
					}
				}
				if($hang>0&&$lie==0){
					for ($f=$this->charactorsnum(substr($temp[0],0, 1)); $f < $this->charactorsnum(substr($temp[0], 0, 1))+$hang; $f++) { 
						$data[substr($temp[0], 1, 100)-1][$f]="0:0";
					}
				}
				if($hang>0&&$lie>0){
					for ($z=substr($temp[0], 1, 100)-1; $z < substr($temp[0], 1, 100)+$lie; $z++) { 
						for ($f=$this->charactorsnum(substr($temp[0],0, 1))-1; $f < $this->charactorsnum(substr($temp[0], 0, 1))+$hang; $f++) { 
							$data[$z][$f]="0:0";
						}
					}
					$data[substr($temp[0], 1, 100)-1][$this->charactorsnum(substr($temp[0], 0, 1))-1]="".($hang+1).":".($lie+1);
				}
			}
			$hang = $highestRow;
			$line = $highestColumnIndex;
			$redata['content']='';
			for ($i=0; $i <$hang ; $i++) { 
				$redata['content']=$redata['content'].'<tr>';
				for ($f=0; $f <$line ; $f++) {
					$temp=explode(':',$data[$i][$f],2);
					if($temp[0]==0&&$temp[1]==0){continue;}
					if($temp[1]<4)
						$redata['content']=$redata['content']."<td rowspan=".$temp[1]." colspan=".$temp[0].">".$sheetData[$i][$f]."</td>";
					else{
						$redata['content']=$redata['content']."<td rowspan=".$temp[1]." colspan=".$temp[0]."><p class='chuizhi'>".$sheetData[$i][$f]."</p></td>";
					}
				}
				$redata['content']=$redata['content'].'</tr>';
			}
			$redata['state']='200';
			return $redata;
		}
		//确定写入数据库的函数,返回值200代表写入成功，400代表数据库里已有此批数据
		function upsure(){
			if ($_POST['data']=='sure') {
				vendor("PHPExcel.Classes.PHPExcel");
				vendor("PHPExcel.Classes.PHPExcel.IOFactory");
				$objPHPExcel = new \PHPExcel();
				vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
				$objReader = \PHPExcel_IOFactory::createReader('Excel5');
				$filename=ROOT_PATH."public/uploads/student/1.xls";
				$encode='utf-8';
				$objReader->setReadDataOnly(true);
				// 读取文件并建立对应该文件excel类
				$objPHPexcel = $objReader->load($filename);
				// 获取工作表
				$objWorksheet = $objPHPexcel->getActiveSheet();
				// 取得总行数
				$highestRow = $objWorksheet->getHighestRow(); 
				// 取得总列数
				$highestColumn = $objWorksheet->getHighestColumn(); 
				$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
				// 创建数组存储数据
				$excelData = array(); 
				// 写入数据到数组中
				for ($row = 1; $row <= $highestRow; $row++) { 
					for ($col = 0; $col < $highestColumnIndex; $col++) { 
						$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
					} 
				}
				// $classname=substr($excelData[1][0],0,strlen($excelData[1][0])-9);; 
				// $classname="ada";
				$allstudent =model('allstudent');
			   
				$addclass =model('classss');

				$allworks=model('allworks');

				$totalmark=model('totalmark_backup');;
			   // echo $allstudent->count();
			   //  echo $addclass->count();
				for ($i=4,$z=1; $i <= $highestRow; $i++,$z++) { 
					$Xstu=$z;
					$stunum=$excelData[$i][0];
					$stuname=$excelData[$i][1];
					$sex=$excelData[$i][2];
					$classname=$excelData[$i][3];
					$data['stunum']=$stunum;
					if($allstudent->where($data)->count()){
						$redata['state']='400';
						return $redata;
					}
					$allstudent->addstudent($Xstu,$stunum,$stuname,$sex,$classname);
					$allworks->alltheworks($Xstu,$stunum,$stuname);
					$totalmark->add($Xstu,$stunum,$stuname);
				}
				$addclass->addclass($classname,$z-1);
				$redata['state']='200';
				return $redata;
			}
		}
		//查看学生信息页面
		function lookstu(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//返回学生信息的接口，传入参数为post的data班级Id,返回值
		function studata(){
			//获取输入的班级id
			$request = request();
			$getdata=$request->param();
			$id=intval($getdata['data']);
			if($id<=0){
				$data['state']=400;
				return $data;
			}
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($id);
			$allstudent=model('allstudent');
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			$data['content']='';
			for ($i=0; $i < count($sdata); $i++) { 
				$data['content']=$data['content']."<tr>";
				$data['content']=$data['content']."<td>".$sdata[$i]['stugroup']."</td>";
				$data['content']=$data['content']."<td>".$sdata[$i]['classname']."</td>";
				$data['content']=$data['content']."<td>".$sdata[$i]['Xstu']."</td>";
				$data['content']=$data['content']."<td>".$sdata[$i]['stunum']."</td>";
				$data['content']=$data['content']."<td>".$sdata[$i]['stuname']."</td>";
				$data['content']=$data['content']."<td>".$sdata[$i]['sex']."</td>";
				$data['content']=$data['content']."</tr>";
			}
			$data['state']=200;
			return $data;
		}
		//删除学生班级接口，传入参数为post的data班级Id,返回值
		function studete(){
			//获取输入的班级id
			$request = request();
			$getdata=$request->param();
			$id=intval($getdata['data']);
			if($id<=0){
				$data['state']=400;
				return $data;
			}
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($id);
			$allstudent=model('allstudent');
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			//开始遍历删除
			$classss->deleteone($id);
			$allstudent->deleteclass($cdata[0]['classname']);
			$totalmark=model('totalmark_backup');;
			$singlegrade=model('singlegrade_backup');;
			$allworks=model('allworks');
			for ($i=0; $i < count($sdata); $i++) { 
				$totalmark->deleteone($sdata[$i]['stunum']);
				$allworks->deleteone($sdata[$i]['stunum']);
				$singlegrade->deleteone($sdata[$i]['stunum']);
			}
			$data['state']=200;
			return $data;
		}
		//上传成绩页面
		function upachievement(){
			$view = new View();
			return $view->fetch();
		}
		//上传与修改成绩的预览接口
		function upach(){
			$file = request()->file('file');
			//将文件保存起来
			if ($_FILES['file']['type']=="application/vnd.ms-excel") {
				// 移动到框架应用根目录/public/uploads/ 目录下
				$info = $file->move(ROOT_PATH . 'public' . DS . 'uploads'. DS .'chengji','1');
			}else{
				$redata['state']='400';//返回格式错误
				return $redata;
			}
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
			$objReader = \PHPExcel_IOFactory::createReader('Excel5');
			$filename=ROOT_PATH."public/uploads/chengji/1.xls";
			$encode='utf-8';
			// $objReader->setReadDataOnly(true);
			// 读取文件并建立对应该文件excel类
			$objPHPexcel = $objReader->load($filename);
			// 获取工作表
			$objWorksheet=$objPHPexcel->getActiveSheet();
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
			// 创建数组存储数据
			$excelData = array(); 
			// 写入数据到数组中
			for ($row = 1; $row <= $highestRow; $row++) { 
				for ($col = 0; $col < $highestColumnIndex; $col++) { 
					$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
				} 
			}
			$sheetData = $objPHPexcel->getActiveSheet()->toArray(null,true,true,true);
			$sheetData=array_values($sheetData);
			for ($i=0; $i < count($sheetData) ; $i++) { 
				$sheetData[$i]=array_values($sheetData[$i]);
			}
			$arr=$objWorksheet->getMergeCells();
			// dump($arr);
			$arr=array_values($arr);
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$data=array();
			for ($i=0; $i <$highestRow ; $i++) { 
				$data[$i]=array();
				for ($f=0; $f <$highestColumnIndex ; $f++) {
					$data[$i][$f]="1:1";
				}
			}
			for ($i=0; $i < count($arr); $i++) { 
				$temp=explode(':',$arr[$i],2);
				$hang=$this->calculate(substr($temp[0], 0, 1),substr($temp[1], 0, 1));
				$lie=substr($temp[1], 1, 100)-substr($temp[0], 1, 100);
				$data[substr($temp[0], 1, 100)-1][$this->charactorsnum(substr($temp[0], 0, 1))-1]="".($hang+1).":".($lie+1);
				if($lie>0&&$hang==0){
					for ($f=substr($temp[0], 1, 100); $f < substr($temp[0], 1, 100)+$lie; $f++) {
						$data[$f][$this->charactorsnum(substr($temp[0], 0, 1))-1]="0:0";
					}
				}
				if($hang>0&&$lie==0){
					for ($f=$this->charactorsnum(substr($temp[0],0, 1)); $f < $this->charactorsnum(substr($temp[0], 0, 1))+$hang; $f++) { 
						$data[substr($temp[0], 1, 100)-1][$f]="0:0";
					}
				}
				if($hang>0&&$lie>0){
					for ($z=substr($temp[0], 1, 100)-1; $z < substr($temp[0], 1, 100)+$lie; $z++) { 
						for ($f=$this->charactorsnum(substr($temp[0],0, 1))-1; $f < $this->charactorsnum(substr($temp[0], 0, 1))+$hang; $f++) { 
							$data[$z][$f]="0:0";
						}
					}
					$data[substr($temp[0], 1, 100)-1][$this->charactorsnum(substr($temp[0], 0, 1))-1]="".($hang+1).":".($lie+1);
				}
			}
			$hang = $highestRow;
			$line = $highestColumnIndex;
			$redata['content']='';
			for ($i=0; $i <$hang ; $i++) { 
				$redata['content']=$redata['content'].'<tr>';
				for ($f=0; $f <$line ; $f++) {
					$temp=explode(':',$data[$i][$f],2);
					if($temp[0]==0&&$temp[1]==0){continue;}
					if($temp[1]<4)
						$redata['content']=$redata['content']."<td rowspan=".$temp[1]." colspan=".$temp[0].">".$sheetData[$i][$f]."</td>";
					else{
						$redata['content']=$redata['content']."<td rowspan=".$temp[1]." colspan=".$temp[0]."><p class='chuizhi'>".$sheetData[$i][$f]."</p></td>";
					}
				}
				$redata['content']=$redata['content'].'</tr>';
			}
			$redata['state']='200';
			return $redata;
		}
		//上传成绩的接口,返回400代表数据库有这个工种成绩,返回200代表录入完成，传入参数为post的gongzhong
		function upchengji(){
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
			$objReader = \PHPExcel_IOFactory::createReader('Excel5');
			$filename=ROOT_PATH."public/uploads/chengji/1.xls";
			$encode='utf-8';
			$objReader->setReadDataOnly(true);
			// 读取文件并建立对应该文件excel类
			$objPHPexcel = $objReader->load($filename);
			// 获取工作表
			$objWorksheet = $objPHPexcel->getActiveSheet();
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
			// 创建数组存储数据
			$excelData = array(); 
			// 写入数据到数组中
			for ($row = 1; $row <= $highestRow; $row++) { 
				for ($col = 0; $col < $highestColumnIndex; $col++) { 
					$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
				} 
			}
			$Single=model('singlegrade_backup');;
			$allworks=model('allworks');
			$Work= $_POST['gongzhong'];


			Db::startTrans();
			try{
				for ($i=1; $i <=2 ; $i++) { 
				 	for ($f=3; $f <35 ; $f++) {
				 		if($i==1){
							$Xstu=$excelData[$f][1];
							$stunum=$excelData[$f][2];
							$grade=$excelData[$f][5];
							$txt=$excelData[$f][6];
							$work=$Work;
							if($Single->where(array('stunum'=>$stunum,'work'=>$work))->count()){
								$redata['state']=400;
								return $redata;
							}
							if(trim($stunum)==''){
								break;
							}else{
								if(is_numeric($grade)&&is_numeric($txt)){
									$re_grade=$grade+$txt;
							 		$Single->addsinglegrade($Xstu,$stunum,$grade,$txt,$re_grade,$work);
							 		$allworks->gettheworks($stunum,$work,$re_grade);
								}else{
									$grade=-1;
									$txt=-1;
									$re_grade=-1;
							 		$Single->addsinglegrade($Xstu,$stunum,$grade,$txt,$re_grade,$work);
							 		$allworks->gettheworks($stunum,$work,$re_grade);
								}
						 	}
						 	
						}else if($i==2){
								$Xstu=$excelData[$f][9];
						 		$stunum=$excelData[$f][10];
						 		$grade=$excelData[$f][13];
								$txt=$excelData[$f][14];
						 		$work=$Work;
							if(trim($stunum)==''){
								break;
							}else{
								if(is_numeric($grade)&&is_numeric($txt)){
									$re_grade=$grade+$txt;
							 		$Single->addsinglegrade($Xstu,$stunum,$grade,$txt,$re_grade,$work);
							 		$allworks->gettheworks($stunum,$work,$re_grade);
								}else{
									$grade=-1;
									$txt=-1;
									$re_grade=-1;
							 		$Single->addsinglegrade($Xstu,$stunum,$grade,$txt,$re_grade,$work);
							 		$allworks->gettheworks($stunum,$work,$re_grade);
								}
						 	}
						}	
					}
				}
				Db::commit();  
			}
			catch (\Exception $e) {
			    // 回滚事务
			    Db::rollback();
			    $redata['state']=500;
				return $redata;
			}
			$redata['state']=200;
			return $redata;
		}
		//导入学生实验成绩
		function upshiyan(){
			$view=new View();
			return $view->fetch();
		}
		//导入学生实验成绩接口,返回400代表数据库有这个班成绩,返回200代表录入完成，传入参数为post的data值必须为sure【避免get到这个页面直接异常】
		function upshiyanjiekou(){
			$request = request();
			$postdata=$request->param();
			$sure=intval($postdata['data']);
			if ($sure=='sure') {
				vendor("PHPExcel.Classes.PHPExcel");
				vendor("PHPExcel.Classes.PHPExcel.IOFactory");
				$objPHPExcel = new \PHPExcel();
				vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
				$objReader = \PHPExcel_IOFactory::createReader('Excel5');
				$filename=ROOT_PATH."public/uploads/chengji/1.xls";
				$encode='utf-8';
				$objReader->setReadDataOnly(true);
				// 读取文件并建立对应该文件excel类
				$objPHPexcel = $objReader->load($filename);
				// 获取工作表
				$objWorksheet = $objPHPexcel->getActiveSheet();
				// 取得总行数
				$highestRow = $objWorksheet->getHighestRow(); 
				// 取得总列数
				$highestColumn = $objWorksheet->getHighestColumn(); 
				$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
				// 创建数组存储数据
				$excelData = array(); 
				// 写入数据到数组中
				for ($row = 1; $row <= $highestRow; $row++) { 
					for ($col = 0; $col < $highestColumnIndex; $col++) { 
						$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
					} 
				}
				$totalmark=model('totalmark_backup');;
				for ($i=0,$f=0,$z=3; $i < ($highestRow-1)*2; $i++,$z++) { 
					$Xstu=$excelData[$z][1+($f*9)];
					$stunum=$excelData[$z][2+($f*9)];
					$stuname=$excelData[$z][3+($f*9)];
					$exam_grade=$excelData[$z][6+($f*9)];
					$written_grade=$excelData[$z][7+($f*9)];
					if($z==34){
						$f++;
						$z=2;
					}
					if($Xstu==''||$stunum==''){		
						break;
					}
					$data['stunum']=$stunum;
					if($totalmark->where($data)->count()==0){
						$redata['state']=400;
						return $redata;
					}else{
						$totalmark->getthetotal($stunum,$exam_grade,$written_grade);//进成绩 {正式}
			 			// $totalmark->addall($Xstu,$stunum,$stuname,$exam_grade,$written_grade);
			 			//数据不全测试用 
		 			}
				}
				$redata['state']=200;
				return $redata;
			}else{
				$redata['state']=500;
				return $redata;
			}
		}
		//修改单科成绩界面
		function changeown(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//修改页面对应的接口
		function deleteown(){
			$request = request();
			$postdata=$request->param();
			$gongzhong=$postdata['gongzhong'];
			$classid=$postdata['classid'];
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($classid);
			$allstudent=model('allstudent');
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			//进行导入excel
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			/*以下是一些设置 ，什么作者  标题啊之类的*/
			$objPHPExcel->getProperties()->setCreator("null")
				->setLastModifiedBy("null")
				->setTitle("null")
				->setSubject("null")
				->setDescription("null")
				->setKeywords("excel")
				->setCategory("result file");
			/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			//合并单元格制作标题栏
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->mergeCells('A1:R1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',$cdata[0]['classname']."实习分组表");
			//设置第二行序列
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			for ($i=0; $i < 2; $i++) { 
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($i*9)].'2', '组号')
				->setCellValue($charactors[1+($i*9)].'2', '序号')
				->setCellValue($charactors[2+($i*9)].'2', '学号')
				->setCellValue($charactors[3+($i*9)].'2', '姓  名')
				->setCellValue($charactors[4+($i*9)].'2', '性别')
				->setCellValue($charactors[5+($i*9)].'2', '实操')
				->setCellValue($charactors[6+($i*9)].'2', '作业');
				$objPHPExcel->getActiveSheet()->mergeCells($charactors[7+($i*9)].'2'.':'.$charactors[8+($i*9)].'2');
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($i*9)].'2', '平时 成绩');
			}
			//设置宽度自适应
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('Q')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('R')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getRowDimension(2)->setRowHeight(29);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setWrapText(true);
			//设置字体
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			//制作尾部提示
			$objPHPExcel->getActiveSheet()->mergeCells('A35:R35');
			$objPHPExcel->getActiveSheet()->getStyle('A35')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A35','（注：实操满分85，作业满分15，平时成绩为实操加作业之和）');
			//制作内容栏
			//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			$temp=$sdata[0]['stugroup'];
			for ($i=0,$f=0,$z=3; $i < count($sdata); $i++,$z++) { 
				if($z==35){
					$f++;
					$z=3;
				}
				if($temp!=$sdata[$i]['stugroup']){
					// $objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z)->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THICK);
					$styleArray = array(  
						'borders' => array(  
							'top' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THICK,//边框是粗的  
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
					$objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z)->applyFromArray($styleArray);
					$temp=$sdata[$i]['stugroup'];
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($f*9)].$z,$sdata[$i]['stugroup'])
				->setCellValue($charactors[1+($f*9)].$z, $sdata[$i]['Xstu'])
				->setCellValueExplicit($charactors[2+($f*9)].$z, $sdata[$i]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
				->setCellValue($charactors[3+($f*9)].$z, $sdata[$i]['stuname'])
				->setCellValue($charactors[4+($f*9)].$z, $sdata[$i]['sex'])
				->setCellValue($charactors[5+($f*9)].$z, '')
				->setCellValue($charactors[6+($f*9)].$z, '');
				$objPHPExcel->getActiveSheet()->mergeCells($charactors[7+($f*9)].$z.':'.$charactors[8+($f*9)].$z);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*9)].$z, '');
			}
			$styleArray = array(  
						'borders' => array(  
							'top' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THICK,//边框是粗的  
							),
						),
					);
			$objPHPExcel->getActiveSheet()->getStyle($charactors[1+($f*9)].$z.":".$charactors[8+($f*9)].$z)->applyFromArray($styleArray);
			for(;$i<64;$i++,$z++){
				if($z==35){
					$f++;
					$z=3;
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*9)].$z,$i+1);
				$objPHPExcel->getActiveSheet()->mergeCells($charactors[7+($f*9)].$z.':'.$charactors[8+($f*9)].$z);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*9)].$z, '');
			}
			//工作表名
			$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			//写在第几个工作表
			$objPHPExcel->setActiveSheetIndex(0);
			//文件格式
			header('Content-Type: application/vnd.ms-excel');
			//文件名和路径
			header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			header('Cache-Control: max-age=0');
			//创建文件
			$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			//确定写入
			$filename=ROOT_PATH."public/uploads/chengji/2.xls";
			$objWriter->save($filename);
			vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
			$objReader = \PHPExcel_IOFactory::createReader('Excel5');
			$encode='utf-8';
			$objReader->setReadDataOnly(true);
			// 读取文件并建立对应该文件excel类
			$objPHPexcel = $objReader->load($filename);
			// 获取工作表
			$objWorksheet = $objPHPexcel->getActiveSheet();
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
			// 创建数组存储数据
			$excelData = array(); 
			// 写入数据到数组中
			for ($row = 1; $row <= $highestRow; $row++) { 
				for ($col = 0; $col < $highestColumnIndex; $col++) { 
					$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
				} 
			}
			$Single=model('singlegrade_backup');;
			$allworks=model('allworks');
			$Work=$gongzhong;
			$xuanxiu=-1;
			if($xuanxiu==0){
				for ($i=1; $i <=2 ; $i++) { 
				 	for ($f=3; $f <35 ; $f++) {
				 		if($i==1){
							$Xstu=$excelData[$f][1];
							$stunum=$excelData[$f][2];
							$grade=$excelData[$f][5];
							$txt=$excelData[$f][6];
							$re_grade=$grade+$txt;
							$work=$Work;

							$Single->changesingle($stunum,$txt,$grade,$re_grade,$work);

							$allworks->gettheworks($stunum,$work,$re_grade);

						}else if($i==2){
								$Xstu=$excelData[$f][10];
						 		$stunum=$excelData[$f][11];
						 		$grade=$excelData[$f][14];
								$txt=$excelData[$f][15];
						 		$re_grade=$grade+$txt;
						 		$work=$Work;
							if($stunum==''){
								break;
							}else{
						 		
						 		$Single->changesingle($stunum,$txt,$grade,$re_grade,$work);
						 		$allworks->gettheworks($stunum,$work,$re_grade);

						 	}
						}
					}
				}
			}else if($xuanxiu==-1){
				for ($i=1; $i <=2 ; $i++) { 
				 	for ($f=3; $f <35 ; $f++) {
				 		if($i==1){
							$Xstu=$excelData[$f][1];
							$stunum=$excelData[$f][2];
							$grade=$excelData[$f][5];
							$txt=$excelData[$f][6];
							$re_grade=-1;
							$work=$Work;
							$Single->where(array('stunum'=>$stunum,'work'=>$work))->delete();
							$allworks->gettheworks($stunum,$work,$re_grade);
						}else if($i==2){
							$Xstu=$excelData[$f][10];
					 		$stunum=$excelData[$f][11];
					 		$grade=$excelData[$f][14];
							$txt=$excelData[$f][15];
					 		$re_grade=-1;
					 		$work=$Work;
							if($stunum==''){
								break;
							}else{
						 		$Single->where(array('stunum'=>$stunum,'work'=>$work))->delete();
						 		$allworks->gettheworks($stunum,$work,$re_grade);
						 	}
						}		
					}
		 		}
			}
			$redata['state']=200;
			return $redata;
		}
		//总结成绩页面
		function summary(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
		}
		//总结成绩接口
		function tongji(){
			$request = request();
			$postdata=$request->param();
			if($postdata['data']!='sure'){
				return 400;
			}
			$allworks=model('allworks');
			$totalmark=model('totalmark_backup');;
			$zzz=$allworks->returnall();
			$n=$allworks->count();
			$k=$totalmark->count();
			for($i=0;$i<$n;$i++){
				$sum=0;
				$j=0;
				if($zzz[$i]['Qian_gong']!=-1){$j++;$sum=$sum+$zzz[$i]['Qian_gong'];}
				if($zzz[$i]['Pu_xi']!=-1){$j++;$sum=$sum+$zzz[$i]['Pu_xi'];}
				if($zzz[$i]['Mo_xue']!=-1){$j++;$sum=$sum+$zzz[$i]['Mo_xue'];}
				if($zzz[$i]['Dian_huo_hua']!=-1){$j++;$sum=$sum+$zzz[$i]['Dian_huo_hua'];}
				if($zzz[$i]['Chong_ya']!=-1){$j++;$sum=$sum+$zzz[$i]['Chong_ya'];}
				if($zzz[$i]['Zhu_zao']!=-1){$j++;$sum=$sum+$zzz[$i]['Zhu_zao'];}
				if($zzz[$i]['Mu_ju']!=-1){$j++;$sum=$sum+$zzz[$i]['Mu_ju'];}
				if($zzz[$i]['Han_jie']!=-1){$j++;$sum=$sum+$zzz[$i]['Han_jie'];}
				if($zzz[$i]['Pu_che']!=-1){$j++;$sum=$sum+$zzz[$i]['Pu_che'];}
				if($zzz[$i]['Jia_gong']!=-1){$j++;$sum=$sum+$zzz[$i]['Jia_gong'];}
				if($zzz[$i]['Shu_chong']!=-1){$j++;$sum=$sum+$zzz[$i]['Shu_chong'];}
				if($zzz[$i]['Shu_xi']!=-1){$j++;$sum=$sum+$zzz[$i]['Shu_xi'];}
				if($zzz[$i]['Shu_che']!=-1){$j++;$sum=$sum+$zzz[$i]['Shu_che'];}
				if($zzz[$i]['PLC']!=-1){$j++;$sum=$sum+$zzz[$i]['PLC'];}
				if($zzz[$i]['Xian_qie_ge']!=-1){$j++;$sum=$sum+$zzz[$i]['Xian_qie_ge'];}
				if($zzz[$i]['Kuai_su_cheng_xing']!=-1){$j++;$sum=$sum+$zzz[$i]['Kuai_su_cheng_xing'];}
				if($zzz[$i]['re_chu_li']!=-1){$j++;$sum=$sum+$zzz[$i]['re_chu_li'];}
				$stunum=$zzz[$i]['stunum'];
				$regular_grade=$sum/$j;
				$totalmark->getthereg($stunum,$regular_grade);
			}
			$www=$totalmark->returnall();
			for($d=0;$d<$k;$d++){
				$stunum=$www[$d]['stunum'];
				$f1=$www[$d]['regular_grade']*70/100;
				$f2=$www[$d]['exam_grade']*20/100;
				$f3=$www[$d]['written_grade']*10/100;
				$final_grade=$f1+$f2+$f3;
				$totalmark->getthefin($stunum,$final_grade);
			}
			$redata['state']=200;
			return $redata;
		}
		//选择课程界面
		function chosecu(){
			$request = request();
			$getdata=$request->param();
			if(!input('?get.page')){
				$page=1;
			}else{
				if (intval(input('get.page'))<1) {
					$page=1;
				}
				$page=intval(input('get.page'));
			}
			$nextstate=$this->nextcu($page,10);
			$curriculum=model('curriculum');
			$data=$curriculum->getcu($page,10);
			for ($i=0; $i < count($data); $i++) { 
				$data[$i]['time']=date('Y-m-d H:i:s',$data[$i]['time']);
			}
			$view = new View();
			$view->data = $data;
			$view->page = $page;
			$view->nextstate = $nextstate;
			return $view->fetch();
		}
		// 获取下一页课程是否存在的接口
		function nextcu($page,$line){
			$page=intval($page);
			$line=intval($line);
			$curriculum =model('curriculum');
			$data=$curriculum->next($page,$line);
			if($data)
				return 1;
			else
				return 0;
		}
		//使用课程的接口
		function usecu(){
			$request = request();
			$postdata=$request->param();
			$curriculum =model('curriculum');
			if($curriculum->changestate(intval($postdata['id']))){
				$data['state']=200;
			}
			else{
				$data['state']=400;
			}
			return $data;
		}
		//删除课程的接口
		function deletecu(){
			$request = request();
			$postdata=$request->param();
			$curriculum =model('curriculum');
			$redata=$curriculum->deleteone(intval($postdata['id']));
			if($redata){
				unlink(ROOT_PATH."public/uploads/kecheng/".$redata[0]['url']);
				$data['state']=200;
			}
			else{
				$data['state']=400;
			}
			return $data;
		}
		//导出课程文件接口
		function outkecheng(){
			$request = request();
			$getdata=$request->param();
			$curriculum =model('curriculum');
			$redata=$curriculum->findone(intval($getdata['id']));
			header("Content-type:text/html;charset=utf-8"); 
			$file_path=ROOT_PATH."public/uploads/kecheng/".$redata[0]['url']; 
			//首先要判断给定的文件存在与否 
			if(!file_exists($file_path)){ 
			return ; 
			} 
			$fp=fopen($file_path,"r"); 
			$file_size=filesize($file_path); 
			//下载文件需要用到的头 
			Header("Content-type: application/octet-stream"); 
			Header("Accept-Ranges: bytes"); 
			Header("Accept-Length:".$file_size); 
			Header("Content-Disposition: attachment; filename=".$redata[0]['url']); 
			$buffer=1024; 
			$file_count=0; 
			//向浏览器返回数据 
			while(!feof($fp) && $file_count<$file_size){ 
			$file_con=fread($fp,$buffer); 
			$file_count+=$buffer; 
			echo $file_con; 
			} 
			fclose($fp); 
		}
		//增加课程页面
		function addcu(){
			$view = new View();
			return $view->fetch();
		}
		//增加课程接口
		function addkecheng(){
			$request = request();
			$postdata=$request->param();
			$curriculum =model('curriculum');
			$time=time();
			$url=$time.".xls";
			$filename=ROOT_PATH."public/uploads/chengji/1.xls";
			copy($filename,ROOT_PATH."public/uploads/kecheng/".$url);
			$redata=$curriculum->addcu($postdata['kecheng'],$url,$time,0);
			$data['state']=200;
			return $data;
		}
		//查看当前课程页面
		function showkecheng(){
			$curriculum =model('curriculum');
			$qqq=$curriculum->returnone();
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
			$objReader = \PHPExcel_IOFactory::createReader('Excel5');
			$filename=ROOT_PATH."public/uploads/kecheng/".$qqq[0]['url'];
			$encode='utf-8';
			// $objReader->setReadDataOnly(true);
			// 读取文件并建立对应该文件excel类
			$objPHPexcel = $objReader->load($filename);
			// 获取工作表
			$objWorksheet=$objPHPexcel->getActiveSheet();
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
			// 创建数组存储数据
			$excelData = array(); 
			// 写入数据到数组中
			for ($row = 1; $row <= $highestRow; $row++) { 
				for ($col = 0; $col < $highestColumnIndex; $col++) { 
					$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
				} 
			}
			$sheetData = $objPHPexcel->getActiveSheet()->toArray(null,true,true,true);
			$sheetData=array_values($sheetData);
			for ($i=0; $i < count($sheetData) ; $i++) { 
				$sheetData[$i]=array_values($sheetData[$i]);
			}
			$arr=$objWorksheet->getMergeCells();
			// dump($arr);
			$arr=array_values($arr);
			// 取得总行数
			$highestRow = $objWorksheet->getHighestRow(); 
			// 取得总列数
			$highestColumn = $objWorksheet->getHighestColumn(); 
			$data=array();
			for ($i=0; $i <$highestRow ; $i++) { 
				$data[$i]=array();
				for ($f=0; $f <$highestColumnIndex ; $f++) {
					$data[$i][$f]="1:1";
				}
			}
			for ($i=0; $i < count($arr); $i++) { 
				$temp=explode(':',$arr[$i],2);
				$hang=$this->calculate(substr($temp[0], 0, 1),substr($temp[1], 0, 1));
				$lie=substr($temp[1], 1, 100)-substr($temp[0], 1, 100);
				$data[substr($temp[0], 1, 100)-1][$this->charactorsnum(substr($temp[0], 0, 1))-1]="".($hang+1).":".($lie+1);
				if($lie>0&&$hang==0){
					for ($f=substr($temp[0], 1, 100); $f < substr($temp[0], 1, 100)+$lie; $f++) {
						$data[$f][$this->charactorsnum(substr($temp[0], 0, 1))-1]="0:0";
					}
				}
				if($hang>0&&$lie==0){
					for ($f=$this->charactorsnum(substr($temp[0],0, 1)); $f < $this->charactorsnum(substr($temp[0], 0, 1))+$hang; $f++) { 
						$data[substr($temp[0], 1, 100)-1][$f]="0:0";
					}
				}
				if($hang>0&&$lie>0){
					for ($z=substr($temp[0], 1, 100)-1; $z < substr($temp[0], 1, 100)+$lie; $z++) { 
						for ($f=$this->charactorsnum(substr($temp[0],0, 1))-1; $f < $this->charactorsnum(substr($temp[0], 0, 1))+$hang; $f++) { 
							$data[$z][$f]="0:0";
						}
					}
					$data[substr($temp[0], 1, 100)-1][$this->charactorsnum(substr($temp[0], 0, 1))-1]="".($hang+1).":".($lie+1);
				}
			}
			$view = new View();
			$view->data = $data;
			$view->hang = $highestRow;
			$view->line = $highestColumnIndex;
			$view->sheetData =  $sheetData;
			return $view->fetch();
		}
		//结束课程界面
		function over(){
			$view = new View();
			return $view->fetch();
		}
		//结束课程页面接口
		function upover(){
			$request = request();
			$postdata=$request->param();
			if ($postdata['data']=='sure') {
				if ($this->backups()) {
					if ($this->clear()) {
						$data['state']=200;
						return $data;
					}
				}
			}
			$data['state']=400;
			return $data;
		}
		//备份数据库接口
		function backups(){
			$database=Config::get('database');
			header("Content-type:text/html;charset=utf-8");
			//配置信息
			$cfg_dbhost = $database['hostname'];
			$cfg_dbname = $database['database'];
			$cfg_dbuser = $database['username'];
			$cfg_dbpwd = $database['password'];
			$cfg_db_language = 'utf8';
			$showtime=date("Y-m-d H;i;s");
			$to_file_name = ROOT_PATH."public/uploads/back/".$showtime.'.sql';
			// END 配置
			//链接数据库
			$mysqli = new \mysqli($cfg_dbhost, $cfg_dbuser,$cfg_dbpwd,$cfg_dbname);
			//选择编码
			mysqli_query($mysqli,"set names ".$cfg_db_language);
			//数据库中有哪些表
			$tables=mysqli_query($mysqli,'SHOW TABLES');
			// $tables = mysql_list_tables($cfg_dbname);//可隐藏提示的不推荐方法
			//将这些表记录到一个数组
			$tabList = array();
			while($row = mysqli_fetch_row($tables)){
				$tabList[] = $row[0];
			}
			$info = "-- ----------------------------\r\n";
			$info .= "-- 日期：".date("Y-m-d H:i:s",time())."\r\n";
			$info .= "-- 仅用于测试和学习,本程序不适合处理超大量数据\r\n";
			$info .= "-- ----------------------------\r\n\r\n";
			file_put_contents($to_file_name,$info,FILE_APPEND);
			//将每个表的表结构导出到文件
			foreach($tabList as $val){
				if ($val=='admin'||$val=='curriculum'||$val=='notice') {
					continue;
				}
				$sql = "show create table ".$val;
				$res = mysqli_query($mysqli,$sql);
				$row = mysqli_fetch_array($res);
				$info = "-- ----------------------------\r\n";
				$info .= "-- Table structure for `".$val."`\r\n";
				$info .= "-- ----------------------------\r\n";
				$info .= "DROP TABLE IF EXISTS `".$val."`;\r\n";
				$sqlStr = $info.$row[1].";\r\n\r\n";
				//追加到文件
				file_put_contents($to_file_name,$sqlStr,FILE_APPEND);
				//释放资源
				mysqli_free_result($res);
			}
			//将每个表的数据导出到文件
			foreach($tabList as $val){
				if ($val=='admin'||$val=='curriculum'||$val=='notice') {
					continue;
				}
				$sql = "select * from ".$val;
				$res = mysqli_query($mysqli,$sql);
				//如果表中没有数据，则继续下一张表
				if(mysqli_num_rows($res)<1) continue;
				//
				$info = "-- ----------------------------\r\n";
				$info .= "-- Records for `".$val."`\r\n";
				$info .= "-- ----------------------------\r\n";
				file_put_contents($to_file_name,$info,FILE_APPEND);
				//读取数据
				while($row = mysqli_fetch_row($res)){
					$sqlStr = "INSERT INTO `".$val."` VALUES (";
				foreach($row as $zd){
					$sqlStr .= "'".$zd."', ";
				}
				//去掉最后一个逗号和空格
				$sqlStr = substr($sqlStr,0,strlen($sqlStr)-2);
				$sqlStr .= ");\r\n";
				file_put_contents($to_file_name,$sqlStr,FILE_APPEND);
				}
				//释放资源
				mysqli_free_result($res);
				file_put_contents($to_file_name,"\r\n",FILE_APPEND);
			}
			return true;
		}
		//清除数据库接口
		function clear(){
			$database=Config::get('database');
			$cfg_dbhost = $database['hostname'];
			$cfg_dbname = $database['database'];
			$cfg_dbuser = $database['username'];
			$cfg_dbpwd = $database['password'];
			$mysqli = new \mysqli($cfg_dbhost, $cfg_dbuser,$cfg_dbpwd,$cfg_dbname);
			mysqli_query($mysqli,"SET NAMES 'UTF8'");
			$sql1= "TRUNCATE TABLE allstudent;";
			$sql2= "TRUNCATE TABLE allworks;";
			$sql3= "TRUNCATE TABLE classss;";
			$sql4= "TRUNCATE TABLE singlegrade;";
			$sql5= "TRUNCATE TABLE totalmark;";
			//拼接的方法不好使 只能一个个来
			$flag=5;
			if(mysqli_query($mysqli,$sql1)){$flag--;}
			if(mysqli_query($mysqli,$sql2)){$flag--;}
			if(mysqli_query($mysqli,$sql3)){$flag--;}
			if(mysqli_query($mysqli,$sql4)){$flag--;}
			if(mysqli_query($mysqli,$sql5)){$flag--;}
			if ($flag==0) {
				return true;
			}else {
				return false;
			};
		}
		//测试还原数据页面
		function restorepage(){
			//获取列表 
			$dir=ROOT_PATH."public/uploads/back/";
			$datalist=$this->list_dir($dir);
			//dump($datalist);列表数组
			echo"点击相应文件即可还原：<br>";
			$num = count($datalist); 
			for($i=0;$i<$num;++$i){ 
				echo '<a href="./back.php?name='.$datalist[$i].'">'.$datalist[$i].'</a><br>';
			}
		}
		//还原数据接口用到的函数
		function list_dir($dir){
			$result = array();
			if (is_dir($dir)){
				$file_dir = scandir($dir);
				foreach($file_dir as $file){
					if ($file == '.' || $file == '..'){
					continue;
					}
					elseif (is_dir($dir.$file)){
						$result = array_merge($result, list_dir($dir.$file.'/'));
					}
					else{
						array_push($result, $dir.$file);
					}
				}
			}
			return $result;
		}
		//还原数据接口
		function restore(){
			$request = request();
			$postdata=$request->param();
			$name=$postdata['name'];
			header("Content-Type: text/html; charset=utf8");
			$database=Config::get('database');
			$cfg_dbhost = $database['hostname'];
			$cfg_dbname = 'kind_backup';
			$cfg_dbuser = $database['username'];
			$cfg_dbpwd = $database['password'];
			$file_name = $name;
			$dbhost = $cfg_dbhost;
			$dbuser = $cfg_dbuser;
			$dbpass = $cfg_dbpwd;
			$dbname = $cfg_dbname;
			set_time_limit(0);
			$fp = @fopen($file_name,"r") or die("sql文件打不开");//打开文件
			$pdo = new \PDO("mysql:host=".$dbhost.";dbname=".$dbname,$dbuser,$dbpass);//连接数据库
			$pdo->query('set names utf8');//设置编码
			while($SQL = $this->GetNextSQL($fp)){
				if(!$pdo->query($SQL)){
				}
			}
			fclose($fp) or die("can't close file");//关闭文件
			$redata['state']=200;
			return $redata;
			// mysql_close();
			//从文件中逐条取sql	
		}
		//还原数据接口使用到的函数
		function GetNextSQL($fp){
			$sql="";
			while($line = @fgets($fp,40960)){
				$line = trim($line);
				$line = str_replace("////", "//", $line);
				$line = str_replace("/","'",$line);
				$line = str_replace("//r//n","chr(13).chr(10)",$line);
				$line = stripcslashes($line);
				if(strlen($line)>1){
					if($line[0]=='-' && $line[1]=="-"){
						continue;
					}
				}
			$sql .= $line.chr(13).chr(10);
			if(strlen($line)>0){
				if($line[strlen($line)-1]==";"){
					break;
					}
				}
			}
			return $sql;
		}
		//还原数据页面
		function back(){
			$dir=ROOT_PATH."public/uploads/back/";
			$datalist=$this->list_dir($dir);
			$datalist=array_reverse($datalist);
			$filename=array();
			for ($i=0; $i < count($datalist); $i++) { 
				$filename[$i]=basename($datalist[$i],".sql");
			}
			$view = new View();
			$view->datalist = $datalist;
			$view->filename = $filename;
			return $view->fetch();
		}
		//导出最终成绩接口
		// function apilast(){

			// 	//获取输入的班级id
			// 	$request = request();
			// 	$getdata=$request->param();
			// 	$id=intval($getdata['id']);
			// 	if($id<=0){
			// 		return;
			// 	}
			// 	//获取所有学生与班级信息
			// 	$classss=model('classss');
			// 	$cdata=$classss->returnone($id);
			// 	$allstudent=model('allstudent');
			// 	$totalmark=model('totalmark_backup');;
			// 	$sdata=$allstudent->returnone($cdata[0]['classname']);
			// 	//进行导入excel
			// 	vendor("PHPExcel.Classes.PHPExcel");
			// 	vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			// 	$objPHPExcel = new \PHPExcel();
			// 	/*以下是一些设置 ，什么作者  标题啊之类的*/
			// 	$objPHPExcel->getProperties()->setCreator("null")
			// 		->setLastModifiedBy("null")
			// 		->setTitle("null")
			// 		->setSubject("null")
			// 		->setDescription("null")
			// 		->setKeywords("excel")
			// 		->setCategory("result file");
			// 	/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			// 	//合并单元格制作标题栏
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A1:I1");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:I1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:I1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',"华南理工大学广州学院2014-2015学年第2学期成绩登记表");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A2:C2");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A2:C2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A2',"开课学院：管理学院");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D2:I2");
			// 	$objPHPExcel->getActiveSheet()->getStyle('D2:I2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_BOTTOM);
			// 	$objPHPExcel->getActiveSheet()->getStyle('D2:I2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('D2',"行政班：13市场营销3班");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A3:C3");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A3:C3')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A3',"课程名称：金工实习");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D3:G3");
			// 	$objPHPExcel->getActiveSheet()->getStyle('D3:G3')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('D3',"课程代码：861007");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("H3:I3");
			// 	$objPHPExcel->getActiveSheet()->getStyle('H3:I3')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('H3',"学分：1.0");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A4:I4");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A4:I4')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A4',"选课课号：(2014-2015-2)-861007-2007019-1");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A5:I5')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->getActiveSheet()->getStyle('A5:I5')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A5', '序号')
			// 		->setCellValue('B5', '学号')
			// 		->setCellValue('C5', '姓名')
			// 		->setCellValue('D5', '平时成绩')
			// 		->setCellValue('E5', '期中成绩')
			// 		->setCellValue('F5', '期末成绩')
			// 		->setCellValue('G5', '实验成绩')
			// 		->setCellValue('H5', '总评成绩')
			// 		->setCellValue('I5', '备注');
			// 		//制作内容栏
			// 	//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			// 	$grade9=0;//90以上的数目
			// 	$grade8=0;//80以上的数目
			// 	$grade7=0;
			// 	$grade6=0;
			// 	$grade5=0;//不及格数目
			// 	for ($i=0,$z=6; $i < count($sdata); $i++,$z++) {
			// 		$temp=$totalmark->getone($sdata[$i]['stunum']);
			// 		$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".$z,$temp[0]['Xstu'])
			// 		->setCellValueExplicit("B".$z, $temp[0]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
			// 		->setCellValue("C".$z, $temp[0]['stuname'])
			// 		->setCellValue("D".$z, $temp[0]['regular_grade'])
			// 		->setCellValue("F".$z, $temp[0]['exam_grade'])
			// 		->setCellValue("G".$z, $temp[0]['written_grade'])
			// 		->setCellValue("H".$z, $temp[0]['final_grade']);
			// 		if ($temp[0]['final_grade']>=90) {
			// 			$grade9++;
			// 		}elseif ($temp[0]['final_grade']>=80) {
			// 			$grade8++;
			// 		}elseif ($temp[0]['final_grade']>=70) {
			// 			$grade7++;
			// 		}elseif ($temp[0]['final_grade']>=60) {
			// 			$grade6++;
			// 		}else{
			// 			$grade5++;
			// 		}
			// 	}
			// 	$objPHPExcel->getActiveSheet()->getStyle('A6:I'.($z-1))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_LEFT);
			// 	//设置边框
			// 	$styleArray = array(  
			// 		'borders' => array(  
			// 			'allborders' => array(  
			// 				'style' => \PHPExcel_Style_Border::BORDER_THIN,//边框是细的
			// 			),
			// 		),
			// 	);
			// 	$objPHPExcel->getActiveSheet()->getStyle("A4:I".($z-1))->applyFromArray($styleArray);
			// 	//设置底部
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+1).":I".($z+1));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.($z+1), '考试/考查成绩统计');
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".($z+1).":I".($z+1))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+2).":C".($z+2));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+2), '90分以上（优秀）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+2).":F".($z+2));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+2), $grade9.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+2).":I".($z+2));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+2), 100*number_format($grade9*1.0/$i,4).'%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+3).":C".($z+3));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+3), '80-89分（良好）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+3).":F".($z+3));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+3), $grade8.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+3).":I".($z+3));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+3), 100*number_format($grade8*1.0/$i,4).'%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+4).":C".($z+4));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+4), '70-79分（中等）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+4).":F".($z+4));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+4),$grade7.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+4).":I".($z+4));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+4), 100*number_format($grade7*1.0/$i,4).'%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+5).":C".($z+5));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+5), '60-69分（及格）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+5).":F".($z+5));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+5), $grade6.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+5).":I".($z+5));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+5), 100*number_format($grade6*1.0/$i,4).'%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+6).":C".($z+6));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+6), '不及格（不及格）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+6).":F".($z+6));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+6), $grade5.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+6).":I".($z+6));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+6), 100*number_format($grade5*1.0/$i,4).'%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+7).":C".($z+7));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+7), '其他');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+7).":F".($z+7));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+7), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+7).":I".($z+7));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+7), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+8).":C".($z+8));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+8), '合计');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+8).":F".($z+8));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+8), $i.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+8).":I".($z+8));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+8), '100%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+9).":C".($z+9));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+9), '缓考0人    缺考0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+9).":F".($z+9));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+9), '免修0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+9).":I".($z+9));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+9), "实考".$i."人 总人数 ".$i."人");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+10).":H".($z+10));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+10), '平时：70%；期中：0%；期末：20%；实验：10%');
			// 	$styleArray = array(  
			// 		'borders' => array(  
			// 			'allborders' => array(  
			// 				'style' => \PHPExcel_Style_Border::BORDER_THIN,//边框是细的
			// 			),
			// 		),
			// 	);
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".($z+1).":I".($z+9))->applyFromArray($styleArray);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+12).":B".($z+12));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+12), '教师：_________(签，章)');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("C".($z+12).":E".($z+12));
			// 	$objPHPExcel->getActiveSheet()->mergeCells("F".($z+12).":I".($z+12));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("F".($z+12), '开课学院教学负责人：__________(签，章)');
			// 	$objPHPExcel->getActiveSheet()->getStyle("F".($z+12).":I".($z+12))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$z=$z+13;
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".$z.":B".$z);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".$z, '____年 ___  月___ 日');
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".$z.":B".$z)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("C".$z.":E".$z);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("H".$z.":I".$z);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("H".$z, '____年 ___  月___ 日');
			// 	$objPHPExcel->getActiveSheet()->getStyle("H".$z.":I".$z)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$z=$z+2;
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".$z.":H".$z);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".$z, '说明：任课教师应于考试/查后三天内，将本表一式两份报至所在学院。');
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".($z+1).":I".($z+15))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::VERTICAL_BOTTOM);
			// 	//设置单元格高度宽度
			// 	$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			// 	for ($i=0; $i < 26; $i++) { 
			// 		$objPHPExcel->getActiveSheet()->getColumnDimension($charactors[$i])->setWidth(10);
			// 	}
			// 	$objPHPExcel->getActiveSheet()->getRowDimension(1)->setRowHeight(21);
			// 	for ($i=2; $i < $z+1; $i++) { 
			// 		$objPHPExcel->getActiveSheet()->getRowDimension($i)->setRowHeight(12);
			// 	}
			// 	//设置字体
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:i'.$z)->getFont()->setSize(9);
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:i'.$z)->getFont()->setName('宋体');
			// 	//工作表名
			// 	$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			// 	//写在第几个工作表
			// 	$objPHPExcel->setActiveSheetIndex(0);
			// 	//文件格式
			// 	header('Content-Type: application/vnd.ms-excel');
			// 	//文件名和路径
			// 	header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			// 	header('Cache-Control: max-age=0');
			// 	//创建文件
			// 	$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			// 	//确定写入
			// 	$objWriter->save('php://output');
			// 	return;
		// }
		function apilast(){
			//获取输入的班级id
			$request = request();
			$getdata=$request->param();
			$id=intval($getdata['id']);
			if($id<=0){
				return;
			}
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($id);
			$allstudent=model('allstudent');
			$totalmark=model('totalmark_backup');;
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			//进行导入excel
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			/*以下是一些设置 ，什么作者  标题啊之类的*/
			$objPHPExcel->getProperties()->setCreator("null")
				->setLastModifiedBy("null")
				->setTitle("null")
				->setSubject("null")
				->setDescription("null")
				->setKeywords("excel")
				->setCategory("result file");
			/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			//合并单元格制作标题栏
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->mergeCells('A1:R1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',$cdata[0]['classname']."实习成绩表");
			//设置第二行序列
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			for ($i=0; $i < 2; $i++) { 
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($i*9)].'2', '组号')
				->setCellValue($charactors[1+($i*9)].'2', '序号')
				->setCellValue($charactors[2+($i*9)].'2', '学号')
				->setCellValue($charactors[3+($i*9)].'2', '姓  名')
				->setCellValue($charactors[4+($i*9)].'2', '性别')
				->setCellValue($charactors[5+($i*9)].'2', '平时')
				->setCellValue($charactors[6+($i*9)].'2', '考试')
				->setCellValue($charactors[7+($i*9)].'2', '报告')
				->setCellValue($charactors[8+($i*9)].'2', '总评');
			}
			//设置宽度自适应
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('Q')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('R')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getRowDimension(2)->setRowHeight(29);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setWrapText(true);
			//设置字体
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			//制作尾部提示
			$objPHPExcel->getActiveSheet()->mergeCells('A35:R35');
			$objPHPExcel->getActiveSheet()->getStyle('A35')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A35','（注：平时70%，考试20%，报告10%）');
			//制作内容栏
			//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			for ($i=0,$f=0,$z=3; $i < count($sdata); $i++,$z++) {
				$temp=$totalmark->getone($sdata[$i]['stunum']); 
				if($z==35){
					$f++;
					$z=3;
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*9)].$z, $sdata[$i]['Xstu'])
				->setCellValueExplicit($charactors[2+($f*9)].$z, $sdata[$i]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
				->setCellValue($charactors[3+($f*9)].$z, $sdata[$i]['stuname'])
				->setCellValue($charactors[4+($f*9)].$z, $sdata[$i]['sex'])
				->setCellValue($charactors[5+($f*9)].$z, $temp[0]['regular_grade'])
				->setCellValue($charactors[6+($f*9)].$z, $temp[0]['exam_grade'])
				->setCellValue($charactors[7+($f*9)].$z, $temp[0]['written_grade'])
				->setCellValue($charactors[8+($f*9)].$z, $temp[0]['final_grade']);
			}
			$styleArray = array(  
				'borders' => array(  
					'allborders' => array(  
						'style' => \PHPExcel_Style_Border::BORDER_THIN,
					),
				),
			);
			$objPHPExcel->getActiveSheet()->getStyle("A2:R2")->applyFromArray($styleArray);
			$objPHPExcel->getActiveSheet()->getStyle("B3:I34")->applyFromArray($styleArray);
			$objPHPExcel->getActiveSheet()->getStyle("K3:R34")->applyFromArray($styleArray);
			for(;$i<64;$i++,$z++){
				if($z==35){
					$f++;
					$z=3;
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*9)].$z,$i+1);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*9)].$z, '');
			}
			//工作表名
			$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			//写在第几个工作表
			$objPHPExcel->setActiveSheetIndex(0);
			//文件格式
			header('Content-Type: application/vnd.ms-excel');
			//文件名和路径
			header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			header('Cache-Control: max-age=0');
			//创建文件
			$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			//确定写入
			$objWriter->save('php://output');
			return;
		}
		//导出实验成绩模板
		// function shiyan(){

			// 	//获取输入的班级id
			// 	$request = request();
			// 	$getdata=$request->param();
			// 	$id=intval($getdata['id']);
			// 	if($id<=0){
			// 		return;
			// 	}
			// 	//获取所有学生与班级信息
			// 	$classss=model('classss');
			// 	$cdata=$classss->returnone($id);
			// 	$allstudent=model('allstudent');
			// 	$totalmark=model('totalmark_backup');;
			// 	$sdata=$allstudent->returnone($cdata[0]['classname']);
			// 	//进行导入excel
			// 	vendor("PHPExcel.Classes.PHPExcel");
			// 	vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			// 	$objPHPExcel = new \PHPExcel();
			// 	/*以下是一些设置 ，什么作者  标题啊之类的*/
			// 	$objPHPExcel->getProperties()->setCreator("null")
			// 		->setLastModifiedBy("null")
			// 		->setTitle("null")
			// 		->setSubject("null")
			// 		->setDescription("null")
			// 		->setKeywords("excel")
			// 		->setCategory("result file");
			// 	/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			// 	//合并单元格制作标题栏
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A1:I1");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:I1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:I1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',"华南理工大学广州学院2014-2015学年第2学期成绩登记表");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A2:C2");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A2:C2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A2',"开课学院：管理学院");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D2:I2");
			// 	$objPHPExcel->getActiveSheet()->getStyle('D2:I2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_BOTTOM);
			// 	$objPHPExcel->getActiveSheet()->getStyle('D2:I2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('D2',"行政班：13市场营销3班");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A3:C3");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A3:C3')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A3',"课程名称：金工实习");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D3:G3");
			// 	$objPHPExcel->getActiveSheet()->getStyle('D3:G3')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('D3',"课程代码：861007");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("H3:I3");
			// 	$objPHPExcel->getActiveSheet()->getStyle('H3:I3')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('H3',"学分：1.0");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A4:I4");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A4:I4')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A4',"选课课号：(2014-2015-2)-861007-2007019-1");
			// 	$objPHPExcel->getActiveSheet()->getStyle('A5:I5')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			// 	$objPHPExcel->getActiveSheet()->getStyle('A5:I5')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A5', '序号')
			// 		->setCellValue('B5', '学号')
			// 		->setCellValue('C5', '姓名')
			// 		->setCellValue('D5', '平时成绩')
			// 		->setCellValue('E5', '期中成绩')
			// 		->setCellValue('F5', '期末成绩')
			// 		->setCellValue('G5', '实验成绩')
			// 		->setCellValue('H5', '总评成绩')
			// 		->setCellValue('I5', '备注');
			// 		//制作内容栏
			// 	//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			// 	for ($i=0,$z=6; $i < count($sdata); $i++,$z++) {
			// 		$temp=$totalmark->getone($sdata[$i]['stunum']);
			// 		$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".$z,$temp[0]['Xstu'])
			// 		->setCellValueExplicit("B".$z, $temp[0]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
			// 		->setCellValue("C".$z, $temp[0]['stuname']);
			// 	}
			// 	//设置边框
			// 	$styleArray = array(  
			// 		'borders' => array(  
			// 			'allborders' => array(  
			// 				'style' => \PHPExcel_Style_Border::BORDER_THIN,//边框是细的
			// 			),
			// 		),
			// 	);
			// 	$objPHPExcel->getActiveSheet()->getStyle("A4:I".($z-1))->applyFromArray($styleArray);
			// 	//设置底部
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+1).":I".($z+1));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A'.($z+1), '考试/考查成绩统计');
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".($z+1).":I".($z+1))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+2).":C".($z+2));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+2), '90分以上（优秀）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+2).":F".($z+2));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+2), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+2).":I".($z+2));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+2), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+3).":C".($z+3));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+3), '80-89分（良好）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+3).":F".($z+3));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+3), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+3).":I".($z+3));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+3), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+4).":C".($z+4));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+4), '70-79分（中等）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+4).":F".($z+4));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+4), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+4).":I".($z+4));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+4), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+5).":C".($z+5));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+5), '60-69分（及格）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+5).":F".($z+5));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+5), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+5).":I".($z+5));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+5), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+6).":C".($z+6));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+6), '不及格（不及格）');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+6).":F".($z+6));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+6), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+6).":I".($z+6));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+6), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+7).":C".($z+7));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+7), '其他');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+7).":F".($z+7));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+7), '0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+7).":I".($z+7));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+7), '0%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+8).":C".($z+8));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+8), '合计');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+8).":F".($z+8));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+8), $i.'人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+8).":I".($z+8));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+8), '100%');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+9).":C".($z+9));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+9), '缓考0人    缺考0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("D".($z+9).":F".($z+9));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("D".($z+9), '免修0人');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("G".($z+9).":I".($z+9));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("G".($z+9), "实考".$i."人 总人数 ".$i."人");
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+10).":H".($z+10));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+10), '平时：70%；期中：0%；期末：20%；实验：10%');
			// 	$styleArray = array(  
			// 		'borders' => array(  
			// 			'allborders' => array(  
			// 				'style' => \PHPExcel_Style_Border::BORDER_THIN,//边框是细的
			// 			),
			// 		),
			// 	);
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".($z+1).":I".($z+9))->applyFromArray($styleArray);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".($z+12).":B".($z+12));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".($z+12), '教师：_________(签，章)');
			// 	$objPHPExcel->getActiveSheet()->mergeCells("C".($z+12).":E".($z+12));
			// 	$objPHPExcel->getActiveSheet()->mergeCells("F".($z+12).":I".($z+12));
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("F".($z+12), '开课学院教学负责人：__________(签，章)');
			// 	$objPHPExcel->getActiveSheet()->getStyle("F".($z+12).":I".($z+12))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$z=$z+13;
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".$z.":B".$z);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".$z, '____年 ___  月___ 日');
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".$z.":B".$z)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("C".$z.":E".$z);
			// 	$objPHPExcel->getActiveSheet()->mergeCells("H".$z.":I".$z);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("H".$z, '____年 ___  月___ 日');
			// 	$objPHPExcel->getActiveSheet()->getStyle("H".$z.":I".$z)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_RIGHT);
			// 	$z=$z+2;
			// 	$objPHPExcel->getActiveSheet()->mergeCells("A".$z.":H".$z);
			// 	$objPHPExcel->setActiveSheetIndex(0)->setCellValue("A".$z, '说明：任课教师应于考试/查后三天内，将本表一式两份报至所在学院。');
			// 	$objPHPExcel->getActiveSheet()->getStyle("A".($z+1).":I".($z+15))->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::VERTICAL_BOTTOM);
			// 	//设置单元格高度宽度
			// 	$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			// 	for ($i=0; $i < 26; $i++) { 
			// 		$objPHPExcel->getActiveSheet()->getColumnDimension($charactors[$i])->setWidth(10);
			// 	}
			// 	$objPHPExcel->getActiveSheet()->getRowDimension(1)->setRowHeight(21);
			// 	for ($i=2; $i < $z+1; $i++) { 
			// 		$objPHPExcel->getActiveSheet()->getRowDimension($i)->setRowHeight(12);
			// 	}
			// 	//设置字体
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:i'.$z)->getFont()->setSize(9);
			// 	$objPHPExcel->getActiveSheet()->getStyle('A1:i'.$z)->getFont()->setName('宋体');
			// 	//工作表名
			// 	$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			// 	//写在第几个工作表
			// 	$objPHPExcel->setActiveSheetIndex(0);
			// 	//文件格式
			// 	header('Content-Type: application/vnd.ms-excel');
			// 	//文件名和路径
			// 	header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			// 	header('Cache-Control: max-age=0');
			// 	//创建文件
			// 	$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			// 	//确定写入
			// 	$objWriter->save('php://output');
			// 	return;
		// }
		public function shiyan(){
			//获取输入的班级id
			$request = request();
			$getdata=$request->param();
			$id=intval($getdata['id']);
			if($id<=0){
				return;
			}
			//获取所有学生与班级信息
			$classss=model('classss');
			$cdata=$classss->returnone($id);
			$allstudent=model('allstudent');
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			//进行导入excel
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			/*以下是一些设置 ，什么作者  标题啊之类的*/
			$objPHPExcel->getProperties()->setCreator("null")
				->setLastModifiedBy("null")
				->setTitle("null")
				->setSubject("null")
				->setDescription("null")
				->setKeywords("excel")
				->setCategory("result file");
			/*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
			//合并单元格制作标题栏
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
			$objPHPExcel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->mergeCells('A1:R1');
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A1:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1',$cdata[0]['classname']."实习成绩表");
			//设置第二行序列
			$charactors = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
			for ($i=0; $i < 2; $i++) { 
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[0+($i*9)].'2', '组号')
				->setCellValue($charactors[1+($i*9)].'2', '序号')
				->setCellValue($charactors[2+($i*9)].'2', '学号')
				->setCellValue($charactors[3+($i*9)].'2', '姓  名')
				->setCellValue($charactors[4+($i*9)].'2', '性别')
				->setCellValue($charactors[5+($i*9)].'2', '平时')
				->setCellValue($charactors[6+($i*9)].'2', '考试')
				->setCellValue($charactors[7+($i*9)].'2', '报告')
				->setCellValue($charactors[8+($i*9)].'2', '总评');
			}
			//设置宽度自适应
			$objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('L')->setAutoSize(true);
			$objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('B')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('E')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('F')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('K')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('H')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('I')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('Q')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('R')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('N')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('O')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('P')->setWidth(4);
			$objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(8);
			$objPHPExcel->getActiveSheet()->getRowDimension(2)->setRowHeight(29);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setWrapText(true);
			//设置字体
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setSize(12);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R35')->getFont()->setName('宋体');
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('J3:J34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('F3:I34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('O3:R34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setSize(14);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getFont()->setBold(true);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A3:A34')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R1')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->getActiveSheet()->getStyle('A2:R2')->getAlignment()->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
			//制作尾部提示
			$objPHPExcel->getActiveSheet()->mergeCells('A35:R35');
			$objPHPExcel->getActiveSheet()->getStyle('A35')->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
			$objPHPExcel->setActiveSheetIndex(0)->setCellValue('A35','（注：平时70%，考试20%，报告10%）');
			//制作内容栏
			$totalmark=model('totalmark_backup');;
			//$i代表数据位于哪条,$f代表属于第一还是第二列,$z代表当前指针位于哪一行
			for ($i=0,$f=0,$z=3; $i < count($sdata); $i++,$z++) { 
				if($z==35){
					$f++;
					$z=3;
				}
				$result1=$totalmark->getone($sdata[$i]['stunum']);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*9)].$z, $sdata[$i]['Xstu'])
				->setCellValueExplicit($charactors[2+($f*9)].$z, $sdata[$i]['stunum'],\PHPExcel_Cell_DataType::TYPE_STRING)
				->setCellValue($charactors[3+($f*9)].$z, $sdata[$i]['stuname'])
				->setCellValue($charactors[4+($f*9)].$z, $sdata[$i]['sex'])
				->setCellValue($charactors[5+($f*9)].$z, '')
				->setCellValue($charactors[6+($f*9)].$z, $result1[0]['exam_grade'])
				->setCellValue($charactors[7+($f*9)].$z, '');
			}
			$styleArray = array(  
						'borders' => array(  
							'allborders' => array(  
								'style' => \PHPExcel_Style_Border::BORDER_THIN,
								// 'color' => array('argb' => 'FFFF0000'),

							),
						),
					);
			$objPHPExcel->getActiveSheet()->getStyle("A2:R2")->applyFromArray($styleArray);
			$objPHPExcel->getActiveSheet()->getStyle("B3:I34")->applyFromArray($styleArray);
			$objPHPExcel->getActiveSheet()->getStyle("K3:R34")->applyFromArray($styleArray);
			for(;$i<64;$i++,$z++){
				if($z==35){
					$f++;
					$z=3;
				}
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[1+($f*9)].$z,$i+1);
				$objPHPExcel->setActiveSheetIndex(0)->setCellValue($charactors[7+($f*9)].$z, '');
			}
			//工作表名
			$objPHPExcel->getActiveSheet()->setTitle('实习名单');
			//写在第几个工作表
			$objPHPExcel->setActiveSheetIndex(0);
			//文件格式
			header('Content-Type: application/vnd.ms-excel');
			//文件名和路径
			header('Content-Disposition: attachment;filename="'.$cdata[0]['classname'].$cdata[0]['allS'].'人.xls"');
			header('Cache-Control: max-age=0');
			//创建文件
			$objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			//确定写入
			$objWriter->save('php://output');
			return;
		}
		public function kaoshichengji(){
			$view = new View();
			return $view->fetch();
		}
		//机考成绩录入
		public function kaoshichengjiapi(){
			$request = request();
			$postdata=$request->param();
			//如果不是post传输数据则拒绝接受数据
			if ($postdata['sure']!='sure') {
				$data['state']=400;
				return $data;
			}
			vendor("PHPExcel.Classes.PHPExcel");
			vendor("PHPExcel.Classes.PHPExcel.IOFactory");
			$objPHPExcel = new \PHPExcel();
			vendor("PHPExcel.Classes.PHPExcel.Reader.Excel5");
			$objReader = \PHPExcel_IOFactory::createReader('Excel5');
			$filename=ROOT_PATH."public/uploads/chengji/1.xls";
			$encode='utf-8';
			$objReader->setReadDataOnly(true);
			// 读取文件并建立对应该文件excel类
			$objPHPexcel = $objReader->load($filename);
			// 创建数组存储数据
			$excelData = array(); 
			$allstudent=model('allstudent');
			$totalmark=model('totalmark_backup');;
			$redata['content']='';
			//创建返回数据
			$redata['content']=$redata['content'].'<tr><td>姓名</td><td>性别</td><td>班级</td><td>学号</td><td>错误原因</td></tr>';
			$sheetCount = $objPHPexcel->getSheetCount();
			for ($f=0; $f < $sheetCount ;$f++) {
				// 获取工作表
				$objWorksheet = $objPHPexcel->getSheet($f);
				// 取得总行数
				$highestRow = $objWorksheet->getHighestRow(); 
				// 取得总列数
				$highestColumn = $objWorksheet->getHighestColumn(); 
				$highestColumnIndex = \PHPexcel_Cell::columnIndexFromString($highestColumn); 
				// 写入数据到数组中
				$excelData = array(); 
				for ($row = 1; $row <= $highestRow; $row++) { 
					for ($col = 0; $col < $highestColumnIndex; $col++) { 
						$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
					}
				}
				for ($i=0; $i < $highestColumnIndex; $i++) { 
					if($excelData[3][$i]=='姓名'){
						$namecol=$i;
					}
					if($excelData[3][$i]=='得分'){
						$gradecol=$i;
					}
				}
				for ($i=4; $i <= $highestRow; $i++) { 
					if($objWorksheet->getCellByColumnAndRow(5, $i)->getValue()==''){
						unset($excelData);
						break;
					};
					$stuname=$excelData[$i][$namecol];
					$exam_grade=$excelData[$i][$gradecol];
					// if(($sheetCount-1)==$f){
					// 	$exam_grade=$excelData[$i][5];
					// }else{
					// 	$exam_grade=$excelData[$i][4];
					// }
					$result=$totalmark->changeone($stuname,intval($exam_grade));
					if($result==-1){
						$redata['content']=$redata['content'].'<tr><td>'.$stuname.'</td><td></td><td></td><td></td><td>查无此人</td></tr>';
					}elseif($result==0){
						$result1=$allstudent->selectone($stuname);
						for ($f=0; $f <count($result1) ; $f++) { 
							$redata['content']=$redata['content'].'<tr><td>'.$stuname.'</td><td>'.$result1[$f]['sex'].'</td><td>'.$result1[$f]['classname'].'</td><td>'.$result1[$f]['stunum'].'</td><td>有重名者</td></tr>';
						}
					}elseif ($result==2) {
						$redata['content']=$redata['content'].'<tr><td>'.$stuname.'</td><td></td><td></td><td>'.$exam_grade.'</td><td>修改失败</td></tr>';
					}
				}

			}
			
			$redata['state']=200;
			return $redata;
		}
		public function upchengjionline(){
			$classss=model('classss');
			$data=$classss->returnall();
			$view = new View();
			$view->data = $data;
			return $view->fetch();
			//修改js文件的ajax地址，返回数据设定为班级人员和每一科目成绩，Model里添加直接修改数据的函数
			//前台点击button进行请求发送点击对应班级按钮后button的value值变为班级id
			//前台数据全放在table里面，如果可设置点击后才变成input，进行美化
			//点击确定上传按钮后，每一行数据都进行传输，每一行都会有对应id隐藏包含
			//后台便利每一个id进行数据修改
			//后台数据处理两种，一是数字直接计算，二是文字或者符号，都变为-1
			//判断是否为数字is_numeric()判断整数is_int()
			//整理一份完整的数据进行测试
		}
		public function upchengjionlineapi(){
			$request = request();
			$id=$request->param('classid');
			$classss=model('classss');
			$allworks=model('allworks');
			$allstudent=model('allstudent');
			$cdata=$classss->returnone($id);
			$sdata=$allstudent->returnone($cdata[0]['classname']);
			$duiying=array('Xstu'=>'学生序号','stunum'=>'学号','stuname'=>'学生姓名','Qian_gong'=>'钳工','Pu_xi'=>'普通铣削','Mo_xue'=>'磨削','Dian_huo_hua'=>'电火花','Chong_ya'=>'冲压','Zhu_zao'=>'铸造','Mu_ju'=>'模具','Han_jie'=>'焊接','Pu_che'=>'普通车削','Jia_gong'=>'加工','Shu_chong'=>'数控冲床','Shu_xi'=>'数控铣床','Shu_che'=>'数控车床','PLC'=>'PLC','Xian_qie_ge'=>'线切割','Kuai_su_cheng_xing'=>'快速成型','re_chu_li'=>'热处理');
			$duiying2=array('Xstu'=>'学生序号','stunum'=>'学号','stuname'=>'学生姓名','Qian_gong'=>'钳工','Pu_xi'=>'普通铣削','Mo_xue'=>'磨削','Dian_huo_hua'=>'电火花','Chong_ya'=>'冲压','Zhu_zao'=>'铸造','Mu_ju'=>'模具','Han_jie'=>'焊接','Pu_che'=>'普通车削','Jia_gong'=>'加工','Shu_chong'=>'数控冲床','Shu_xi'=>'数控铣床','Shu_che'=>'数控车床','PLC'=>'PLC','Xian_qie_ge'=>'线切割','Kuai_su_cheng_xing'=>'快速成型','re_chu_li'=>'热处理');
			$duiying3=array(0=>'Xstu',1=>'stunum',2=>'stuname',3=>'Qian_gong',4=>'Pu_xi',5=>'Mo_xue',6=>'Dian_huo_hua',7=>'Chong_ya',8=>'Zhu_zao',9=>'Mu_ju',10=>'Han_jie',11=>'Pu_che',12=>'Jia_gong',13=>'Shu_chong',14=>'Shu_xi',15=>'Shu_che',16=>'PLC',17=>'Xian_qie_ge',18=>'Kuai_su_cheng_xing',19=>'re_chu_li');
			$gdata=array();
			//将学生数据存入gdata并且计算工种一共有哪些
			for ($i=0; $i < count($duiying3); $i++) { 
				$duiying3[$i]=1;
			}
			for ($i=0; $i < count($sdata); $i++) { 
				$temp=$allworks->returnone($sdata[$i]['stunum']);
				$gdata[$i]=$temp[0];
				if($temp[0]['Xstu']!='-1'){
					$duiying3[0]='Xstu';
				}
				if($temp[0]['stunum']!='-1'){
					$duiying3[1]='stunum';
				}
				if($temp[0]['stuname']!='-1'){
					$duiying3[2]='stuname';
				}
				if($temp[0]['Qian_gong']!='-1'){
					$duiying3[3]='Qian_gong';
				}
				if($temp[0]['Pu_xi']!='-1'){
					$duiying3[4]='Pu_xi';
				}
				if($temp[0]['Mo_xue']!='-1'){
					$duiying3[5]='Mo_xue';
				}
				if($temp[0]['Dian_huo_hua']!='-1'){
					$duiying3[6]='Dian_huo_hua';
				}
				if($temp[0]['Chong_ya']!='-1'){
					$duiying3[7]='Chong_ya';
				}
				if($temp[0]['Zhu_zao']!='-1'){
					$duiying3[8]='Zhu_zao';
				}
				if($temp[0]['Mu_ju']!='-1'){
					$duiying3[9]='Mu_ju';
				}
				if($temp[0]['Han_jie']!='-1'){
					$duiying3[10]='Han_jie';
				}
				if($temp[0]['Pu_che']!='-1'){
					$duiying3[11]='Pu_che';
				}
				if($temp[0]['Jia_gong']!='-1'){
					$duiying3[12]='Jia_gong';
				}
				if($temp[0]['Shu_chong']!='-1'){
					$duiying3[13]='Shu_chong';
				}
				if($temp[0]['Shu_xi']!='-1'){
					$duiying3[14]='Shu_xi';
				}
				if($temp[0]['Shu_che']!='-1'){
					$duiying3[15]='Shu_che';
				}
				if($temp[0]['PLC']!='-1'){
					$duiying3[16]='PLC';
				}
				if($temp[0]['Xian_qie_ge']!='-1'){
					$duiying3[17]='Xian_qie_ge';
				}
				if($temp[0]['Kuai_su_cheng_xing']!='-1'){
					$duiying3[18]='Kuai_su_cheng_xing';
				}
				if($temp[0]['re_chu_li']!='-1'){
					$duiying3[19]='re_chu_li';
				}
			}
			// print_r($duiying3); 
			//序列化对应,然后写入
			$content='<tr>';
			for ($i=0; $i < 20; $i++) { 
				if($duiying3[$i]!=1){
					$content=$content.'<td>'.$duiying[$duiying3[$i]].'</td>';
				}
			}
			$content=$content.'<td>确定操作</td></tr>';
			// echo $content;
			for ($i=0; $i < count($sdata); $i++) { 
				// $temp=$allworks->returnone($sdata[$i]['stunum']);
				// $gdata[$i+1]=$temp[0];
				$content=$content.'<tr id="form'.$i.'">';
				for ($f=0; $f < 20; $f++) {
					if($duiying3[$f]!=1){
						if($f<3)
							$content=$content.'<td>'.$gdata[$i][$duiying3[$f]].'</td>';
						else
							$content=$content.'<td><input style="width:45px;" name="'.$duiying3[$f].'" value="'.$gdata[$i][$duiying3[$f]].'"></td>';
					}
				// if($duiying3[$i]!=-1)
				// 	$content=$content+'<td>'+$duiying[$duiying3[$i]]+'</td>';
				}
				$content=$content.'<td><button id="sbutton'.($i+1).'" class="btn btn-success btn-sm pull-left" value="'.$gdata[$i]['Id'].'">保存修改</td>';
				$content.='</tr>';
			}
			$content.='<tr style="display:none"><td><button id="num" value="'.$i.'">num</button></td></tr>';
			return $content;
			// return $gdata;
			// $duiying=array('Xstu'=>'学生序号','stunum'=>'学生姓名','Qian_gong'=>'钳工','Pu_xi'=>'普通铣削','Mo_xue'=>'磨削','Dian_huo_hua'=>'电火花','Chong_ya'=>'冲压','Zhu_zao'=>'铸造','Mu_ju'=>'模具','Han_jie'=>'焊接','Pu_che'=>'普通车床','Jia_gong'=>'加工','Shu_chong'=>'数控冲床','Shu_xi'=>'数控铣床','Shu_che'=>'数控车床','PLC'=>'PLC','Xian_qie_ge'=>'线切割','Kuai_su_cheng_xing'=>'快速成型','re_chu_li'=>'热处理');
		}
		public function changesinge(){
			$request = request();
			$id=$request->param('stuid');
			$data=$request->param('data');
			$allworks=model('allworks');
			if($data!=''){
				$datalist=explode(':#:',$data);
				unset($datalist[count($datalist)-1]);
				for ($i=0; $i < count($datalist)/2; $i++) { 
					$data1[$datalist[$i*2]]=$datalist[($i*2+1)];
					$allworks->updateone($id,$data1);
				}
				return $datalist;
			}else{
				return 0;
			}
		}
	}