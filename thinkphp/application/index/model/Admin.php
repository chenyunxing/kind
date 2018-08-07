<?php
namespace app\index\model;
use think\Model;
class Admin extends Model
{
	//检查用户名和密码是否存在数据库，并且只有一条
	public function check($username,$password){
		$data['username']=$username;
		$data['password']=$password;
		$data=$this->where($data)->select();
		if (count($data)==1) {
			return true;
		}else{
			return false;
		}
	}
}
 ?>
