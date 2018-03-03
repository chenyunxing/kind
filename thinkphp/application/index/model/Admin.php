<?php 
namespace app\index\model;
use think\Model;
class Admin extends Model
{
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