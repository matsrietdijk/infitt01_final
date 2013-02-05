<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>All enquetes</h1>
		<a href="/final/home">back to home</a>
		<div>
			<h3>Favorite enquetes:</h3>
			<h4>Click enquetes to unfavorite</h4>
			<div>
				<c:forEach items="${requestScope.favorites}" var="enquete">
					<a href="/final/removefavo?id=${enquete.id}"><p><c:out value="${enquete.name}"/></p></a>
				</c:forEach>
			</div>
		</div>
		<div>
			<h3>all:</h3>
			<h4>Click enquetes to favorite</h4>
			<div>
				<c:forEach items="${requestScope.enquetes}" var="enquete">
					<a href="/final/addfavo?id=${enquete.id}"><p><c:out value="${enquete.name}"/></p></a>
				</c:forEach>
			</div>
		</div>
	</body>
</html>