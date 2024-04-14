<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Please sign in (Custom Login Form)</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
    <%@ include file="header.jsp" %>
</head>
<body>
<div class="login-page">
    <div class="login-form">
        <form class="form-signin" method="post" action="<c:url value="/login" />">
            <h2 class="form-signin-heading">로그인</h2>
            <label for="username" class="sr-only">Username</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="아이디" required autofocus>
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="password" class="form-control" placeholder="비밀번호" required>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        </form>
        <c:if test="${not empty errorMsg}">
            <div class="message-container" style="color: #ff0000; text-align: center; margin-top: 20px">
                <h3>${errorMsg}</h3>
            </div>
        </c:if>
        <c:if test="${not empty logoutMsg}">
            <div class="message-container" style="color: #0000ff; text-align: center; margin-top: 20px">
                <h3>${logoutMsg}</h3>
            </div>
        </c:if>
    </div>
    <div class="login-image">
        <img src="${pageContext.request.contextPath}/resources/images/img_2.png" alt="Login Image">
    </div>
</div>
</body>
</html>
