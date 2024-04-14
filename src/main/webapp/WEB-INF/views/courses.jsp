<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학사 정보 상세</title>
    <%@ include file="header.jsp" %>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/course.css" >
</head>
<body>
<div class="container-div">
<table class="enrolments-table">
    <thead>
    <tr>
        <th>년도</th>
        <th>학기</th>
        <th>취득 학점</th>
        <th>상세 보기</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="Coursegroup" items="${Coursegroup}">
        <tr>
            <td><c:out value="${Coursegroup.year}" /></td>
            <td><c:out value="${Coursegroup.semester}" /></td>
            <td><c:out value="${Coursegroup.credits}" /></td>
            <td>
                <a href="${pageContext.request.contextPath}/courseDetails?year=${Coursegroup.year}&semester=${Coursegroup.semester}">상세 보기</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td>총계</td>
        <td></td>
        <td><c:out value="${total}" /></td>
        <td></td>
    </tr>
    </tbody>
</table>
</div>
</body>
</html>
