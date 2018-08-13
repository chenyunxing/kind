<?php
namespace app\index\model;
use think\Model;
class Totalmark extends Model
{
	//总成绩列表，导入为初始化的结果
	public function addall($Xstu,$stunum,$stuname,$exam_grade,$written_grade)
	{
		$data['Xstu'] = $Xstu;
		$data['stunum'] = $stunum;
		$data['stuname'] = $stuname;
		$data['exam_grade'] = $exam_grade;
		$data['written_grade'] = $written_grade;
		$this->data($data,true)->isUpdate(false)->save();
	}


	public function add($Xstu,$stunum,$stuname)
	{
		$data['Xstu'] = $Xstu;
		$data['stunum'] = $stunum;
		$data['stuname'] = $stuname;
		$this->data($data,true)->isUpdate(false)->save();
	}


	public function getthetotal($stunum,$exam_grade,$written_grade)
	{

		$this->where('stunum',$stunum)->update(['exam_grade'=>$exam_grade,'written_grade'=>$written_grade]);
	}

		public function returnall()
	{
		 return $this->all();

	}
  //修改总成绩
	public function getthereg($stunum,$regular_grade)
	{

		$this->where('stunum',$stunum)->update(['regular_grade'=>$regular_grade]);
	}

	public function getthefin($stunum,$final_grade)
	{

		$this->where('stunum',$stunum)->update(['final_grade'=>$final_grade]);
	}
	function getone($stunum){
		$data['stunum']=$stunum;
		return $this->where($data)->select();
	}
	public function deleteone($stunum)
	{
		$data['stunum'] = $stunum;
		return $this->where($data)->delete();

	}
	// 返回值解释，返回-1代码数据库没有这个人，返回1代表修改完成，返回0代码有重名者
	public function changeone($stuname,$exam_grade){
		if (count($this->where('stuname',$stuname)->select())==0) {
			return -1;
		}
		if (count($this->where('stuname',$stuname)->select())>1) {
			return 0;
		}
		$temp=$this->where('stuname',$stuname)->select();
		if($temp[0]['exam_grade']<$exam_grade){
			$this->where('stuname',$stuname)->update(['exam_grade'=>$exam_grade]);
		}
		return 1;
		// if($this->where('stuname',$stuname)->update(['exam_grade'=>$exam_grade]))
		// 	return 1;
		// else
		// 	return 2;
	}

}

 ?>
