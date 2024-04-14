<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수강 신청 목록</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/enrolments.css" >
    <%@ include file="header.jsp" %>
</head>
<body>
<div class="container-div">
<table class="enrolments-table">
    <thead>
    <tr>
        <th>수강년도</th>
        <th>학기</th>
        <th>교과목명</th>
        <th>교과구분</th>
        <th>담당교수</th>
        <th>학점</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="enrolment" items="${enrolments}">
        <tr>
            <td><c:out value="${enrolment.year}" /></td>
            <td><c:out value="${enrolment.semester}" /></td>
            <td><c:out value="${enrolment.title}" /></td>
            <td><c:out value="${enrolment.division}" /></td>
            <td><c:out value="${enrolment.professor}" /></td>
            <td><c:out value="${enrolment.credits}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
