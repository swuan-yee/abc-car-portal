<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Font for footer-->
    <link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@300&display=swap" rel="stylesheet">
    <!--font for carousel-->
    <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">


<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->

<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car_Portal_Final/css/style.css" rel="stylesheet" />
<script src="/ABC_Car_Portal_Final/js/custom.js"></script>

 <style>
       
        /*==== starting css coding for contact us session ======*/
        
        .box {
            background-image: url("/ABC_Car_Portal_Final/images/car_banner.jpg");
            color: white;
            text-align: center;
            z-index: 1;
        }
        
        .text {
            padding: 100px 0;
        }
        
        .box p {
            font-size: 18px;
        }
        
        .red {
            color: orangered;
        }
        
        .redline {
            width: 100px;
            height: 3px;
            background-color: red;
            border: none;
        }
        
        .touch h2 {
            padding-top: 20px;
            text-align: center;
        }
        
        .form-margin {
            margin-top: 40px;
        }
        
        .left {
            text-align: left;
        }
        
        h3 {
            font-variant: bold;
        }
        
        .redline-address {
            border: none;
            height: 3px;
            background-color: orangered;
            width: 140px;
            margin-bottom: 20px;
        }
        
        .address {
            padding-top: 50px;
        }
        
        .address p {
            font-weight: bold;
            color: #676565;
            margin: 3px;
        }
        
        .bottom-gap {
            margin-bottom: 100px;
        }
        /*validation css*/
        
        input.ng-valid {
            background-color: #dff0d8;
        }
        
        input.ng-invalid {
            background-color: #f2dede;
        }
        
        input.ng-pristine {
            background-color: white;
        }
        
        textarea.ng-invalid {
            background-color: #f2dede;
        }
        
        textarea.ng-pristine {
            background-color: white;
        }
        
        textarea.ng-valid {
            background-color: #dff0d8;
        }
        /*===== ending css coding for contact us session ======*/
    </style>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	 <div class="box">

        <div class="text">
            <h1>Contact <span class="red">Us</span></h1>
            <hr class="redline">
            <p>Do you have any questions? We are ready to answer to answer you questions.</p>
        </div>
    </div>

    <div class="touch">
        <h2>Sent feedback here</h2>
        <hr class="redline">
    </div>

    <form action="" method="POST" name="contact-form">
        <div class="container form-margin">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="First Name" ng-model="firstname" name="firstname" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Customer ID" ng-model="company" name="company" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Phone Number" ng-model="phone" name="" required>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Last Name" ng-model="lastname" name="lastname" required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="E-mail" ng-model="email" name="email" required>
                    </div>
                  
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="form-group">
                        <textarea class="form-control" rows="6" placeholder="Message" ng-model="message" name="message" required></textarea>
                    </div>
                    <div class="pager">
                        <button type="submit" class="btn btn-dark">SEND MESSAGE</button>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>

        </div>
    </form>

    <!--address-->

    <div class="container address">
        <div class="row">

            <div class="col-lg-6 col-md-6 col-sm-12">
                <h3>Our Address</h3>
                <div class="redline-address"></div>
                <div class="fa fa-map-marker" style="font-size:20px;">
                    <a>&nbsp;&nbsp; 12 Jalan Pari Burong,</a>
                    <a>488678, Singapore.</a>
                </div><br><br>



                <div class="fa fa-envelope " style="font-size: 20px;">
                    <a><span class="glyphicon glyphicon-envelope "> </span>&nbsp;&nbsp; swuan010719@hotmail.com</a>

                </div><br><br>
                <div class="fa fa-phone " style="font-size: 20px;">
                    <a><span class="glyphicon glyphicon-phone "></span>&nbsp;&nbsp; +95 7997 43 202</a>

                </div>

            </div>

            <div class="col-lg-6 col-md-6 col-sm-12 ">
                <br>
                <!--map-->
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7376539508464!2d103.94613261475403!3d1.3335726990273682!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da3d30307ee497%3A0x8e75e21589ca85e4!2s12%20Jln%20Pari%20Burong%2C%20Singapore%20488678!5e0!3m2!1sen!2ssg!4v1640076095470!5m2!1sen!2ssg" width="400" height="450" style="border:3;" allowfullscreen="" loading="lazy"></iframe>

            </div>


        </div>
    </div>

    <div class="bottom-gap "></div>


	<%@ include file="footer.jsp"%>

</body>
</html>
