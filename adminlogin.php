<nav>
<?php include('allhead.php'); ?>
<?php include('allhead.php'); ?>
</nav>
<html>
<head>

<link rel="stylesheet" type="text/css" href="style.css?<?php echo time(); ?>">
</head>
<body>

<div class="form-wrapper">
  <fieldset>
				<legend>
					<h3 style="padding-top: 25px;"><span class="glyphicon glyphicon-lock" style="color:#000000"></span>&nbsp;Admin Login</h3>
				</legend>
				<!-- Admin login form -->
				<form name="adminlogin" action="loginadmin.php" method="POST">
					<div class="control-group form-group">
						<div class="controls">
							<label style="font-size: 15px;">Username:</label>
							<input type="text" class="form-control" name="aid">
							<p class="help-block"></p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label style="font-size: 15px;">Passsword:</label>
							<input type="password" class="form-control" name="apass">
							<p class="help-block"></p>
						</div>
					</div>
					<center>
						<button type="submit" name="login" class="btn btn-success" style="border-radius:0%">Login</button>
						<button type="reset" class="btn btn-danger" style="border-radius:0%">Reset</button>
					</center>
			</fieldset>
			</form>
  
 
  <div class="reminder">
    
  </div>
  
</div>

</body>
</html>
	<?php include('allfoot.php'); ?>
	<?php include('allfoot.php'); ?>