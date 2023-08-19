<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.entity.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<title>ducat project</title>

<style type="text/css">
/* FEATURES */

/*#features {
    width: 100%;
    padding: 64px 0;
}

#features .top {
    text-align: center;
    margin-bottom: 28px;
}

#features .top h2 {
    font-family: var(--raleway);
    font-size: 32px;
    font-weight: 600;
    margin-bottom: 16px;
}

#features .top p {
    max-width: 500px;
    margin: 0 auto;
    color: #787878;
}

#features .feature-list {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    grid-gap: 36px;
}

#features .feature-item .bx {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 64px;
    height: 64px;
    border-radius: 6px;
    background: var(--light-secondary);
    color: var(--secondary);
    font-size: 28px;
    margin-bottom: 24px;
}

#features .feature-item h4 {
    font-size: 20px;
    font-weight: 600;
    font-family: var(--raleway);
    margin-bottom: 12px;
}

#features .feature-item p {
    color: #787878;
}*/


/* FEATURES */

.backg {
	margin-top: 2%;
	width: 100%;
	height: 100%;
}

.event {
	text-align: center;
	margin-top: 3%;
	font-size: 25px;
}

.img {
	width: 40%;
	align-items: center;
	margin-top: -2%;
	height: 10%;
}

.img2 {
	width: 100%;
	height: 400px;
}

.img2 {
	margin-top: 5%;
}

.img_2 {
	width: 100%;
	height: 500px;
}

.add {
	text-align: center;
	margin-top: 2%;
	border: 2px solid red;
	width: 70%;
	padding-left: 5%;
	margin-left: 13%;
	border-radius: 16px;
	background-color: aquamarine;
}

.cource {
	text-align: center;
	font-size: 50px;
}

.stu {
	margin-top: 3%;
}

hr {
	border: 2px solid blue;
}

.subsceibe {
	width: 15%;
	height: 35px;
	color: white;
	cursor: alias;
	background-color: red;
	margin-left: 20%;
}

* {
	font-family: cursive;
}

.navbar {
	background-color: rgb(32, 160, 160);
	padding: 15px;
	font-size: 17px;
}

a {
	color: white;
	margin-left: 10px;
	text-decoration: none;
}

.float-right {
	float: right;
}

.btn {
	padding: 3px 10px 5px 10px;
	border-radius: 5%;
}

.btn-primary {
	background-color: rgb(45, 97, 218);
}

.btn-warning {
	background-color: rgb(246, 246, 16);
	color: black;
}

body {
	margin: 0;
}

.background {
	margin-top: 1px;
}

.row {
	display: flex;
	padding-left: 15px;
	padding-right: 15px;
}

.col-2 {
	width: 50%;
}

.col-3 {
	width: 33.33%;
}

.col-4 {
	width: 25%;
}

.col-5 {
	width: 33.55%;
}

.mt-10px {
	margin-top: 10px;
}

.card {
	border: 1px solid rgb(202, 198, 198);
	padding: 10px;
	margin: 10px;
}

.text-center {
	text-align: center;
}

.img-responsive {
	width: 100%;
}

img {
	width: 100%;
}

.card img {
	height: 100px;
	width: 100px;
	margin: auto;
}

.card {
	text-align: center;
}

.card a {
	color: cadetblue;
}

.card p {
	color: rgb(107, 106, 106);
	text-align: justify;
}

.text-primary {
	color: rgb(46, 46, 190);
}

.text-white {
	color: white;
}

.text-justify {
	text-align: justify;
}

.footer {
	background-color: rgb(1, 2, 2);
	padding: 5px;
}

.p-4 {
	padding: 25px;
}

.p-5 {
	padding: 30px;
	color: white;
	background-color: rgba(28, 65, 60, 0.472);
}

.p-1 {
	padding: 10px
}

.border {
	border: 2px solid gray;
	margin: 5px;
	background-color: aliceblue;
}

input, select {
	width: 250px;
	height: 25px;
}

.m-3 {
	margin: 20px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<!-- start -->
	<nav class="navbar">
		<a href="index.jsp">Home</a> <a href="about.jsp">About</a> <a
			href="history.jsp">History</a> <a href="contact.jsp">Contact us</a> <a
			target="_blank" href="course.jsp">Course</a>

		<%
		//Student s1=new Student();
		Student s = (Student) session.getAttribute("stuD");
		
		if (s != null) {
		%>

		<div class="float-right">
			<a class="btn btn-primary" href=""><%=s.getEmail() %></a> <a
				class="btn btn-warning" href="LogoutServlet">Logout</a>
		</div>

		<%
		} else {
		%>

		<div class="float-right">
			<a class="btn btn-primary" href="login.jsp">Login</a> <a
				class="btn btn-warning" href="regester.jsp">Register</a>
		</div>
		<%
		}
		%>



	</nav>
	<div class="background">
		<img width="100%" height="500px" src="imag/hacker-wide-2560x1440.jpg"
			alt="">
	</div>

	<h1 class="cource">COURCES OFFERS</h1>
	<div class="row">

		<div class="card col-4 ">
			<img src="imag/css.jpg" alt="">
			<div>
				<h2 class="text-center">CSS</h2>
				<p>
					Cascading Style Sheets (CSS) is a style sheet language used for
					describing the presentation of a document written in a markup
					language such as HTML.. <a href="php.jsp">more</a>
				</p>

			</div>
		</div>
		<div class="card col-4 ">
			<img src="imag/css.jpg" alt="">
			<div>
				<h2 class="text-center">PHP</h2>

				<p>
					PHP is a general-purpose scripting language geared towards web
					development.[7] It was originally created by Danish-Canadian
					programmer Rasmus Lerdorf in 1994.. <a href="php.jsp">more</a>
				</p>

			</div>
		</div>
		<div class="card col-4 ">
			<img src="imag/html.jpg" alt="">
			<div>
				<h2 class="text-center">HTML</h2>
				<p>
					The HyperText Markup Language, or HTML is the standard markup
					language for documents designed to be displayed in a web browser..
					<a href="java.jsp">more</a>
				</p>

			</div>
		</div>
		<div class="card col-4 ">
			<img class="img-responsive" src="imag/java.jpg" alt="">
			<div>
				<h2 class="text-center">JAVA</h2>
				<p>
					Java (Indonesian: Jawa, Indonesian pronunciation: [ˈdʒawa];
					Javanese: ꦗꦮ; Sundanese: ᮏᮝ) is one of the Greater Sunda Islands in
					Indonesia. It is bordered by the Indian Ocean.. <a href="#">more</a>
				</p>

			</div>
		</div>

	</div>

	<div class="backg">
		<img src="imag/Screenshot 2022-08-17 134603.png" alt="">
	</div>
	<br>
	<br>

	<div class="event">
		<h1 class="head1">EVENTS AT CAMPUS</h1>

		<img class="img" src="imag/l.png" alt="">

		<p class="p1">Lorem ipsum dolor sit amet consectetur adipisicing
			elit. Sit in minus quam, cum veniam commodi, accusantium aliquid
			molestias doloribus dolores id quisquam incidunt autem eligendi
			libero officia ipsa fuga voluptas?</p>
	</div>



	<div class="row">

		<div class="card col-5">
			<img src="imag/campus.jpg" alt="">
			<div>
				<h2 class="text-center">Workshop at Ducat</h2>
				<p>
					Cascading Style Sheets (CSS) is a style sheet language used for
					describing the presentation of a document written in a markup
					language such as HTML.. <a href="https://www.ducatindia.com/">more</a>
				</p>
				<button class="btn btn-primary">read more</button>

			</div>
		</div>

		<div class="card col-5 ">
			<img src="imag/campus.jpg" alt="">
			<div>
				<h2 class="text-center">Workshop at Colleges</h2>
				<p>
					Cascading Style Sheets (CSS) is a style sheet language used for
					describing the presentation of a document written in a markup
					language such as HTML.. <a href="css.html">more</a>
				</p>
				<button class="btn btn-primary ">read more</button>
			</div>
		</div>


		<div class="card col-5 ">
			<img src="imag/campus.jpg" alt="">
			<div>
				<h2 class="text-center">Our Placement Cell</h2>
				<p>
					Cascading Style Sheets (CSS) is a style sheet language used for
					describing the presentation of a document written in a markup
					language such as HTML.. <a href="css.html">more</a>
				</p>
				<button class="btn btn-primary">read more</button>
			</div>
		</div>
	</div>
	<div class="img2">
		<img width="100%" class="img_2"
			src="imag/Screenshot 2022-08-17 134741.png" alt=""> <img
			width="100%" src="imag/digit.png" alt="">
	</div>
	<br>
	<br>
	<br>
	<br>
	
	

 <!-- FEATURES -->
 <!-- <div style="margin-top:5px">
                 <h1>Our Features</h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugiat, nemo.</p>
 
    <section id="features" style="background-color: antiquewhite;">
        <div class="container">
            <div class="top">
            </div>
            <div class="feature-list">
                <div class="feature-item">
                    <i class='bx bx-video'></i>
                    <h4>HD Video Course</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea earum iste, distinctio debitis, aspernatur autem. Debitis.</p>
                </div>
                <div class="feature-item">
                    <i class='bx bx-award'></i>
                    <h4>Experience Teacher</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea earum iste, distinctio debitis, aspernatur autem. Debitis.</p>
                </div>
                <div class="feature-item">
                    <i class='bx bxs-edit-alt'></i>
                    <h4>Exam Test</h4>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea earum iste, distinctio debitis, aspernatur autem. Debitis.</p>
                </div>
            </div>
        </div>
    </section>
    
    </div> -->
    <!-- FEATURES -->



	<div style="margin-top: 18%;">

		<h1 class="cource">STUDENT SAY ABOUT ME</h1>
		<hr>
		<br>
		<br> <img src="imag/student.png" alt="">
		<hr>

	</div>


	<div style="margin-top: 10%;">
		<img width="100%" src="imag/t.png" alt="">
	</div>


	<div class="add">
		<h1>DUCAT: 70-70-90-50-90</h1>
		<h2>SECTOR 16,NOIDA - SECTOR 63,NOIDA - GHAZIABAD - SOUTH EX. -
			PITAMPURA - GURUGRAM</h2>
	</div>
	<br>
	<br>



	<footer class="footer">
		<p class="text-center text-white">
			copyright@2022 <a class="text-primary" href="#">Sumit Project</a>
		</p>
		<input class="subsceibe" type="button" value="Subscribe" name="" id="">
		<a href=""></a>

	</footer>


</body>
</html>