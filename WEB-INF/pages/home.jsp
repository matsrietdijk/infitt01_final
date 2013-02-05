<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Homepage</h1>
		<div>
			<h3>Favorite enquetes:</h3>
			<c:forEach items="${requestScope.favorites}" var="enquete">
				<p><c:out value="${enquete.name}"/></p>
			</c:forEach> 
		</div>
	</body>
</html>