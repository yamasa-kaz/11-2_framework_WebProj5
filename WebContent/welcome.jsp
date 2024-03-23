<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>WELCOME</title>
</head>
<body>

名前とパスワードを入力してください。<br>
<s:form method="post" action="LoginAction">
    ユーザー名：<s:textfield name="username" label="ユーザー名"/><br>
    パスワード：<s:password name="password" label="パスワード"/><br>
    <s:submit value="送信"/>
</s:form>

</body>
</html>