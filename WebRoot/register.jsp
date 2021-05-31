<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() +"://" +request.getServerName() +":" +request.getServerPort() +path +"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">
<title>Register Customer</title>
<link href="res/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="res/mycss/register.css" rel="stylesheet">
<jsp:include page="res-jsp/web_ico.jsp"/>
</head>
<body>
	<div class="content">
		<div class=navbar>
			<a href="index.jsp" style="text-decoration: none;">
				<img border="0" src="res/images/avatar.png" width="50" height="50">
				<span class="logo-text">BookStore</span>
			</a>
			<div class="trigger">
				<span>Already a member?</span> 
				<a href="login.jsp" style="text-decoration: none;">Login</a>
			</div>
		</div>
		<div class="login-panel">
			<div class="container">
				<div class="form">
					<form action="register" method="post" class="form-horizontal" id="myform">
						<div class="control-group">
							<label class="control-label">Username：</label>
							<div class="controls">
								<input type="text" name="username" id="username"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Password：</label>
							<div class="controls">
								<input type="password"  name="password" id="password"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Re-Password：</label>
							<div class="controls">
								<input type="password" name="re_password" id="re_password" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Phone：</label>
							<div class="controls">
								<input type="text" name="tel"/>
							</div>
						</div>
						<div class="left">
							<label for="protocol">
								<input type="checkbox" class="checkbox" onClick="check_a()" id="ch" >
								Tôi đồng ý với các
								<a style="text-decoration:none;" 
									title="Thoa thuan dang ky nguoi dung cua BookStore"  
			      					data-container="body" 
			      					data-toggle="popover" 
			      					data-placement="top" 
			      					data-content="1.Ban dong y voi thoa thuan dang ky cua BookStore, vui long kiem tra truoc khi dang ky。
			      					2.Neu ban khong dong y, vui long dong cua so va thoat khoi trang web nay。">
									"Điều khoản sử dụng của BookStore""
								</a>
							</label>
						</div>
						<div class="zhuce">
								<input id="c_input" type="submit" name="register" value="Register"class="btn btn-success btn-block btn-large" disabled="disabled"/>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="res-jsp/footer01.jsp"/>
<script type="text/javascript" src="res/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="res/js/validation/additional-methods.js"></script>
<script type="text/javascript" src="res/js/validation/my-form-validation.js"></script>
<script type="text/javascript">
	function check_a() {
		
		if (document.getElementById("ch").checked == true) {
			document.getElementById("c_input").disabled = "";
		} else {
			document.getElementById("c_input").disabled = "disabled";
		}
	}
	$(function() {
		$("[data-toggle='popover']").popover();
	});
</script>
</body>
</html>