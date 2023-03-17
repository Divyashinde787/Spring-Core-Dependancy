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
width: 400px;
height:40px;
background-color: sky-blue;
}
</style>
</head>
<body>
<%!
String name;
String email;
String contact;
String username;
String password;

Connection conn;
PreparedStatement stmt;
ResultSet rs;
%>

<form name="frm" action="" method="POST">
<div class="container mt-5">
<div class="form-group">
    <input type="text" class="form-control controlsize" placeholder="Enter name" name="name">
  </div>
  <div class="form-group">
    <input type="email" class="form-control controlsize" placeholder="Enter email" name="email">
  </div>
  <div class="form-group">
    <input type="text" class="form-control controlsize" placeholder="Enter contact" name="contact">
  </div>
  <div class="form-group">
    <input type="text" class="form-control controlsize" placeholder="Enter username" name="username">
  </div>
  <div class="form-group">
    <input type="password" class="form-control controlsize" placeholder="Enter password" name="password">
  </div>
  <div class="form-group">
    <input type="submit" class="form-control controlsize btn btn-danger" value="Register here" name="sbt">
  </div>
 </div>
</form>
 <%
 String btn=request.getParameter("sbt");
 //out.println(btn);
 if(btn!=null){
	 name= request.getParameter("name");
	 email= request.getParameter("email");
	 contact=request.getParameter("contact");
	 username= request.getParameter("username");
	 password=request.getParameter("password");
	 
	/*
	out.println("<h1> name is &nbsp;"+name+"</h1>");
	 out.println("<h1> email is &nbsp;"+email+"</h1>");
	 out.println("<h1> contact is &nbsp;"+contact+"</h1>");
	 out.println("<h1>  username is &nbsp;"+username+"</h1>");
	 out.println("<h1> password is &nbsp;"+password+"</h1>");
	*/ 
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspapp","root",null);
		stmt=conn.prepareStatement("insert into jspregister values('0',?,?,?,?,?)");
		stmt.setString(1,name);
		stmt.setString(2,email);
		stmt.setString(3,contact);
		stmt.setString(4,username);
		stmt.setString(5,password);
		int val =stmt.executeUpdate();
		if(val>0){
			out.println("regitration sucess.....");
		}else{
			out.println("registration fail.....");
		}
		
		}catch(Exception e){
		out.println("Error is : "+e);
	}
 }
 %>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="js/bootstrap.js"></script>

<h1>hello</h1>

</body>
</html>