<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">



<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/ionicons.min.css" var="myCss" />
<spring:url value="/css/style.css" var="myCss" />

<spring:url value="/js/jquery.min.js" var="myJS" />
<spring:url value="/js/popper.js" var="myJS" />
<spring:url value="/js/bootstrap.min.js" var="myJS" />
<spring:url value="/js/main.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->

<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car_Portal_Final/css/style.css" rel="stylesheet" />
<script src="/ABC_Car_Portal_Final/js/custom.js"></script>

<style>
 <style>
        @media (min-width: 768px) {
            .omb_row-sm-offset-3 div:first-child[class*="col-"] {
                margin-left: 25%;
            }
        }
        
        .omb_login .omb_authTitle {
            text-align: center;
            line-height: 300%;
        }
        
        .omb_login .omb_socialButtons a {
            color: white;
            opacity: 0.9;
        }
        
        .omb_login .omb_socialButtons a:hover {
            color: white;
            opacity: 1;
        }
        
        .omb_login .omb_socialButtons .omb_btn-facebook {
            background: #3b5998;
        }
        
        .omb_login .omb_socialButtons .omb_btn-twitter {
            background: #00aced;
        }
        
        .omb_login .omb_loginOr {
            position: relative;
            font-size: 1.5em;
            color: #aaa;
            margin-top: 1em;
            margin-bottom: 1em;
            padding-top: 0.5em;
            padding-bottom: 0.5em;
        }
        
        .omb_login .omb_loginOr .omb_hrOr {
            background-color: #cdcdcd;
            height: 1px;
            margin-top: 0px !important;
            margin-bottom: 0px !important;
        }
        
        .omb_login .omb_loginOr .omb_spanOr {
            display: block;
            position: absolute;
            left: 50%;
            top: -0.6em;
            margin-left: -1.5em;
            background-color: white;
            width: 3em;
            text-align: center;
        }
        
        .omb_login .omb_loginForm .input-group.i {
            width: 2em;
        }
        
        .omb_login .omb_loginForm .help-block {
            color: red;
        }
        
        @media (min-width: 768px) {
            .omb_login .omb_forgotPwd {
                text-align: right;
                margin-top: 10px;
            }
        }
    </style>
</style>

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%><br>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Login Here</h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${error_string != null}">

					<div class="alert alert-danger">
						${error_string}
					</div>

				</c:if>

				<c:url var="post_url" value="/login" />
				<form action="${post_url}" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="form-group">

						<label for="username"></label> <input type="text"
							name="username" placeholder="Enter your Account Name" id="username" value="" class="form-control"></input>
					</div>

					<div class="form-group">
						<label for="password"></label> <input type="password"
							name="password" placeholder="Enter your password" id="password" value="" class="form-control"></input>
					</div>

					<input type="submit" name="Login" value="Login"
						class="btn btn-danger"></input>
				</form>
			</div>

			<div class="col-md-4"></div>

		</div>

	</div><br>


	<%@ include file="footer.jsp"%>
	
</body>
</html>
