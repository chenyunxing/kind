<?php 
namespace app\index\model;
use think\Model;
class Allworks extends Model
{
	public function alltheworks($Xstu,$stunum,$stuname)
	{
		// $addstudent = new Addstudent;
		// $data['id'] = NULL;
		$data['Xstu'] = $Xstu;
		$data['stunum'] = $stunum;
		$data['stuname'] = $stuname;
		$this->data($data,true)->isUpdate(false)->save();
	}
	public function returnone($stunum){
		return $this->where(array('stunum' => $stunum ))->select();
	}
	public function gettheworks($stunum,$ii,$re_grade)
	{

		$this->where('stunum',$stunum)->update([$ii=>$re_grade]);
	}

	public function returnall()
	{
		 return $this->select();
		
	}
	public function deleteone($stunum)
	{
		$data['stunum'] = $stunum;
		return $this->where($data)->delete();
	}
	public function updateone($stunum,$data)
	{
		$this->save($data,['id' => $stunum]);
		// $this->where('stunum',$stunum)->update($data);
	}
}

 ?>