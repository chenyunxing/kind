$(document).ready(function(){
	function reloadAbleJSFn(id,newJS)
	{
		var oldjs = null; 
		var t = null; 
		var oldjs = document.getElementById(id); 
		if(oldjs) oldjs.parentNode.removeChild(oldjs); 
		var scriptObj = document.createElement("script"); 
		scriptObj.src = newJS; 
		scriptObj.type = "text/javascript"; 
		scriptObj.id   = id; 
		document.getElementsByTagName("head")[0].appendChild(scriptObj);
	}
	$("#next").click(function(){
		$.ajax({
			url: 'modify',
			type: "GET",
			data:{
				pageNumber:$(this).attr('pageNumber')
			},
			dataType:'json',
			success: function (data) {
				$("#main-content").fadeToggle(400,"swing",function(){
					$("#main-content2").html(data);
					$("#main-content").empty();
					$('#main-content').attr('id','main-content3');
					$('#main-content2').attr('id','main-content');
					$('#main-content3').attr('id','main-content2');
					$('#main-content').css('display','block');
					$('#main-content2').css('display','block');
					oldjs = document.getElementById('editor');
					if(oldjs){
						oldjs.parentNode.removeChild(oldjs); 
						scriptObj = document.createElement("script"); 
						scriptObj.type = "text/plain";
						scriptObj.id   = 'editor'; 
						scriptObj.style   = 'height: 220px;'; 
						document.getElementById("editorcontent").appendChild(scriptObj);
						var editor = new UE.ui.Editor();
						editor.render("editor");
					}
					reloadAbleJSFn("other",_root+'/static/js/ajax/modify'+".js");
				});
			},
			error: function () {
				layer.alert('未知错误');
			}
		})
	});
	$("#up").click(function(){
		$.ajax({
			url: 'modify',
			type: "GET",
			data:{
				pageNumber:$(this).attr('pageNumber')
			},
			dataType:'json',
			success: function (data) {
				$("#main-content").fadeToggle(400,"swing",function(){
					$("#main-content2").html(data);
					$("#main-content").empty();
					$('#main-content').attr('id','main-content3');
					$('#main-content2').attr('id','main-content');
					$('#main-content3').attr('id','main-content2');
					$('#main-content').css('display','block');
					$('#main-content2').css('display','block');
					oldjs = document.getElementById('editor');
					if(oldjs){
						oldjs.parentNode.removeChild(oldjs); 
						scriptObj = document.createElement("script"); 
						scriptObj.type = "text/plain";
						scriptObj.id   = 'editor'; 
						scriptObj.style   = 'height: 220px;'; 
						document.getElementById("editorcontent").appendChild(scriptObj);
						var editor = new UE.ui.Editor();
						editor.render("editor");
					}
					reloadAbleJSFn("other",_root+'/static/js/ajax/modify'+".js");
				});
			},
			error: function () {
				layer.alert('未知错误');
			}
		})
	});
	$(function(){
		for (var i = 1; i <= 10; i++) {
			$("#change"+i).click(function(){
				$.ajax({
					url: 'change',
					type: "GET",
					data:{
						id:$(this).attr('data')
					},
					dataType:'json',
					success: function (data) {
						$("#main-content").fadeToggle(400,"swing",function(){
							$("#main-content2").html(data);
							$("#main-content").empty();
							$('#main-content').attr('id','main-content3');
							$('#main-content2').attr('id','main-content');
							$('#main-content3').attr('id','main-content2');
							$('#main-content').css('display','block');
							$('#main-content2').css('display','block');
							oldjs = document.getElementById('editor');
							if(oldjs){
								ohtml=$(oldjs).html();
								console.log(oldjs);
								console.log($(oldjs).html());
								oldjs.parentNode.removeChild(oldjs); 
								scriptObj = document.createElement("script"); 
								scriptObj.type = "text/plain";
								scriptObj.id   = 'editor'; 
								scriptObj.style   = 'height: 220px;';
								scriptObj.innerHTML=ohtml;
								document.getElementById("editorcontent").appendChild(scriptObj);
								var editor = new UE.ui.Editor();
								editor.render("editor");
							}
							reloadAbleJSFn("other",_root+'/static/js/ajax/change'+".js");
						});
						now='test';
					},
					error: function () {
						layer.alert('未知错误');
					}
				});
				// alert($(this).attr('ajax'));
			})
			$("#delete"+i).click(function(){
				dthe=this;
				$.ajax({
					url: 'delete',
					type: "GET",
					data:{
						id:$(this).attr('data')
					},
					success: function (data) {
						if (data) {
							console.log(dthe);
							console.log($(dthe).parent().parent());
							$(dthe).parent().parent().css('display','none');
							layer.msg('删除成功')
						}else{
							layer.alert('删除失败')
						}
					},
					error: function () {
						layer.alert('未知错误');
					}
				});
				// alert($(this).attr('ajax'));
			})
		}
	});
});
