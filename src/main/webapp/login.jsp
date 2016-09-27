<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			var loginName = $("#loginName").val();
			var password = $("#password").val();
			if(loginName==null||loginName==""){
				alert("用户名不能为空");
			}else if(password==null||password==""){
				alert("密码不能为空");
			}else{
				$.post(
					"<%=request.getContextPath() %>/user/userLogin.action",
					{
						loginName:loginName,
						password:password
					},
					function(json){
						if(json){
							location.href="regist.jsp";
						}else{
							alert("用户名或密码错误,登录失败");
						}
					},
					"json"
				);
			}
			
		});
	});
</script>
<link rel="shortcut icon"  href="icon/mobile.png" type="image/x-icon">
<base target="_blank">
</head><!--http://www.bz55.com/uploads/allimg/120101/1_120101113544_1.jpg  -->

<body background="http://img2.niutuku.com/desk/1208/1308/ntk-1308-32167.jpg">
	<div style="height: 150px;" id="mes"></div>
	<div align="center" >
		<div style="padding: 100px 100px 10px;background: rgba(0,0,0, 0.5);width: 500px; height: 400px;" >
		    <form class="bs-example bs-example-form" role="form" method="post" >
		        <div class="input-group" style="width: 300px;">
		        
		            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
		            <input type="text" class="form-control" placeholder="请输入用户名" id="loginName">
		        </div>
		        <br>
		        <div class="input-group" style="width: 300px;">
		            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
		            <input type="password" class="form-control" placeholder="请输入密码" id="password">
		        </div>
					
		        <br>
		        <button type="button" id="btn" class="btn btn-primary btn-lg" style="width:300px;">
					登录
				</button>
				
				<table width="300" style="margin-top: 30px;">
					<tr align="center">
						<td width="100"><a href="http://qq.com/"><img id="qq" width="50" title="QQ登录" height="50" src="icon/QQ.png"  onMouseOver="this.src='icon/QQ_hover.png'" onMouseOut="this.src='icon/QQ.png'"/></a></td>
						<td width="100"><a href="http://alipay.com/"><img id="zhi" width="50" title="支付宝登录" height="50" src="icon/alipay.png" onMouseOver="this.src='icon/alipay_hover.png'" onMouseOut="this.src='icon/alipay.png'"/></a></td>
						<td width="100"><a href="http://weibo.com/"><img id="wei" width="50" title="微博登录" height="50" src="icon/weibo.png" onMouseOver="this.src='icon/weibo_hover.png'" onMouseOut="this.src='icon/weibo.png'"/></a></td>
					</tr>
				</table>
		    </form>
		</div>
	</div>
</body>
</html>