<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>All enquetes</h1>
		<a href="/final/home">back to home</a>
		<div>
			<h3>Favorite enquetes:</h3>
			<c:forEach items="${requestScope.favorites}" var="enquete">
				<p><c:out value="${enquete.name}"/></p>
			</c:forEach> 
		</div>
		<div>
			<h3>all:</h3>
			<c:forEach items="${requestScope.enquetes}" var="enquete">
				<p><c:out value="${enquete.name}"/></p>
			</c:forEach> 
		</div>
	</body>
</html>