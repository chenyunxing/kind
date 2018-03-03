$(document).ready(function(){
	$("#buttona").click(function(){
		layer.confirm("请确定是否结束课程,是否继续？", {
			btn: ['确定','取消'] //按钮
		}, function(){
			layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
			$.ajax({
				url: "upover",
				type: "POST",
				data:{data:"sure"},
				dataType:"json",
				success: function (data) {
					if (data.state==200) {
						$("#tbody").html('');
						$('#sure').css('display','none');
						layer.closeAll();
						layer.msg('结束课程成功');
					}else{
						layer.closeAll();
						layer.alert('参数错误');
					}
				},
				error: function () {
					layer.closeAll();
					$("#file1").val('');
					layer.alert('系统错误');
				}
			});
		}, function(){
			return; 
		});
	});
});