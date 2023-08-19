<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

 <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"
	integrity="sha384-xeJqLiuOvjUBq3iGOjvSQSIlwrpqjSHXpduPd6rQpuiM3f5/ijby8pCsnbu5S81n"
	crossorigin="anonymous"> 


<style type="text/css">
.new-regester
{
  text-decoration:none;
  
}

.bg-custom
{
	background: #8e24aa;
}

.navbar .nav-item .nav-link
{
	font-size:20px;
	color:white;
	
}

.navbar-custom .nav-item:hover .nav-link

{
   background:white;
   color:black;
   border-radius:10px;	
}
.s
{
	margin-right:5px;
}
.text
{
	text-align:center;
	color:white;
	font-size:15px;
}
.div-color
{
	background-image:linear-gradient(to right top, #ed6700, #ec9000, #d9d828, #c8f95a);
	height:635px;
}
</style>


<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>

</head>
<body>



 <div class="container-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5">
					<div class="card-header text-center bg-custom text-white">
						<i class="fa fa-user-circle-o fa-2x"></i>
						<h4>Login Here</h4>
					</div>
					
					<%
					
					String regMsg=(String)session.getAttribute("login-field");
					if(regMsg!=null)
					{%>
						 <div class="alert alert-danger"><%=regMsg %>  </div>
						 <%
						 session.removeAttribute("login-field");
						 %>
					<%}
					
					%> 
				<%String without=(String)session.getAttribute("error"); 
				  if(without!=null)
				  {%>
					   <div class="alert alert-danger"><%=without %>  </div>
					   
					   <%
					    session.removeAttribute("error");
					   %>
				 <% }
				%>
				
				<%
				  String logout=(String)session.getAttribute("logout");
				if(logout!=null)
				{%>
					<div class="alert alert-success" role="alert"><%=logout %>  </div>
			<%
			session.removeAttribute("logout");
			
			}
				%>
					
					<div class="card-body">
						<form action="loginservlet" method="post">
						
					
							<div class="mb-3 mt-3">
								<label for="email" class="form-label"> Enter Email:</label> <input
									type="email" class="form-control" 
									 name="uemail">
							</div>
							<div class="mb-3">
								<label for="pwd" class="form-label">Enter Password:</label> <input
									type="password" class="form-control" 
									 name="upassword">
							</div>
							
							<button  type="submit" class="btn btn-primary btn-block badge-pill">Login</button>
							<br>
						<p>Regester now for new user <a class="new-regester" href="regester.jsp">Regester</a></p>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	
   

</body>
</html>