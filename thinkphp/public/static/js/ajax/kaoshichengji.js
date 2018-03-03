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
		layer.msg('加载中', {
			icon: 16
			,shade:[0.1,'#000'], time:1000000000
		});
		$.ajax({
			url: "kaoshichengjiapi",
			type: "POST",
			data:{sure:"sure"},
			dataType:"json",
			success: function (data) {
				if (data.state==200) {
					$("#tbody").html('');
					$('#chose').css('display','none');
					$("#tbody").html('');
					$("#tbody").html(data.content);
					layer.closeAll();
					layer.msg('上传成功');
				}else{
					layer.closeAll();
					layer.msg('错误');
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