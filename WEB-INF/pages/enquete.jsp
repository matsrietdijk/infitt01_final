<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1><c:out value="${requestScope.enquete.name}"/></h1>
		<a href="/final/home">back to home</a>
		<div>
			<h3>Vraag:</h3>
		</div>
	</body>
</html>