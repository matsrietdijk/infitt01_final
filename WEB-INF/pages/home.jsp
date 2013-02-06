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
            <h1 class="responsive" data-scale="3.825" data-min="20" data-max="170" style="font-size: 99px;">Homepage</h1>
            <h3 class="responsive" data-scale="13.6" data-min="15" data-max="50" style="font-size: 27px;"><a href="/final/all">All enquetes</a></h3>
            <div class="row">
              <div class="three small-tablet sevenths gap-top pad-right no-padding-mobile">
                <a class="block button" href="#" target="_blank">INFITT01 <i class="icon-twitter"></i></a>
              </div>
              <div class="four small-tablet sevenths gap-top">
                <a class="block button" href="https://github.com/matsrietdijk/infitt01_final" target="_blank">Check repo on Github <i class="icon-github-alt"></i></a>
              </div>
            </div>
            <c:if test="${pageContext.request.isUserInRole(\"admin\") == true}">
              <div class="row">
                <div class="three small-tablet sevenths gap-top pad-right no-padding-mobile">
                  <a class="block button" href="/final/admin">Admin</a>
                </div>
              </div>
            </c:if>
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
          <h3>Favorite enquetes:</h3>
          <c:forEach items="${requestScope.favorites}" var="enquete">
            <div class="one third padded">
              <a href="/final/enquete?id=${enquete.id}">
                <h1 class="align-center"><c:out value="${enquete.name}"/></h1>
              </a>
            </div>
          </c:forEach>        
        </section>
        </hr>
        <section class="row">
          <h3>Finished enquetes:</h3>
          <c:forEach items="${requestScope.finished}" var="enquete">
            <div class="one third padded">
              <a href="/final/result?id=${enquete.id}">
                <h1 class="align-center"><c:out value="${enquete.name}"/></h1>
              </a>
            </div>
          </c:forEach> 
        </section>
      </article>
    </div>
  </body>
</html>

