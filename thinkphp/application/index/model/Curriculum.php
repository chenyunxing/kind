<?php 
namespace app\index\model;
use think\Model;
class Curriculum extends Model
{
	//增加课程接口
	public function addcu($name,$url,$time,$state)
	{
		$data['name'] = $name;
		$data['url'] = $url;
		$data['time'] = $time;
		$data['state'] = $state;
		$this->data($data,true)->isUpdate(false)->save();
	}
	//获取第几页的数据，每一页几行
	public function getcu($page,$line){
		$data=$this->page($page,$line)->order('id', 'desc')->select();
		return $data;
	}
	//得知是否有下一页的函数
	public function next($page,$line){
		$data=$this->page($page+1,$line)->order('id', 'desc')->select();
		if(count($data)<=0){
			return false;
		}else{
			return true;
		}
	}
	//使用该课程表的方法
	public function changestate($id){
		//将旧的课程表清除
		$this->save([
		'state' => 0,
		],['state' => 1]);
		if ($this->save(['state' => 1,],['id' => $id])) {
			return true;
		}else{
			return false;
		}
	}
	//返回所有课程表
	public function returnall()
	{
		 return $this->select();
	}
	//获取现在使用的课程表信息
	public function returnone()
	{
		$data['state']=1;
		return $this->where($data)->select();
	}
	//删除课程表
	public function deleteone($id){
		$data['id']=$id;
		$temp=$this->where($data)->select();
		$this->destroy(['id' => $id]);
		return $temp;
	}
	public function findone($id){
		$data['id']=$id;
		return $this->where($data)->select();
	}
}

 ?>