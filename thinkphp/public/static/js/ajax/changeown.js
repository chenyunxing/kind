$(document).ready(function(){
	$(function(){
		for (var i = 1; i <= $('#sentid').val(); i++) {
			$("#button"+i).click(function(){
				layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
				arr=this.value.split(':');
				$.ajax({
					url: "deleteown",
					type: "POST",
					data:{
						classid:arr[1],
						gongzhong:$('#select'+arr[0]).val(),
					},
					success: function (data) {
						layer.closeAll();
						if (data.state==200) {
							layer.msg("清除成功");
						}
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