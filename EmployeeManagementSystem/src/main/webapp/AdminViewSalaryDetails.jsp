<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="style.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<style>

body{
background-image:url('https://shiftin.app/wp-content/uploads/2021/10/what-are-employee-management-systems.jpg');
background-size:cover;
opacity:1;
}

.navbar-brand{
font-size:32px;
color:black;
font-family:Lucida Handwriting;
}

.nav-link{
font-family:Lucida Handwriting;
color:black;
font-size:24px;
}

.container{
display:flex;
justify-content:center;
margin-top:90px;
}

.a1{
border:3px,solid;
margin-left:50px;
background-color:#7c73e6;
}

input{
border:2px,solid;
}

h2{
text-align:center;
}

.a2,h3{
font-family:Lucida Handwriting;
}

table,th,td{
border:1px,solid;
padding:5px;
color:black;
font-size:17px;
}

.header{
background-color:#c4c1e0;
border:1px,solid;
}

h3,table{
margin:10px;
padding:10px;
}

h5{
margin:10px;
}

i{
font-size:25px;
color:black;
}

</style>

</head>
<body>

<section class="header">
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand text-decoration-underline" href="#">EMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="EmployeeSignUp.html">SignUp</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="EMSLogin.html">Login</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="AdminViewSalaryDetails.jsp">ViewSalary</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>
</section>



<%

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advancedJava?autoReconnect=true&useSSL=false","root","root");
	
	String s1=request.getParameter("t1");
	String s2=request.getParameter("t2");
	String s3=request.getParameter("t3");
	String s4=request.getParameter("t4");
	String s5=request.getParameter("t5");

	
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("Select *from salary");
	out.println("<table border=1");
	out.println("<tr> <th>Gross Salary</th> <th>Employee Id</th> <th>Basic Salary</th> <th>PF</th> <th>DA</th>  </tr>");
	out.println("<h3>Salary Details</h3>");
	while(rs.next())
	{
		
	%>

	<tr>
	<td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getInt(3) %></td>
	<td><%=rs.getInt(4) %></td>
	<td><%=rs.getInt(5) %></td>
	
	</tr>

	<% 
	}
	out.println("</table>");
	
	rs.close();
	con.close();	
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

<!-- footer section -->
<section class="footer">
  <div class="container overflow-hidden text-center">
    <div class="row gy-5">

      <!-- columns for address,phone,email & opening hours -->
      <div class="col-3">
        <i class="bi bi-geo-alt-fill"></i>
      
        <h6 class="text-black">Shiv Bldg,<br>Pune-411004</h6>
      </div>

      <div class="col-3">
        <i class="bi bi-telephone-fill"></i>
      
        <h6 class="text-black">073500-09842</h6>
      </div>

      <div class="col-3">
        <i class="bi bi-envelope-open-fill"></i>
    
        <h6 class="text-black">ems@gmail.com</h6>
      </div>

      <div class="col-3">
        <i class="bi bi-clock-fill"></i>
       
        <h6 class="text-black">Mon-Fri<br>10AM-10PM</h6>
      </div>

    </div>
  </div>

  <!-- copyright -->
  <div class="col-md-12 pt-4 text-black">
    <p class="text-center copyrights">
      <script type="text/JavaScript">
        document.write(new Date().getFullYear());
      </script> © All Rights Reserved</p>
  </div>

</section>


</body>
</html>