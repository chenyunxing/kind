$(document).ready(function(){
	$("#buttona").click(function(){
		layer.prompt({title: '请输入文件名', formType: 2}, function(text, index){
			layer.close(index);
			layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
			$.ajax({
				url: "upover",
				type: "POST",
				data:{data:"sure",name:text},
				dataType:"json",
				success: function (data) {
					if (data.state==200) {
						$("#tbody").html('');
						$('#sure').css('display','none');
						layer.closeAll();
						layer.msg('结束课程成功');
					}else{
						layer.closeAll();
						layer.alert('文件名可能含有非法字符，请重新命名');
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