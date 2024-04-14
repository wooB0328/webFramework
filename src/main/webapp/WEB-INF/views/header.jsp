<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/header.css">
</head>
<body>
<div class="header">
    <a href="${pageContext.request.contextPath}/" class="header-logo">
        <img src="${pageContext.request.contextPath}/resources/images/header.png" alt="Logo">
    </a>
    <span class="title">학사 정보 시스템</span>
    <div class="right">
        <!-- 로그인 상태가 아닐 때만 로그인 버튼 표시 -->
        <c:if test="${pageContext.request.userPrincipal == null}">
            <a href="${pageContext.request.contextPath}/login" class="auth-button">로그인</a>
        </c:if>
        <!-- 로그인 상태일 때만 로그아웃 버튼 표시 -->
        <c:if test="${pageContext.request.userPrincipal != null}">
            <span>${pageContext.request.userPrincipal.name}님 환영합니다.</span>
            <a href="javascript:document.getElementById('logout').submit()" class="auth-button">로그아웃</a>
        </c:if>
    </div>
</div>

<form id="logout" action="<c:url value='/logout'/>" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</body>
</html>
