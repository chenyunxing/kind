<?php 
namespace app\index\model;
use think\Model;
class Allworks_backup extends Model
{
	protected $connection = [
		// 数据库类型
		'type'            => 'mysql',
		// 服务器地址
		'hostname'        => '127.0.0.1',
		// 数据库名
		'database'        => 'kind_backup',
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
	]
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
		$this->save($data,['id' => 1]);
		// $this->where('stunum',$stunum)->update($data);
	}
}

 ?>