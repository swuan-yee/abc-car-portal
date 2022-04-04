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

	<%@ include file="header.jsp"%><br>


	<!-- First Container -->
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Post Your Car For Sale !</h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<!--
            It is standard practice to have all action & href urls wrapped with c:url tag.
            This tag adds jsessionid to the action/href url, in case cookies are disabled by the user.
       			 -->
				<c:url var="post_url" value="cars"/>			
				<form action="${post_url}" id="myform" method="post">
				
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					
					<div class="form-group">
					<label for="make">Car Make:</label> 
					<input type="text" name="make" id="make" value="" class="form-control" required="true"></input>
					</div>
					
					
					<div class="form-group">
					<label for="model">Car Model:</label> 
					<input type="text" name="model" id="model" value="" class="form-control" required="true"></input> 
					</div>
					
					<div class="form-group">
					<label for="registeration"> registeration:</label> 
					<input type="text" name="registeration" id="registeration" value="" class="form-control" required="true"></input>
					</div>
				
					<div class="form-group">
					<label for="price">Car Price:</label> 
					<input type="text" name="price" id="price" value="" class="form-control" required="true"></input>
					</div>
					
					<input type="submit" name="Add" class="btn btn-danger" value="Post a Car for Sale" />
					<input type="button" class="btn btn-danger" value="Cancel" onclick="cancel()"/>

					<script>
						function cancel() {
							window.location.href = "cars"
						}
					</script>
				</form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div><br>


	<%@ include file="footer.jsp"%>

</body>
</html>
