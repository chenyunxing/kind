<?php
namespace app\index\model;
use think\Model;
class Singlegradebackup extends Model
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



	//改变一个人的单科成绩
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
