<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href='<c:url value="Resource/bootstrap/css/bootstrap.css" />'>
<link rel="stylesheet" type="text/css" href='<c:url value="Resource/bootstrap/css/bootstrap-responsive.css" />'>
<link rel="stylesheet" type="text/css" href='<c:url value="Resource/bootstrap/css/style.css" />'>
<title>高校学生管理系统——登录页面</title>
<style type="text/css">
    body {
        padding-top: 15%;
/*         padding-bottom: 40px; */
        background-color: highlight;
    }
    .form-signin {
        max-width: 400px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: background;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
    }

    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 10px;
    }

    .form-signin input[type="text"],
    .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
    }
</style>
</head>
<body>
<div align="center">
	<form action="LoginServlet" id="form" name="fors" class="form-signin" onsubmit="return check()" method="post">
		<hr>
		<h3 class="form-signin-heading">客户关系管理系统</h3>
		<i>Customer Relationship Management</i><br>
		<c:if test="${!empty msg }">${msg }</c:if><br><br>
		<input type="text" name="username" class="input-block-level" placeholder="用户帐号" maxlength="12"><br>
		<input type="password" name="password" class="input-block-level" placeholder="用户密码" maxlength="16"><br>
		<input type="submit" class="btn btn-large btn-primary" value=" Login In ">
		<hr>
	</form>
</div>
<script type="text/javascript" src='<c:url value="Resource/bootstrap/js/jquery.js" />'></script>
<script type="text/javascript" src='<c:url value="Resource/bootstrap/js/bootstrap.js" />'></script>
<script type="text/javascript" src='<c:url value="Resource/js/ckform.js" />'></script>
<script type="text/javascript" src='<c:url value="Resource/js/common.js" />'></script>
<script type="text/javascript">
function check() {
	$().ready(function(){
		$("#form").validate({
			rules:{
				username:{
					required:true,
					minlength:1,
					maxlength:12
				},
				password:{
					required:true,
					minlength:1,
					maxlength:16
				}
			},
			messages:{
				username:{
					required:"请输入有效的用户账号",
					minlength:"用户帐号长度最小1位",
					maxlength:"用户帐号长度最大12位"
				},
				password:{
					required:"请输入有效的用户密码",
					minlength:"密码最小长度为：8位",
					maxlength:"密码最大长度为：16位"
				}
			}
		});
	});
	if (document.fors.username.value.length < 1) {
		alert("用户账号不能为空值");
		return false;
	}
	if (document.fors.password.value.length < 1) {
		alert("用户密码不能为空值");
		return false;
	} else {
		return true;
	}
}
</script>
</body>
</html>