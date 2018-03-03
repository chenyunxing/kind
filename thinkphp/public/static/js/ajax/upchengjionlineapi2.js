$(document).ready(function(){
	$(function(){
		for (var i = 1; i <= $('#num').val(); i++) {
			inputlist=$("#sbutton"+i).parent().parent().find('input');
			for (var f = 0; f < inputlist.length; f++) {
				inputlist[f].onkeyup=function(){
					// console.log('a')
					this.value=this.value.replace(/[^\d]/g,'');
				}
			};
			$("#sbutton"+i).click(function(){
				layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
				//获取需要传输的数据
				sentdata='';
				// console.log($(this).parent().parent().find('input'));
				//获取到所有input，然后进行字符串拼接
				inputlist=$(this).parent().parent().find('input');
				for (var f = 0; f < inputlist.length; f++) {
					sentdata=sentdata+inputlist[f].name+':#:';
					sentdata=sentdata+inputlist[f].value+':#:';
				};
				$.ajax({
					url: "changesinge",
					type: "POST",
					data:{
						//假设制作ajax获取的资料是同一行的所有东西
						data:sentdata,
						stuid:this.value,
					},
					success: function (data) {
						layer.closeAll();
						if (data.state==200) {
							layer.msg("修改完成");
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