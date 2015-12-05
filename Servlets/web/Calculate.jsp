<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 28-Nov-15
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calculate the Sum</title>
  <link href="/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="toplayer">
</div>
<div class="menupanel">
  <ul class="list">
    <li><a href="#">Home</a></li>
    <li><a href="">Download Source</a></li>
    <li><a href="https://github.com/domheal">Contact</a></li>
  </ul>
</div>
<div class="showcase">
  <div class="showcasecontent">
    <img id="showcaseimage" src="images/monitor.png" height="60%"/>
    </div>
  <div class="showcasetext">
    <pre id="showcasetext">
      New HTML & CSS Design with JSP Implmentation!
      This webpage accepts two numbers as input and then it
      will display some calculation once they have been submitted.
      The calculations are done within the JSP File by using JSP tags.
    </pre>
  </div>
</div>
<div class="calculate">
  <div class="calculatecontent">
  <% out.print("Todays Date: "); %>
  <%=new java.util.Date()%>
  <%! int number1, number2; %>

  <form action="Calculate.jsp" method="post">
    Enter 2 Numbers
    <input type="text" name="numOne"/>
    <input type="text" name="numTwo"/>

    <input id="submit" type="submit" value="Calculate"/>
  </form>

    <%
      try{
        number1 = Integer.parseInt(request.getParameter("numOne"));
        number2 = Integer.parseInt(request.getParameter("numTwo"));
        int answer = number1 + number2;
        out.println("Sum of numbers: " + answer + "</br>");
        answer = number1 * number2;
        out.println("Muliplied: " + answer + "</br>");
        if (number1 == number2){
          out.println(number1 + " and " + number2 + " are the same number!");
        } else {
          out.println(number1 + " and " + number2 + " are <b>NOT</b> the same number!");
        }
      } catch(Exception ex){

      }
    %>
  </div>
</div>

<div class="footer">
  <p>This is an JSP implementation which accepts two numbers as input and then it will display some calculation once they have been submitted. </br>
    The calculations are done within the JSP File by using JSP tags. </p></br>
  <img class="socialmedia" src="images/githubwhite.jpg" height="48px" width="48px"/></br>
  <p>
    Created by Dominic Heal - Github at <a href="http://www.github.com/domheal">www.github.com/domheal</a>
  </p>
</div> <%--div footer--%>
</body>
</html>
