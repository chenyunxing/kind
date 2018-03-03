$(document).ready(function(){
	function reloadAbleJSFn(id,newJS)
	{
		var oldjs = null; 
		var t = null; 
		var oldjs = document.getElementById(id); 
		if(oldjs) oldjs.parentNode.removeChild(oldjs); 
		var scriptObj = document.createElement("script"); 
		scriptObj.src = newJS; 
		scriptObj.type = "text/javascript"; 
		scriptObj.id   = id; 
		// document.getElementsByTagName("head")[0].appendChild(scriptObj);
		document.getElementById('tbody').appendChild(scriptObj);
	}
	var button;
	function sent(da){
		$.ajax({
			url: "studata",
			type: "POST",
			data:{data:da},
			dataType:"json",
			success: function (data) {
				if (data.state==200) {
					$("#tbody").html('');
					$("#tbody").html(data.content);
					reloadAbleJSFn("temp",_root+'/static/js/ajax/lookstu2.js');
					layer.closeAll();
				}else{
					layer.alert('系统错误');
					layer.closeAll();
				}
			},
			error: function () {
				layer.closeAll();
				layer.alert('未知错误');
			}
		});
	}
	function sent2(da){
		$.ajax({
			url: "studete",
			type: "POST",
			data:{data:da},
			dataType:"json",
			success: function (data) {
				if (data.state==200) {
					$(button).parent().parent('tr')[0].remove(); 
					layer.closeAll();
				}else{
					layer.closeAll();
					layer.alert('系统错误');
					
				}
			},
			error: function () {
				layer.closeAll();
				layer.alert('未知错误');
			}
		});
	}
	function sent3(stuname,stunum,sex,classid){
		$.ajax({
			url: "stuoneadd",
			type: "POST",
			data:{stuname:stuname,stunum:stunum,sex:sex,classid,classid},
			dataType:"json",
			success: function (data) {
				if (data.state==200) {
					layer.msg('添加成功，请刷新页面');
				}else{
					layer.closeAll();
					layer.alert('数据格式可能有误');
				}
			},
			error: function () {
				layer.closeAll();
				layer.alert('未知错误');
			}
		});
	}
	$(function(){
		for (var i = 1; i <= $('#sentid').val(); i++) {
			$("#button"+i).click(function(){
				layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
				sent(this.value);
			});
			$("#delete"+i).click(function(){
				layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
				button=this;
				sent2(this.value);
			});
			$("#add"+i).click(function(){
				button=this;
				layer.prompt({title: '请输入学生姓名，并确认', formType: 2}, function(text, index){
					layer.close(index);
					layer.prompt({title: text+'的学号是？', formType: 2}, function(pass, index){
						layer.close(index);
						layer.confirm('请问'+text+'是否是一个男生？', {
							btn: ['是','不是'] //按钮
						}, function(){
							sent3(text,pass,"男",button.value);
						}, function(){
							sent3(text,pass,"女",button.value);
						});
					});
				});
			});
		}
	});
});