$(document).ready(function(){
	function sent () {
		var formData = new FormData($('#uploadForm')[0]);
		// formData.append("file",$(document.getElementById("file1").files[0]));
		$.ajax({
			url: "upstu",
			type: "POST",
			data:formData,
			/**
			*必须false才会自动加上正确的Content-Type
			*/
			contentType: false,
			/**
			* 必须false才会避开jQuery对 formdata 的默认处理
			* XMLHttpRequest会对 formdata 进行正确的处理
			*/
			cache: false,
			processData: false,
			success: function (data) {
				if (data.state==200) {
					$("#file1").val('');
					// 预览代码
					$("#tbody").html('');
					$("#tbody").html(data.content);
					$('#sure').css('display','inline');
					layer.closeAll();
				}else{
					layer.closeAll();
					layer.alert('格式错误');
				}
			},
			error: function () {
				layer.closeAll();
				$("#file1").val('');
				layer.alert('未知错误');
			}
			});
	};
	$("#buttona").click(function(){
		$('#file1').click();
	});
	$("#file1").change(function(){
		layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
		sent();
	});
	$('#sure').click(function(){
		layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
		$.ajax({
			url: "upsure",
			type: "POST",
			data:{data:"sure"},
			dataType:"json",
			success: function (data) {
				if (data.state==200) {
					$("#tbody").html('');
					$('#sure').css('display','none');
					layer.closeAll();
					layer.msg('上传成功');
				}else{
					layer.closeAll();
					layer.alert('数据库已有此批学生数据');
				}
			},
			error: function () {
				layer.closeAll();
				$("#file1").val('');
				layer.alert('未知错误');
			}
		});
	});
});