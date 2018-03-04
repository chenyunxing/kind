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
	$(function(){
		for (var i = 0; i < $('#sentid3').val(); i++) {
			$("#del"+i).click(function(){
				layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
				$.ajax({
					url: "stuonedel",
					type: "POST",
					data:{
						id:this.value,
					},
					success: function (data) {
						layer.msg('删除操作完成，请刷新页面检查结果');
						// if (data.state==200) {
						// 	layer.msg("清除成功");
						// }
					},
					error: function () {
						layer.closeAll();
						layer.alert('未知错误');
					}
				});
			});
		}
	});
});