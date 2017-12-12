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
						<div class="panel-title">Sign Up</div>
					</div>

					<div class="panel-body">
						<form method="POST" class="form-horizontal" role="form" action="assets/function/proses.php?aksi=tambah">
							
							<div class="form-group">
								<label for="username" class="col-md-4 control-label">Username</label>
								<div class="col-md-8">
								<input type="text" name="username" class="form-control" placeholder="Username" required>
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-md-4 control-label">Password</label>
								<div class="col-md-8">
								<input type="password" name="password" class="form-control" placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<label for="Re password" class="col-md-4 control-label">Re Password</label>
								<div class="col-md-8">
								<input type="password" name="repassword" class="form-control" placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<label for="username" class="col-md-4 control-label">Email</label>
								<div class="col-md-8">
								<input type="text" name="email" class="form-control" placeholder="Email">
								</div>
							</div>
							<div class="form-group">
								<label for="user" class="col-md-4 control-label">User</label>
								<div class="col-md-8">
								<input type="text" name="user" class="form-control" value="Dokter" disabled>
								</div>
							</div>
							<div class="form-group" style="margin-top: 10px">
								<div class="col-sm-12">
									<input type="reset" value="Clear" class="btn btn-info">
									<input type="submit" value="Register" class="btn btn-success">
								</div>
							</div>
							

							<div class="form-group">
								<div class="col-sm-12">
									<div style="border-top: 1px solid #888;padding-top: 15px;font-size: 85%">
										Have an account ?<a href="login.php"> Sign In Here</a>
									</div>
								</div>
						</form>
					</div>
				</div>
			</div>
	</body>
</html>