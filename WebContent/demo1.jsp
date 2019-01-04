<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-1.11.0.min.js"></script>
</head>
<body>
	<form method="post" action="#">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username"></td>
				<td><span id="usename_msg"></span></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="text" name="password"></td>
				<td></td>
			</tr>
			<tr>
				<td colspan='3'><input type="submit" id="sub"></td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
$(function(){
	$("[name=username]").blur(function(){
		
	$.post("${pageContext.request.contextPath}/user","username="+$("[name=username]").val(),function(obj){
		/* alert(obj); */
		if(obj==1){
			$("#usename_msg").html("<font color=red>该用户名已被使用</font>");
			$("#sub").attr("disabled","disabled");
		}else{
			$("#usename_msg").html("<font color=green>该用户名可以使用</font>");
			$("#sub").removeattr("disabled","disabled");
			
		}
	})
	})
})
</script>
</html>