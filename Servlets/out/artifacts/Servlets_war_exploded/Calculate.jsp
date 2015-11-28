<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 28-Nov-15
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.Math.*" %>
<html>
<head>
  <title>Calculate the Sum</title>
  <style>
    body {
      background-color:#3498DB;
      font-family: sans-serif;
    }
    input[type=submit] {
      background: transparent url("https://jira.appcelerator.org/secure/thumbnail/23534/_thumb_23534.png") 0 0 no-repeat;
      font-weight: bold;
      display: inline-block;
      text-align: center;
      color:white;
      cursor: pointer;
      height: 30px; /* height of the background image */
      width: 100px; /* width of the background image */
      border: 5px solid #fff;
      border-radius: 4em;
    }
    h1 {}
  </style>
</head>
<body>
<div style="text-align: center; color:white">
  <h1>Calculator JSP</h1>
  <img src="http://www.sucaijiayuan.com/uploads/file/contents/2013/10/526cbaefb14b5.png" width="150" height="150"/> </br>
  </br>
  </br>
<% out.print("Todays Data: "); %>
<%=new java.util.Date()%>
<%! int number1, number2; %>
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
    out.println("Sum of answers: " + answer + "</br>");
    answer = number1 * number2;
    out.println("Muliplied: " + answer + "</br>");
    answer = number1 % number2;
    if (answer == 0){
      out.println(number1 + " and " + number2 + " are multiplies");
    } else {
      out.println(number1 + " and " + number2 + " are <b>NOT</b> multiplies");
    }

  } catch(Exception ex){

  }
%>
</div>
</body>
</html>
