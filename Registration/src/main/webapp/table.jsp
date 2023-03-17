<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<style>
 .controlsize{
width: 600px;
height:40px;
background-color: sky-blue;
}

</style>

</head>
<body>
<%! int no, tbl,i; %>
<div class="container mt-5 p-5 bg-primary">
<form name="frm" action="" method="GET">
<div class="form-group">
    <input type="text" class="form-control controlsize" placeholder="Enter number Here" name="no">
  </div>
  <div class="form-group">
    <input type="submit" class="form-control controlsize btn btn-danger" value="print table" name="sbt">
  </div>
</form>

<%
String btn = request.getParameter("sbt");
if(btn!=null){
	
	no = Integer.parseInt(request.getParameter("no"));
	out.println("<table class='table'>");
	out.println("<thead>");
	out.println("<tr>");
	out.println("<th>Iteration</th>");
	out.println("<th>X</th>");
	out.println("<th>Number</th>");
	out.println("<th>=</th>");
	out.println("<th>Result</th>");
	
	out.println("</tr>");
	out.println("</thead>");
	
	for(i=1;i<=10; i++){
	out.println("<tr>");
	out.println("<td>"+i+"</td>");
	out.println("<td>X</td>");
	out.println("<td>"+no+"</td>");
	out.println("<td>=</td>");
	out.println("<td>"+(no*i)+"</td>");
	out.println("</tr>");

	}
	out.println("</table>");

}
%>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>