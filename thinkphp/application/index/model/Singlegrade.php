<?php 
namespace app\index\model;
use think\Model;
class Singlegrade extends Model
{
	public function addsinglegrade($Xstu,$stunum,$grade,$txt,$re_grade,$work)
	{
		// $addstudent = new Addstudent;
		// $data['id'] = NULL;

		$data['Xstu'] = $Xstu;
		$data['stunum'] = $stunum;
		$data['grade'] = $grade;
		$data['txt'] = $txt;
		$data['re_grade']=$re_grade;
		$data['work']=$work;
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




	public function changesingle($stunum,$txt,$grade,$re_grade,$work)
	{
		
		$this->where(array('stunum'=>$stunum,'work'=>$work))->update(['re_grade'=>$re_grade,'txt'=>$txt,'grade'=>$grade]);
	}
	public function deleteone($stunum){
		$data['stunum'] = $stunum;
		return $this->where($data)->delete();
	}


		public function done($zzz)
	{
		
	}

		public function returnall()
	{
		 return $this->select();
		
	}
}

 ?>