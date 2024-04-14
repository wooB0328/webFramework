<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>수강 신청 생성</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/createEnrolment.css" >
    <%@ include file="header.jsp" %>
</head>
<body>

<sf:form method="post" action="${pageContext.request.contextPath}/doCreateEnrolment" modelAttribute="enrolment">
    <table class="form-table">
        <tr>
            <td>수강년도</td>
            <td>학기</td>
            <td>교과목명</td>
            <td>교과구분</td>
            <td>담당교수</td>
            <td>학점</td>
        </tr>
        <tr>
            <td><sf:input path="year" class="form-control" value="2024"/><sf:errors path="year" class="error"/></td>
            <td><sf:input path="semester" class="form-control" value="2"/><sf:errors path="semester" class="error"/></td>
            <td><sf:input path="title" class="form-control"/><sf:errors path="title" class="error"/></td>
            <td><sf:input path="division" class="form-control"/><sf:errors path="division" class="error"/></td>
            <td><sf:input path="professor" class="form-control"/><sf:errors path="professor" class="error"/></td>
            <td><sf:input path="credits" class="form-control"/><sf:errors path="credits" class="error"/></td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center;">
                <input type="submit" value="수강 신청 추가" class="submit-button"/>
            </td>
        </tr>
    </table>
    <c:if test="${not empty bindingResult.allErrors}">
        <div class="error-messages">
            <ul>
                <c:forEach var="error" items="${bindingResult.allErrors}">
                    <li><c:out value="${error.defaultMessage}"/></li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
</sf:form>

</body>
</html>
