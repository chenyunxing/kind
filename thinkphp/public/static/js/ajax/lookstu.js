$(document).ready(function(){
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
		}
	});
});