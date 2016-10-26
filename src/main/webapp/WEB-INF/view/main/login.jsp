<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><html>
<head>
<title>Login Page</title>
</head>
<body >
	<h3>Login with Username and Password</h3>
	<div class="error ${param.error == true ? '' : 'hide'}">
		登陆失败<br>
		${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}
	</div>
	<form action="${pageContext.request.contextPath}/j_spring_security_check" method="post"
		style="width: 260px; text-align: center;">
		<fieldset>
			<legend>登陆</legend>
			用户： <input type="text" name="j_username" style="width: 150px;" /><br />
			密码： <input type="password" name="j_password" style="width: 150px;" /><br />
			<input type="submit" value="登陆" /> <input type="reset" value="重置" />
		</fieldset>
	</form>

</body>
</html>