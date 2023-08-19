<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="com.entity.Student"%>
    
    
    <%
     Student s=(Student) session.getAttribute("stuD");
    
    if(s==null)
    {
    	response.sendRedirect("login.jsp");
    	session.setAttribute("error","plzz login...");
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course</title>
</head>

<style>
 .navbar {
            background-color: rgb(32, 160, 160);
            padding: 18px;
            font-size: 20px;
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
        
        .p-5 {
            padding: 30px;
            color: white;
            background-color: rgba(28, 65, 60, 0.472);
        }
        
        .text-center {
            text-align: center;
        }
        
        .necolus {
            font-size: 30px;
            text-align: center;
            color: blue;
            margin-top: 2%;
        }
        
        .main_div {
            margin-top: 5%;
            margin-left: 2%;
            margin-right: 2%;
            padding: 8px;
            border-radius: 2px;
            margin-bottom: 5%;
        }
        
        .my_button {
            border-style: solid;
            background-color: orange;
            border-width: 1px;
            border-color: orangered;
            border-radius: 50rem;
            height: 30px;
            width: 100px;
            cursor: pointer;
            font-weight: 900;
            font-size: 12px;
        }
        
        .my_button:hover {
            border-style: solid;
            background-color: blue;
            border-width: 1px;
            border-color: orangered;
            border-radius: 50rem;
            height: 30px;
            width: 100px;
            cursor: pointer;
            font-weight: 900;
            font-size: 12px;
            color: white;
        }
        /* .image {
            padding-top: 5%;
            margin-bottom: 15%;
        }
        
        .image1 {
            margin-top: 10%;
            margin-bottom: 15%;
        }
        
        .image2 {
            margin-top: 10%;
            margin-bottom: 15%;
        }*/


</style>
<body>

<nav class="navbar">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="history.jsp">History</a>
        <a href="contact.jsp">Contact us</a>

        <!-- <div class="float-right">
            <a class="btn btn-primary" href="login.html">Login</a>

            <a class="btn btn-warning" href="register.html">Register</a>
        </div>
         -->
    </nav>

    <header class="p-5">
        <h2 class="text-center">Our courses....</h2>
    </header>

    <div style="background-color: bisque;">
        <table style="background-color:rgba(255, 255, 255, 0.496);" border="0" width="100%">
            <tr>
                <td>
                    <div class="main_div">
                        <img src="/img/php.jpg" alt="" style="width: 50%;padding-left: 20%;">
                        <div class="necolus">
                            PHP COURSE
                        </div>
                        <br>
                        <div>
                            <span style="font-size: 20px;margin-left: 35%;">web devloper</span>
                        </div>
                        <br>
                        <br>

                        <div style="margin-left: 35%;">
                            <input class="my_button" type="button" value="view">
                        </div>
                    </div>

                </td>

                <td>
                    <div class="main_div">
                        <img src="/img/css.jpg" alt="" style="width: 50%;padding-left: 20%;">
                        <div class="necolus">
                            CSS COURSE
                        </div>
                        <br>
                        <div style="">
                            <span style="font-size: 20px;margin-left:35%">web devloper</span>
                        </div>
                        <br>
                        <br>

                        <div style="margin-left: 35%;">
                            <input class="my_button" type="button" value="view">
                        </div>
                    </div>

                </td>



                <td>
                    <div class="main_div">
                        <img src="/img/java.jpg" alt="" style="width: 50%;border: 2; padding-left: 20%;">
                        <div class="necolus">
                            JAVA COURSE
                        </div>
                        <div style="">
                            <span style="font-size: 20px;margin-left:35%">web devloper</span>
                        </div>
                        <br>
                        <br>
                        <div style="margin-left: 35%;">
                            <input class="my_button" type="button" value="view">
                        </div>
                    </div>

                </td>
            </tr>

        </table>


        <table style="background-color:rgba(255, 255, 255, 0.496);" border="0" width="100%">
            <tr>
                <td>
                    <div class="main_div">
                        <img src="/img/php.jpg" alt="" style="width: 50%;padding-left: 20%;">
                        <div class="necolus">
                            PHP COURSE
                        </div>
                        <br>
                        <div>
                            <span style="font-size: 20px;margin-left:35%">web devloper</span>
                            <br>
                            <br>
                            <br>
                        </div>
                        <div style="margin-left: 35%;">
                            <input class="my_button" type="button" value="view">
                        </div>
                    </div>

                </td>

                <td>
                    <div class="main_div">
                        <img src="/img/css.jpg" alt="" style="width: 50%;padding-left: 20%;">
                        <div class="necolus">
                            PYTHON COURSE
                        </div>
                        <br>
                        <div style="">
                            <span style="font-size: 20px;margin-left:35%">web devloper</span>
                        </div>
                        <br>
                        <br>
                        <div style="margin-left: 35%;">
                            <input class="my_button" type="button" value="view">
                        </div>
                    </div>

                </td>



                <td>
                    <div class="main_div">
                        <img src="/img/java.jpg" alt="" style="width: 50%;border: 2; padding-left: 20%;">
                        <div class="necolus">
                            DOT NET COURSE
                        </div>
                        <br>
                        <div style="">
                            <span style="font-size: 20px;margin-left:35%">web devloper</span>
                        </div>
                        <br><br>
                        <div style="margin-left: 35%;">
                            <input class="my_button" type="button" value="view">
                        </div>
                    </div>

                </td>
            </tr>

        </table>
    </div>
    <footer class="footer" style="background-color: blueviolet;margin-top: -1%;">
        <p class="text-center text-white">copyright@2022 <a class="text-primary" href="#">Sumit Project</a> </p>
        <input class="subsceibe" type="button" value="Subscribe" name="" id="">
        <a href=""></a>

    </footer>

</body>
</html>