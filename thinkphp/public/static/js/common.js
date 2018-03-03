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
	var the;//存储点击按钮的this
	$(function(){
		for (var i = 1; i <= 18; i++) {//16
			$("#ajax"+i).click(function(){
				//如果当前页面不是点击的选项
				the=this;
				if (now!=$(this).attr('ajax')) {
					$.ajax({
						url: $(this).attr('ajax'),
						type: "GET",
						data:{
							// classid:arr[1],
							// gongzhong:$('#select'+arr[0]).val(),
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
								now=$(the).attr('ajax');
								reloadAbleJSFn("other",_root+'/static/js/ajax/'+$(the).attr('ajax')+".js");
							});	
						},
						error: function () {
							alert('未知错误');
						}
					});
				}
				// alert($(this).attr('ajax'));
			})
		}
	});
});