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
<div id="header">
  <h1>Calculator JSP</h1>
  <img src="http://www.sucaijiayuan.com/uploads/file/contents/2013/10/526cbaefb14b5.png" width="150" height="150"/> </br>
  </br>
<% out.print("Todays Date: "); %>
<%=new java.util.Date()%>
<%! int number1, number2; %>
  </br>
  </div>
    <div id="middle">

</br> </br>
<form action="Calculate.jsp" method="post">
  Enter 2 Numbers
  <input type="text" name="numOne"/>
  <input type="text" name="numTwo"/>

  <input type="submit" value="Calculate"/>
</form>
<%--<%= request.getParameter("numOne")%>--%>
<%--<%= request.getParameter("numTwo")%>--%>

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
<div id="footer">
  <p>This is an JSP implementation which accepts two numbers as input and then it will display some calculation once they have been submitted. </br>
    The calculations are done within the JSP File by using JSP tags. </br>
    </br>
   <img src="images/github.jpg" height="48px" width="48px"/></br>
    Created by Dominic Heal - Github at <a href="http://www.github.com/domheal">www.github.com/domheal</a>
  </p>
</div>
</body>
</html>
