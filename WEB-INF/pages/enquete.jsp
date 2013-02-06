<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1><c:out value="${requestScope.enquete.name}"/></h1>
		<a href="/final/home">back to home</a>
		<div>
			<h3>Vraag:</h3>
			<c:set var="current" value="${requestScope.enquete.questions.get(requestScope.question)}" />
			<c:out value="${current.question}"/>
			<form action="/final/enquete?id=${requestScope.enquete.id}&q=${requestScope.question + 1}" method="post">
				<input type="hidden" name="q_index" value="${requestScope.question}">
				<input type="hidden" name="q_id" value="${current.id}">
				<c:if test="${current.type == 0}">
					<c:forEach var="choice" items="${current.choices}">
						<label><input type="radio" name="q_answer" required value="${choice.id}" <c:if test="${requestScope.old == choice.id}">checked</c:if>/><c:out value="${choice.choice}"/></label>
					</c:forEach>
				</c:if>
				<c:if test="${current.type == 1}">
					<textarea name="q_answer" placeholder="Type your answer here" required><c:out value="${requestScope.old}"/></textarea>
				</c:if>
				<c:if test="${current.type == 2}">
					<label><input type="radio" name="q_answer" required value="1" <c:if test="${requestScope.old == '1'}">checked</c:if>/>1</label>
					<label><input type="radio" name="q_answer" required value="2" <c:if test="${requestScope.old == '2'}">checked</c:if>/>2</label>
					<label><input type="radio" name="q_answer" required value="3" <c:if test="${requestScope.old == '3'}">checked</c:if>/>3</label>
					<label><input type="radio" name="q_answer" required value="4" <c:if test="${requestScope.old == '4'}">checked</c:if>/>4</label>
					<label><input type="radio" name="q_answer" required value="5" <c:if test="${requestScope.old == '5'}">checked</c:if>/>5</label>
				</c:if>
				<textarea name="q_extra" placeholder="Feedback about this question can be typed here"></textarea>
				<c:if test="${requestScope.question > 0}">
					<a href="/final/enquete?id=${requestScope.enquete.id}&q=${requestScope.question - 1}">previous question</a>
				</c:if>
				<c:choose>
					<c:when test="${requestScope.enquete.questions.size() == (requestScope.question + 1)}">
						<input type="hidden" name="q_last" value="1">
						<input type="submit" value="finish enquete"/>
					</c:when>
					<c:otherwise>
						<input type="submit" value="next question"/>
					</c:otherwise>
				</c:choose>
			</form>
		</div>
	</body>
</html>