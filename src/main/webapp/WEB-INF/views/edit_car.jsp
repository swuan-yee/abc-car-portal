<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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



<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car_Portal_Final/css/style.css" rel="stylesheet" />


</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Update Car Info !</h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


						<!--
            It is standard practice to have all action & href urls wrapped with c:url tag.
            This tag adds jsessionid to the action/href url, in case cookies are disabled by the user.
       			 -->
				<c:url var="post_url" value="cars"/>
				<form:form action="${post_url}" method="post" modelAttribute="car" class="form-horizontal">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					
				
					
					<div class="form-group">
						<label for="id" class ="control-label col-sm-4"><b>Car ID:</b> <div>${car.id}<form:hidden path="id" class="form-control"/></div></label> 	
					</div>
					
					
					<div class="form-group">
						<label for="make" class ="control-label col-sm-4"><b>Car Make:</b></label> 
						<div class="col-sm-8"><form:input path="make" class="form-control"/></div>
					</div>
					
				 <div class="form-group">
						<label for="model" class ="control-label col-sm-4"><b>Car Model:</b></label> 
						<div class="col-sm-8"><form:input path="model" class="form-control"/></div>
				</div>
					
				<div class="form-group">
						<label for="reg" class ="control-label col-sm-4"><b>Reg No:</b></label> 
						<div class="col-sm-8"><form:input path="registeration" class="form-control"/></div>
				</div>

				<div class="form-group">
						<label for="price" class ="control-label col-sm-4"><b>Price:</b></label> 
						<div class="col-sm-8"><form:input path="price" class="form-control"/></div>
				</div>
				
				<input type="submit"  class="btn btn-danger" value="Update Car Info">

		</form:form>
	</div>


			<div class="col-md-4"></div>

		</div>

	</div>
	<br>

	<%@ include file="footer.jsp"%>

</body>
</html>
	