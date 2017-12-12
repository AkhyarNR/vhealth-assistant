<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
		<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
		<title>Virtual Health Assistant</title>
	</head>
	<body>
		<div class="container-fluid">
			<div class="col-md-4 col-md-offset-4" style="margin-top: 50px">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Sign In</div>
						<div style="float: right;font-size: 80%;position: relative;top: -10px;"><a href="#">Forgot Password?</a></div>
					</div>

					<div class="panel-body">
						<form method="POST" class="form-horizontal" role="form" action="#">
							<div style="margin-bottom: 25px;margin-top: 15px" class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								<input type="text" name="username" class="form-control" placeholder="Username">
							</div>
							<div style="margin-bottom: 25px" class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
								<input type="password" name="password" class="form-control" placeholder="Password">
							</div>

							<div class="input-group">
								<div class="checkbox">
									<label>
										<input type="checkbox" name="remember" value="1">Remember me
									</label>
								</div>
							</div>

							<div class="form-group" style="margin-top: 10px">
								<div class="col-sm-12">
									<a href="#" class="btn btn-success">Login</a>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-12">
									<div style="border-top: 1px solid #888;padding-top: 15px;font-size: 85%">
										Don't have an account ?<a href="register.php"> Sign Up Here</a>
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
	</body>
</html>