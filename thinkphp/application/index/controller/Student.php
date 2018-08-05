<?php
namespace app\index\controller;
use think\View;
use think\Controller;
use think\Session;
use think\Request;
use think\Config;
class student extends Controller
{
	//通告首页
	public function index(){
		$notice=model('notice');
		$data=$notice->agetnotice();
		for ($i=0; $i < count($data); $i++) {
			$data[$i]['time']=date("Y-m-d",$data[$i]['time']);
		}
		$view=new View();
		$view->data=$data;
		return $view->fetch();
	}
	public function show(){
		if(input('?post.stuname')&&input('?post.stunum')){
			$stuname=input('post.stuname');
			$stunum=input('post.stunum');
			$allstudent =model('allstudent');
			if (count($zzz=$allstudent->returnstu($stunum,$stuname))!=1) {
				echo "<script>alert('学号或姓名错误');window.history.back();</script>";
				die();
			}
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
			// dump($sheetData);
			$view = new View();
			$view->data = $data;
			$view->hang = $highestRow;
			$view->line = $highestColumnIndex;
			$view->sheetData =  $sheetData;
			$view->stuname=$zzz[0]['stuname'];
			$view->stuclass=$zzz[0]['classname'];
			$view->stugroup=$zzz[0]['stugroup'];
			return $view->fetch();
		}else{
			$this->redirect('student/index');
		}

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
	function shownotice(){
		if (!input('?get.p')) {
			$page=0;
		}else{
			$page=intval(input('get.p'));
		}
		if ($page<0) {
			$page=0;
		}
		$notice=model('notice');
		$data=$notice->getone($page);
		$view=new View();
		$view->data=$data;
		return $view->fetch();
	}
}
