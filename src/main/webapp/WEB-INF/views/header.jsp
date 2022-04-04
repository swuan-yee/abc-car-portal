<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-dark bg-dark flex-row">
  <a class="navbar-brand mr-auto" href="">
            <img src="/ABC_Car_Portal_Final/images/used-car-logo.png" class="img-fluid" alt="abccarlogo">
        </a>
	
				<sec:authorize access="!isAuthenticated()">	
  
    		<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #FFFFFF;" type="submit" role="button" href="new"><i class="fa fa-user"></i> Register</a>
            </li>&nbsp;
        	<li class="form-inline my-2 my-lg-0">
                <a class="btn my-2 my-sm-0" style="background: #FFFFFF;" type="submit" role="button" href="login"><i class="fa fa-sign-in"></i> Login</a>
        	</li>&nbsp;

				</sec:authorize>


				<sec:authorize access="isAuthenticated()">

				<sec:authorize access="hasRole('Users')">
					<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #FFFFFF;" type="submit" role="button" href="car"><i class="fa fa-car"></i> Used Car</a>
            </li>&nbsp;
        	<li class="form-inline my-2 my-lg-0">
                <a class="btn my-2 my-sm-0" style="background: #FFFFFF;" type="submit" role="button" href="newcar"><i class="fa fa-shopping-cart"></i> Sell your Car</a>
        	</li>&nbsp;
				</sec:authorize>
				
				<sec:authorize access="hasRole('Administrator')">
					<li class="form-inline my-2 my-lg-0" >
        		<a class="btn my-2 my-sm-0" style="background: #FFFFFF;" type="submit" role="button" href="cars"><i class="fa fa-car"></i> Car Management</a>
            </li>&nbsp;
        	<li class="form-inline my-2 my-lg-0">
                <a class="btn my-2 my-sm-0" style="background: #FFFFFF;" type="submit" role="button" href="users"><i class="fa fa-user"></i> User Management</a>
        	</li>&nbsp;
					 
				</sec:authorize>
				
					
			    <!-- /logout must be a POST request, as csrf is enabled.
			        This ensures that log out requires a CSRF token and that a malicious user cannot forcibly log out your users.-->
					
					<li class="form-inline my-2 my-lg-0">
					<form action="logout" method="post" style="padding:7px;">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
							<input type="submit" style="background: red"
							name="Logout" value="Logout" class="btn btn-primary"></input>
					</form>
					</li>
				</sec:authorize>
				



			
		</div>
</nav>
