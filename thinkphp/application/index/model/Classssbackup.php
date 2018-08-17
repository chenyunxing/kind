<?php
namespace app\index\model;
use think\Model;
class Classssbackup extends Model
{
	//连接备份库
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
