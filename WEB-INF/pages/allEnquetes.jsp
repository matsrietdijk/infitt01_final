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
<h1 class="responsive" data-scale="3.825" data-min="20" data-max="170" style="font-size: 99px;">Enquetes</h1>
<div class="row">
<div class="three small-tablet sevenths gap-top pad-right no-padding-mobile">
<a class="block button" href="#" target="_blank">INFITT01 <i class="icon-twitter"></i></a>
</div>
<div class="four small-tablet sevenths gap-top">
<a class="block button" href="https://github.com/matsrietdijk/infitt01_final" target="_blank">Check repo on Github <i class="icon-github-alt"></i></a>
</div>
<div class="row">
<div class="three small-tablet sevenths gap-top pad-right no-padding-mobile">
<a class="block button" href="/final/home">Home</a>
</div>
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
<h1>Favorite enquetes:</h1>
<h2>Click enquetes to unfavorite</h2>
<c:forEach items="${requestScope.favorites}" var="enquete">
<div class="one third padded">
<a href="/final/removefavo?id=${enquete.id}">
<h3 class="align-center"><c:out value="${enquete.name}"/></h3>
</a>
</div>
</c:forEach>        
</section>
</hr>
<section class="row">
<h1>All enquetes:</h1>
<h2>Click enquetes to favorite</h2>
<c:forEach items="${requestScope.enquetes}" var="enquete">
<div class="one third padded">
<a href="/final/addfavo?id=${enquete.id}">
<h3 class="align-center"><c:out value="${enquete.name}"/></h3>
</a>
</div>
</c:forEach> 
</section>
</article>
</div>
</body>
</html>