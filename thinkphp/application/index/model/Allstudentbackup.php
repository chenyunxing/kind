<?php 
namespace app\index\model;
use think\Model;
class Allstudentbackup extends Model
{
	protected $connection = [
		// 数据库类型
		'type'            => 'mysql',
		// 服务器地址
		'hostname'        => '127.0.0.1',
		// 数据库名
		'database'        => 'kindbackup',
		// 用户名
		'username'        => 'root',
		// 密码
		'password'        => 'root',
		// 端口
		'hostport'        => '3306',
		// 连接dsn
		'dsn'             => '',
		// 数据库连接参数
		'params'          => [],
		// 数据库编码默认采用utf8
		'charset'         => 'utf8',
		// 数据库表前缀
		'prefix'          => '',
	];
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
	public function returnall()
	{
		return $this->select();
	}
	function returnstu($stunum,$stuname){
		$data['stuname']=$stuname;
		$data['stunum']=$stunum;
		return $this->where($data)->select();
	}
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