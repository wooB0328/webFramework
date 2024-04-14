<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>학사 정보 시스템</title>
  <link rel="stylesheet" type="text/css"
        href="${pageContext.request.contextPath}/resources/css/home.css" >
  <%@ include file="header.jsp" %>
</head>
<body>
<div class="img-container">
  <img src="${pageContext.request.contextPath}/resources/images/home.jpg" alt="Login Image">
</div>

<div class="link-container green-background">
  <a href="${pageContext.request.contextPath}/courses">학년별 이수학점 조회</a>
</div>
<div class="link-container purple-background">
  <a href="${pageContext.request.contextPath}/createEnrolment">수강신청 하러가기</a>
</div>
<div class="link-container sky-background">
  <a href="${pageContext.request.contextPath}/enrolments">수강신청 현황 보기</a>
</div>
</body>
</html>
