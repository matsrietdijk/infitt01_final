<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/groundwork/css/groundwork.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/groundwork/css/groundy.css" />
  </head>
  <body>
  	<div class="hero band lt-blue invert-color tripple padded">
      <div class="container">
        <div class="row">
          <div class="one third padded align-center">
          	<h1 class="responsive" data-scale="3.825" data-min="20" data-max="170" style="font-size: 99px;">Invullen</h1>
            <h3 class="responsive" data-scale="13.6" data-min="15" data-max="50" style="font-size: 27px;"><c:out value="${requestScope.enquete.name}"/></h3>
            <div class="row">
              <div class="three small-tablet sevenths gap-top pad-right no-padding-mobile">
								<a class="block button" href="/final/home"><i class="icon-arrow-left"></i> Back to home</a>
              </div>
              <div class="four small-tablet sevenths gap-top">
                <a class="block button" href="https://github.com/matsrietdijk/infitt01_final" target="_blank"><i class="icon-github-alt"></i> Check repo on Github</a>
              </div>
            </div>
          </div>
          <div class="two thirds padded align-center">
           <img src="http://www.norea.nl/readfile.aspx?ContentID=73038&ObjectID=1015406&Type=1&File=0000038485_ENQUETE.jpg" alt="Groundwork CSS - A Responsive Design Framework" class="glow double gap-top" style="margin-bottom:-42px;">
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <article>
        <div class="space gap-top"></div>
        <section class="row">
        	<div class="two thirds padded">
        	<h3>Vraag:</h3>
					<c:set var="current" value="${requestScope.enquete.questions.get(requestScope.question)}" />
					<c:out value="${current.question}"/>
					<form action="/final/enquete?id=${requestScope.enquete.id}&q=${requestScope.question + 1}" method="post">
						<fieldset>
							<input type="hidden" name="q_index" value="${requestScope.question}">
							<input type="hidden" name="q_id" value="${current.id}">
							<c:if test="${current.type == 0}">
								<div class="row">
									<div class="one whole padded">
										<label for="things">Pick</label>
										<ul class="radio-list">
											<c:forEach var="choice" items="${current.choices}">
												<li><label><input type="radio" name="q_answer" required value="${choice.id}" <c:if test="${requestScope.old == choice.id}">checked</c:if>/><c:out value="${choice.choice}"/></label></li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</c:if>
							<c:if test="${current.type == 1}">
								<div class="row">
									<div class="one half padded">
										<label for="message">Answer</label>
										<textarea name="q_answer" placeholder="Type your answer here" required><c:out value="${requestScope.old}"/></textarea>
									</div>
								</div>
							</c:if>
							<c:if test="${current.type == 2}">
								<div class="row">
									<div class="one whole padded">
									<label for="things">Pick</label>
										<ul class="radio-list">
											<li><label><input type="radio" name="q_answer" required value="1" <c:if test="${requestScope.old == '1'}">checked</c:if>/>1</label></li>
											<li><label><input type="radio" name="q_answer" required value="2" <c:if test="${requestScope.old == '2'}">checked</c:if>/>2</label></li>
											<li><label><input type="radio" name="q_answer" required value="3" <c:if test="${requestScope.old == '3'}">checked</c:if>/>3</label></li>
											<li><label><input type="radio" name="q_answer" required value="4" <c:if test="${requestScope.old == '4'}">checked</c:if>/>4</label></li>
											<li><label><input type="radio" name="q_answer" required value="5" <c:if test="${requestScope.old == '5'}">checked</c:if>/>5</label></li>
										</ul>
									</div>
								</div>
							</c:if>
							<div class="row">
								<div class="one whole padded">
									<label for="message">Feedback</label>
									<textarea name="q_extra" placeholder="Feedback about this question can be typed here"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="one whole padded">
									<c:if test="${requestScope.question > 0}">
										<a class="button" href="/final/enquete?id=${requestScope.enquete.id}&q=${requestScope.question - 1}"><i class="icon-arrow-left"></i> previous question</a>
									</c:if>
									<c:choose>
										<c:when test="${requestScope.enquete.questions.size() == (requestScope.question + 1)}">
											<input type="hidden" name="q_last" value="1">
											<button>finish enquete</button>
										</c:when>
										<c:otherwise>
											<button>next question <i class="icon-arrow-right"></i></button>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</fieldset>
					</form>
        </section>
      </article>
    </div>
	</body>
</html>