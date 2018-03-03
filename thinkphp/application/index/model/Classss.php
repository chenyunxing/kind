<?php 
namespace app\index\model;
use think\Model;
class Classss extends Model
{
	public function addclass($classname,$allS)
	{
		// $addstudent = new Addstudent;
		// $data['id'] = NULL;
		$data['classname'] = $classname;
		$data['allS'] = $allS;
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
	//返回所有班级信息
	public function returnall()
	{
		 return $this->select();
	}
	//返回一个班的班级信息,传入参数为班级id
	public function returnone($id)
	{
		$data['id']=$id;
		return $this->where($data)->select();
	}
	//删除班级
	public function deleteone($id)
	{
		$data['id']=$id;
		return $this->where($data)->delete();
	}
	public function find($classname)
	{
		$data['classname']=$classname;
		return $this->where($data)->select();
	}
}

 ?>