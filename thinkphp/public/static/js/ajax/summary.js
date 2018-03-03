$(document).ready(function(){
	$("#buttona").click(function(){
		layer.confirm("该功能只在提交所有成绩后可行,是否继续？", {
			btn: ['是','否'] //按钮
		}, function(){
			layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
			$.ajax({
				url: "tongji",
				type: "POST",
				data:{data:"sure"},
				dataType:"json",
				success: function (data) {
					if (data.state==200) {
						$("#tbody").html('');
						$('#sure').css('display','none');
						layer.closeAll();
						layer.msg('统计成功');
					}else{
						layer.closeAll();
						layer.alert('参数错误');
					}
				},
				error: function () {
					layer.closeAll();
					$("#file1").val('');
					layer.alert('系统错误，请查看是否提交所有科目成绩了【所有人成绩不可为0，为0将导致计算出错】');
				}
			});
		}, function(){
			return; 
		});
	});
});