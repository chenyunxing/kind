$(document).ready(function(){
	$(function(){
		for (var i = 1; i <= 10; i++) {
			$("#button"+i).click(function(){
				if (this.innerHTML!='已使用') {
					layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
					this.style.opacity=0.9;
					$.ajax({
						url: "usecu",
						type: "POST",
						data:{
						id:this.value
						},
						dataType:"json",
						success: function (data) {
							for (var f = 1; f <= 10; f++){
								if($("#button"+f).html()=='已使用'){
									$("#button"+f).html('使用');
									$("#button"+f).css('background','');
									$("#button"+f).css('opacity','1');
									$("#button"+f).css('cursor','pointer');
									$("#delete"+f).css('background','');
									$("#delete"+f).css('opacity','1');
									$("#delete"+f).css('cursor','pointer');
								}
							}
							for (var f = 1; f <= 10; f++){
								if($("#button"+f).css('opacity')=='0.9'){
									$("#button"+f).html('已使用');
									$("#button"+f).css('background','#555555');
									$("#button"+f).css('opacity','0.5');
									$("#button"+f).css('cursor','default');
									$("#delete"+f).css('background','#555555');
									$("#delete"+f).css('opacity','0.5');
									$("#delete"+f).css('cursor','default');
								}
							}
							layer.closeAll();
						},
						error: function () {
							layer.closeAll();
							layer.alert('未知错误');
						}
					});
				}
			});
		}
	});
	$(function(){
		for (var i = 1; i <= 10; i++) {
			$("#delete"+i).click(function(){
					the=this;
					layer.confirm("你确定删除吗？", {
						btn: ['确定','取消'] //按钮
					}, function(){
						if (the.style.opacity!=0.5) {
							layer.msg('加载中', {icon: 16,shade:[0.1,'#000'], time:1000000000});
							the.style.opacity=0.6;
							$.ajax({
								url: "deletecu",
								type: "POST",
								data:{
									id:the.value
								},
								dataType:"json",
								success: function (data) {
									for (var f = 1; f <= 10; f++){
										if($("#delete"+f).css('opacity')==0.6){
											$("#tr"+f).css('display','none');console.log($("#tr"+f).css('display'));
										}
									}
									layer.closeAll();
								},
								error: function () {
									layer.closeAll();
									layer.alert('未知错误');
								}
							});
						}
					}, function(){
						return; 
					});
			});
		}
	});
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
			url: 'chosecu',
			type: "GET",
			data:{
				page:$(this).attr('pageNumber')
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
					reloadAbleJSFn("other",_root+'/static/js/ajax/chosecu'+".js");
				});
			},
			error: function () {
				layer.alert('未知错误');
			}
		})
	});
	$("#up").click(function(){
		$.ajax({
			url: 'chosecu',
			type: "GET",
			data:{
				page:$(this).attr('pageNumber')
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
					reloadAbleJSFn("other",_root+'/static/js/ajax/chosecu'+".js");
				});
			},
			error: function () {
				layer.alert('未知错误');
			}
		})
	});
});