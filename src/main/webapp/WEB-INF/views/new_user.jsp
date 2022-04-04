<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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

</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>
	<br>

	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Register your Account</h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="login"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="username"></label>
					<form:input path="name" placeholder="Enter your fullname" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="username"></label>
					<form:input path="userName" placeholder="Enter Account Name" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password"></label>
					<form:password path="password" placeholder="Create your Password" class="form-control" required="true"/>
					
				</div>
				
				<input type="submit" value="Register" class="btn btn-danger"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div><br>


	<%@ include file="footer.jsp"%>

</body>
</html>
