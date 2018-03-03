<?php 
namespace app\index\model;
use think\Model;
class Notice extends Model{
	//新增通知函数传入参数为标题和内容,保存成功则返回TRUE失败则返回false
	public function addnotice($title,$content){
		$data['title'] = $title;
		$data['content'] = $content;
		$data['time'] = time();
		if($this->data($data,true)->isUpdate(false)->save()){
			return true;
		}else{
			return false;
		}
	}
	//获取第几页的数据，每一页几行
	public function getnotice($page,$line){
		$data=$this->page($page,$line)->order('id', 'desc')->select();
		return $data;
	}
	//对应前台获取数据
	public function agetnotice(){
		$data=$this->limit(6)->order('id', 'desc')->select();
		// $data=$this->page(1,6)->select();
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
	public function changenotice($id,$title,$content){
		$data['id']=$id;
		$data['title']=$title;
		$data['content']=$content;
		$result=$this->save([
		'title' => $title,
		'content' => $content
		],['id' => $id]);
		if($result){
			return true;
		}else{
			return false;
		}
	}
	//获取通知的方法
	public function getone($id){
		if($id==0){
			return $this->limit(1)->order('id', 'desc')->select();
		}
		$data['id']=$id;
		$result=$this->where($data)->select();
		return $result;
	}
}
?>