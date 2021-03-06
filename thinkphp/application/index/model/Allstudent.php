<?php
namespace app\index\model;
use think\Model;
class Allstudent extends Model
{
	// 增加学生
	public function addstudent($Xstu,$stunum,$stuname,$sex,$classname)
	{
		// $addstudent = new Addstudent;
		// $data['id'] = NULL;
		$data['Xstu'] = $Xstu;
		$data['stunum'] = $stunum;
		$data['stuname'] = $stuname;
		$data['sex'] = $sex;
		$data['classname']=$classname;
		$this->data($data,true)->isUpdate(false)->save();
		// $this->id=NULL;
		// $addstudent->Xstu = $Xstu;
		// $addstudent->stunum = $stunum;
		// $addstudent->stuname = $stuname;
		// $addstudent->sex = $sex;
		// $addstudent->save();
		// 获取自增ID
		// echo $this->id;
	}
	//返回一个班的学生信息,传入参数为班级
	public function returnone($classname)
	{
		$data['classname']=$classname;
		return $this->where($data)->select();
	}
	//修改分组，传入为学号和组号
	function changegroup($stunum,$stugroup){
		$data['stunum']=$stunum;
		$change['stugroup']=$stugroup;
		return $this->where($data)->update($change);
	}
	//返回所有学生数据
	public function returnall()
	{
		return $this->select();
	}
	function returnstu($stunum,$stuname){
		$data['stuname']=$stuname;
		$data['stunum']=$stunum;
		return $this->where($data)->select();
	}
	//删除一个班级的信息
	function deleteclass($classname){
		$data['classname']=$classname;
		return $this->where($data)->delete();
	}
		// 返回学生信息
	public function selectone($stuname){
		return $this->where('stuname',$stuname)->select();
	}
	function deleteone($stunum){
		$data['stunum']=$stunum;
		return $this->where($data)->delete();
	}
	function find($id){
		$data['id']=$id;
		return $this->where($data)->select();
	}
	//搜索一个班级所有数据
	public function selectall($classdata){
		$sdata = array();
		for ($i=0; $i < count($classdata); $i++) {
			$sdata1 = array();
			$sdata1 = $this->returnone($classdata[$i]['classname']);
			for ($f=0; $f < count($sdata1); $f++) {
				$sdata[count($sdata)] = $sdata1[$f];
			}
		}
		return $sdata;
	}
}

 ?>
