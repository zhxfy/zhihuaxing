<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#re").click(function(){
			var loginName = $("#loginName").val();
			var password = $("#password").val();
			var mail = $("#mail").val();
			if(loginName==null||loginName==""){
				alert("请输入用户名");
			}else if(password==null||password==""){
				alert("请输入密码");
			}else if(mail==null||mail==""){
				alert("请输入邮箱");
			}else{
				$.post(
					"<%=request.getContextPath() %>/user/regist.action",
					{
						loginName:loginName,
						password:password,
						mail:mail
					},
					function(json){
						if(json){
							location.href="login.jsp";
						}else{
							alert("注册失败,请重新注册");
							location.reload();
						}
					},
					"json"
				);
			}
		});
	});
</script>
<link rel="shortcut icon"  href="icon/mobile.png" type="image/x-icon">
</head><!-- http://img2.niutuku.com/desk/1208/1308/ntk-1308-32167.jpg -->
<body background="http://www.bz55.com/uploads/allimg/120101/1_120101113544_1.jpg">
	<div style="height: 130px;"></div>
	<div align="center" >
		<div style="padding: 100px 100px 10px;background: rgba(0,0,0, 0.5);width: 500px; height: 400px;">
		    <form class="bs-example bs-example-form" role="form" method="post" >
		        <div class="input-group" style="width: 300px;">
		        
		            <span class="input-group-addon">用户名</span>
		            <input type="text" class="form-control" placeholder="请输入用户名" id="loginName">
		        </div>
		        <br>
		        <div class="input-group" style="width: 300px;">
		            <span class="input-group-addon">密码</span></span>
		            <input type="text" class="form-control" placeholder="请输入密码" id="password">
		            
		        </div>
		        
		        <br>
		        <div class="input-group" style="width: 300px;">
		            <span class="input-group-addon">邮箱</span>
		            <input type="text" class="form-control" placeholder="请输入邮箱" id="mail">
		        </div>
		        <br>
		        <button type="button" id="re" class="btn btn-primary btn-lg" style="width:290px;">
					注册
				</button>
		    </form>
		</div>
	</div>
</body>
</html>