<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>INDEX</title>
</head>
<body>
<!-- HelloStruts機能 -->
    <s:form action="HelloStrutsAction">
        <s:submit value="HelloStruts"/>
    </s:form>
<!-- Welcome機能 -->
    <s:form action="WelcomeAction">
        <s:submit value="Welcome"/>
    </s:form>
<!-- Inquiry機能 -->
    <s:form action="InquiryAction">
        <s:submit value="問い合わせ"/>
    </s:form>
<!-- Test機能 -->
<h3>新規ユーザー登録</h3>
GET通信
<s:form method="get" action="TestAction">
<s:textfield name="username"/><br>
<s:password name="password"/>
<s:submit value="送信"/>
</s:form>
<br>
POST通信
<s:form method="post" action="TestAction">
<s:textfield name="username"/><br>
<s:password name="password"/>
<s:submit value="送信"/>
</s:form>

</body>
</html>