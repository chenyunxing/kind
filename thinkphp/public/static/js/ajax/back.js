$(document).ready(function(){
	$(function(){
		for (var i = 1; i <= $('#sentid').val(); i++) {
			$("#button"+i).click(function(){
				the=this;
				layer.confirm('确定还原数据吗？该过程不可逆', {
					btn: ['确定','取消'] //按钮
				}, function(){
					layer.msg('加载中', {
						icon: 16
						,shade:[0.1,'#000'], time:1000000000
					});
					$.ajax({
						url: "restore",
						type: "POST",
						data:{
							name:the.value
						},
						success: function (data) {
							if (data.state==200) {
								layer.alert("还原成功");
								layer.closeAll();
							}else{
								layer.closeAll();
								layer.alert('未知错误');
							}
						},
						error: function () {
							layer.closeAll();
							layer.alert('未知错误');
						}
					});
				}, function(){
					return; 
				});
				
			});
		}
	});
});