<!-- Doctorlogin form html page  -->  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css">
	
		<title>Login</title>
	</head>
	<body>
	<!------------------starts first section----------------------->
		<header class="bg-color py-2">
			<h5 class="container">Gemini consultency</h5>
		</header>
		<section>
			<h4 class="py-4 text-dark text-center text-h">"Whenever a doctor cannot do good, he must be kept from doing harm"</h4>
			<div class="container-fluid bg-style media1">
			
				<div class="row">
					
					<div class="col-md-12 log-style">
						<form action="logcheck1.php" name="login" method="post" class="m-auto py-3 jumbotron text-light p-3 form-style rounded">

							
							<h3 div class="text-center text-dark">Sign In</h3>
								<input type="text" class="form-control inputcomponent mt-md-3 space" name='name' required="required" placeholder="Username">
							
								<input type="password" class="form-control inputcomponent mt-md-3 space" name='password' required="required" placeholder="Password">
							
							<button type="submit" name="login"class="btn-primary mt-md-3 px-5 rounded shadow">Sign IN</button>
								
								<button type="button" class="btn btn-default loginbutton m-t-5">
								<span class="google-button__icon">	
								</span>
								<span class="google-button__text">Sign in with Google</span>
								</button>

								<div class='text-center m-t-10'>
									<a href="#">Forgot Password?</a><h6><a href="doctorreg.php">New Registration</a></h6>
								</div>

						</form>
					</div>
				</div>
			</div>
		</section>
	<footer class="bg-color py-2 foot text-center">
			<h5 class="text-center">Powered by Gemini Consultancy </h5>
		</footer>	
	<!-----------------------------ends first section---------------->
		<script src="js/jquery.min.js"></script>
		<script src="js/validation.js"></script>
		<Script src="js/jquery.validate.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/popper.min.js"></script>
		
		
		
</body>
</html>