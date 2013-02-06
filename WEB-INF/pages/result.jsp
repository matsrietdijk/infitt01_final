<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Results for: <c:out value="${requestScope.enquete.name}"/></h1>
		<a href="/final/home">back to home</a>
		<div>
			<c:forEach items="${requestScope.results}" var="result">
				<c:if test="${result.type == 0}">
					<h3><c:out value="${result.question}"/></h3>
					<p><c:out value="${result.percentage}"/></p>
				</c:if>
				<c:if test="${result.type == 2}">
					<h3><c:out value="${result.question}"/></h3>
					<p>Average: <c:out value="${result.average}"/></p>
				</c:if>
			</c:forEach>
		</div>
	</body>
</html>