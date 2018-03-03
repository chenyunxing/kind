$(document).ready(function(){
	function sent () {
		var formData = new FormData($('#uploadForm')[0]);
		// formData.append("file",$(document.getElementById("file1").files[0]));
		$.ajax({
			url: "datain",
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
				layer.closeAll();
				$("#file1").val('');
				layer.msg(data.state);
			},
			error: function () {
				layer.closeAll();
				$("#file1").val('');
				layer.alert('未知错误');
			}
		});
	};
	$(function(){
		for (var i = 1; i <= $('#sentid').val(); i++) {
			$("#button"+i).click(function(){
				$('#file1').click();
			});
		}
	});
	$("#file1").change(function(){
		layer.confirm("文件名"+$("#file1").val()+",你确定提交吗？", {
			btn: ['确定','取消'] //按钮
		}, function(){
			layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
			sent();
		}, function(){
			return; 
		});
	});
});