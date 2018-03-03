$(document).ready(function(){
	function sent () {
		var formData = new FormData($('#uploadForm')[0]);
		$.ajax({
			url: "upach",
			type: "POST",
			data:formData,
			contentType: false,
			dataType: 'json',
			cache: false,
			processData: false,
			success: function (data) {
				if (data.state==200) {
					$("#file1").val('');
					// 预览代码
					$("#tbody").html('');
					$("#tbody").html(data.content);
					$('#chose').css('display','inline');
					layer.closeAll();
				}else{
					layer.closeAll();
					layer.alert('格式错误')
				}
			},
			error: function () {
				layer.closeAll();
				$("#file1").val('');
				layer.alert('未知错误')
			}
		});
    };
	$("#buttona").click(function(){
		$('#file1').click();
	});
	$("#file1").change(function(){
			layer.msg('加载中', {
				icon: 16
				,shade:[0.1,'#000'], time:1000000000
			});
			sent();
	});
	$('#sure').click(function(){
		if ($("#kecheng").val()=='') {
			layer.msg('请输入文件名')
			return;
		}
		layer.msg('加载中', {
			icon: 16
			,shade:[0.1,'#000'], time:1000000000
		});
		$.ajax({
			url: "addkecheng",
			type: "POST",
			data:{kecheng:$("#kecheng").val()},
			dataType:"json",
			success: function (data) {
				if (data.state==200) {
					$("#tbody").html('');
					$('#chose').css('display','none');
					$("#kecheng").val('');
					layer.closeAll();
					layer.msg('上传成功');
				}
			},
			error: function () {
				layer.closeAll();
				$("#file1").val('');
				layer.alert('未知错误')
			}
		});
	});
});