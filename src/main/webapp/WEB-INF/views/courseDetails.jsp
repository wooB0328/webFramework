<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Course Details</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/course.css" >
    <%@ include file="header.jsp" %>
</head>
<body>
<div class="container-div">
    <h2>${param.year}년 ${param.semester}학기 상세보기</h2>
    <table class="enrolments-table">
        <thead>
        <tr>
            <th>년도</th>
            <th>학기</th>
            <th>과목코드</th>
            <th>교과목명</th>
            <th>교과구분</th>
            <th>담당교수</th>
            <th>학점</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td><c:out value="${course.year}" /></td>
                <td><c:out value="${course.semester}" /></td>
                <td><c:out value="${course.code}" /></td>
                <td><c:out value="${course.title}" /></td>
                <td><c:out value="${course.division}" /></td>
                <td><c:out value="${course.professor}" /></td>
                <td><c:out value="${course.credits}" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
