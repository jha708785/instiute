<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSS</title>
    <style type="text/css">
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

input,
select {
    width: 250px;
    height: 25px;
}

.m-3 {
    margin: 20px;
}
    </style>
</head>
<body>

<body>
    <nav class="navbar">
        <a href="index.html">Home</a>
        <a href="about.html">About</a>
        <a href="history.html">History</a>
        <a href="contact.html">Contact us</a>
        <a target="_blank" href="https://en.wikipedia.org/wiki/Contact">More</a>
       
    </nav>

    <header class="p-5">
        <h2 class="text-center">CSS</h2>
    </header>

    <div class="row">
        <div class="col-2">
            <div>
                <h2 class="text-center">1. Whata is css</h2>
                <pre>
                    a. CSS stands for Cascading Style Sheets


                    b.  CSS describes how HTML elements are to be displayed
                     on screen, paper, or in other media


                    c. CSS saves a lot of work. It can control the layout of
                     multiple web pages all at once


                    d. External stylesheets are stored in CSS files</pre>
            </div>


        </div>
        <div class="col-2">
            <div>
                <h2 class="text-center">2. feature of css</h2>
                <pre> 
                        a. CSS stands for Cascading Style Sheets

                    
                        b.  CSS describes how HTML elements are to be displayed
                         on screen, paper, or in other media


                        c. CSS saves a lot of work. It can control the layout of
                          multiple web pages all at once


                         d. External stylesheets are stored in CSS files</pre>
            </div>
        </div>
    </div>

    <div>
        <h2> &nbsp; &nbsp; 2.Why css</h2>
        <p class="p-4 text-justify "> There are the two different views of how programs differ from projects. In one view, projects deliver outputs, discrete parcels or "chunks" of change;[4] programs create outcomes.[5] In this view, a project might deliver a new factory, hospital
            or IT system. By combining these projects with other deliverables and changes, their programs might deliver increased income from a new product, shorter waiting lists at the hospital or reduced operating costs due to improved technology. The
            other view[6] is that a program is nothing more than either a large project or a set (or portfolio) of projects. In this second view, the point of having a program is to exploit economies of scale and to reduce coordination costs and risks.
            The project manager's job is to ensure that their project succeeds. The program manager, on the other hand, is concerned with the aggregate outcome(s) or end-state result(s) of the collection of projects in a particular program. For example,
            in a financial institution a program may include one project that is designed to take advantage of a rising market and another that is designed to protect against the downside of a falling market. The former seeks to leverage the potential
            upside; the latter to limit the possible downside. Consider a simple analogy: Fix-A-Flat®. This highly pressurized aerosol product injects a leak sealant into a punctured tire to stop the outflow of air (project A) and concurrently re-inflates
            the tire (project B), resulting together in the outcome that is a tire that is once again functional (the program comprised projects A and B).[7]</p>
    </div>
    <footer class="footer">
        <p class="text-center text-white ">copyright@2022 <a class="text-primary" href="#">Blog Project</a> </p>
    </footer>

</body>
</html>