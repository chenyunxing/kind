<?php
namespace app\index\controller;
use \think\Session;
class Readylogin
{
	public function index()
	{
		return view();
	}
	public function justlogin(){
		$request = request();
		$redata=$request->param();
		$redata['username']=$request->param('username');
		$redata['password']=$request->param('password');
		$Admin =model('admin');
		if($Admin->check($redata['username'],$redata['password'])){
			Session::set('username',$redata['username']);
			Session::set('password',$redata['password']);
			echo '<script>window.location.href="'.url('index/shuaige/index').'"</script>';
		}else{
			echo '<script>alert("账号或密码错误!");window.history.back(-1);</script>';
		}
	}
}
