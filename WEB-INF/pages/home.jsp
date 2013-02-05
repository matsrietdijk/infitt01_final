<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Homepage</h1>
		<div>
			<c:forEach items="${requestScope.enquetes}" var="enquete">
				<c:out value="${enquete.name}"/><br/>
			</c:forEach> 
		</div>
	</body>
</html>