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
    



<!--  Access the Static Resources without using spring URL -->
<link href="/ABC_Car_Portal_Final/css/style.css" rel="stylesheet" />


</head>

<body>

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<%@ include file="header.jsp"%><br>


	

	<!-- First Container -->
	<div class="container-fluid bg-1">
	
		
		<h3 class="margin text-center">Detail Car Information !</h3><br>
		
		<div class="row">
			<div class="col-md-8">

				<form:form class="form-horizontal">

					<div class="form-group">
						<label for="id" class="control-label col-sm-4"><b>Car ID:</b></label>
						<div class="col-sm-8">${car.id}</div>
					</div>


					<div class="form-group">
						<label for="make" class="control-label col-sm-4"><b>Car Make:</b>
						</label>
						<div class="col-sm-8">${car.make}</div>
					</div>

					<div class="form-group">
						<label for="model" class="control-label col-sm-4"><b>Car model:</b></label>
						<div class="col-sm-8">${car.model}</div>
					</div>

					<div class="form-group">
						<label for="reg" class="control-label col-sm-4"><b>Reg No:</b></label>
						<div class="col-sm-8">${car.registeration}</div>
					</div>

					<div class="form-group">
						<label for="price" class="control-label col-sm-4"><b>Prices:</b></label>
						<div class="col-sm-8">${car.price}</div>
					</div>

					<hr />

					<div class="form-group">
						<label for="price" class="control-label col-sm-4"> <img
							src="/ABC_Car_Portal_Final/images/car.jpg" width="60px" alt="..."></label>
						<div class="col-sm-8" style="padding: 20px;">

							<form action="car_detail?id=${car.id}" method="post">
								<input type="hidden" name="id" value="${car.id}" /> <input
									type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="number"
									placeholder="Enter Bid Price" name="bitprice" />

								<div class="form-group" style="padding: 20px;">
									<input type="submit" value="Bit Car" class="btn btn-primary">
									<a href="cars" class="btn btn-danger">Go Back</a>
								</div>

							</form>
						</div>

					</div>

					<script>
						function goBack() {
							window.history.back();
						}
					</script>

				</form:form>


			</div>

			<div class="col-md-4 bg-3">
				<h4> Current Bidding Price!</h4><br/>
			<c:forEach var="car_bidding" items="${bidinfo}">
				
				<div class="card mb-3 card bg-info" style="padding:10px;">
				
					<div class="row" >
						<div class="col-md-4">
							<img class="card-img-top"
							src="/ABC_Car_Portal_Final/images/avator.gif" width="30px" class="rounded-circle"
							class="mr-3" alt="...">
							<p>${car_bidding.bidderName}</p>
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<p class="card-head"><small class="text-muted">${car_bidding.bid_date_time}</small></p>
								<p class="card-text">Bidded Price: ${car_bidding.bidderPrice}</p>
						
							</div>
						</div>
					</div>
				</div>
				
				<hr/>
			</c:forEach>

			</div>


		</div>




	</div>




	<%@ include file="footer.jsp"%>

</body>
</html>
