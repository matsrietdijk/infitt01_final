<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/groundwork/css/groundwork.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/groundwork/css/groundy.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  </head>
  <body>
    <div class="hero band lt-blue invert-color tripple padded">
      <div class="container">
        <div class="row">
          <div class="one third padded align-center">
            <h1 class="responsive" data-scale="3.825" data-min="20" data-max="170" style="font-size: 99px;">Aanmaken</h1>
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
          <form action="/final/admin" method="post">
            <input type="hidden" name="e_index" value="${requestScope.enquete_id}">
            <fieldset>
              <legend>Add questions</legend>
              <div class="row">
                <div class="one whole padded">
                  <label for="text">Vraag</label>
                  <input type="text" name="q_question" />
                </div>
              </div>
              <div class="row">
                <div class="one whole padded">
                  <label for="things">Soort vraag</label>
                  <ul class="radio-list rbl">
                    <li><label><input type="radio" name="q_type" required value="0" />Multiple Choice</label></li>
                    <li><label><input type="radio" name="q_type" required value="1" />Open</label></li>
                    <li><label><input type="radio" name="q_type" required value="2" />Waardering</label></li>
                  </ul>
                </div>
                <div class="row">
                  <div class="one whole padded insertion">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="one third padded">
                  <input class="block button" type="submit" value="Verzend" />
                </div>
                <div class="one third padded">
                  <a class="block button" href="/final/home"><i class="icon-arrow-left"></i> Stoppen</a>
                </div>
              </div>
            </fieldset>
          </form>
        </section>
      </article>
    </div>
    <footer>
      <script>
        $(document).ready(
          function checkform() {
            if($('input:radio[name=radio]:checked').val() == "0") {
              $('insertion').html("");
              var html = '<ul class="radio-list-choices"><li><input type="text" name="c_value" placeholder="Keuze" /></li></ul><br /><button class="addmore">Voeg toe</button>';
              $('insertion').append(html);
            } else if ($('input:radio[name=radio]:checked').val() == "1") {
              $('insertion').html("");
            } else {
              $('insertion').html("");
            }
        });

        $(document).ready(
          function checkMultiple() {
            $('addmore').click(function() {
              var html = '<li><input type="text" name="q_value" placeholder="Antwoord" /></li>';
              $('radio-list-choices').append(html);
          });
        });
      </script>
    </footer>
  </body>
</html>