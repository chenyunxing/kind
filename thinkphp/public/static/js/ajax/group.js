$(document).ready(function(){
	$(function () {
		$('#start').click(function(){
			var result = document.getElementById("exampleInputEmail2").value.replace(/^\s+|\s+$/g,"");
			if(result == ""){
				 layer.msg("请填写组数");
				 return;
			}else{
				layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
				$.ajax({
					url: "startgroup",
					type: "POST",
					data:{groupnum:result},
					dataType:"json",
					success: function (data) {
						if (data.state==200) {
							layer.closeAll();
							layer.msg('分组成功');
						}else{
							layer.closeAll();
							layer.alert('传入组数非法');
						}
					},
					error: function () {
						layer.closeAll();
						layer.alert('未知错误');
					}
				});
			}
		});
	});
});