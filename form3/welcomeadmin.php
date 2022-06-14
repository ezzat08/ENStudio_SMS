<?php
session_start();

if ( $_SESSION[ "umail" ] == "" || $_SESSION[ "umail" ] == NULL ) {
	header( 'Location:AdminLogin.php' );
}
$userid = $_SESSION[ "umail" ];
?>
<!DOCTYPE  HTML>
<?php include('adminhead.php'); ?>
<?php include('sidemenu.php'); ?>
<link href="tablestyle.css" rel="stylesheet">

<div class="container">
	<div class="row">
		<div class="col-md-12 text-center">
			<h3> Welcome Faculty : <a href="welcomeadmin.php"><span style="color:#FF0004"> <?php echo $userid; ?></span></a></h3>
			<?php
			include( 'database.php' );
			
			//selecting data from faculty table
			$sql = "select * from  admin where Aid='$userid'";
			$result = mysqli_query( $connect, $sql );
			//loop below will print details of faculty
			while ( $row = mysqli_fetch_array( $result ) ) {
				?>
			<fieldset>
				<legend>My Details</legend>
				<form action="" method="POST" name="update">
					<table class="table table-hover">

						<tr>
							<td><strong>ID : </strong>
							</td>
							<td>
								<?php echo $row['Aid']; ?>
							</td>

						</tr>
						<tr>
							<td><strong>Name :</strong> </td>
							<td>
								<?php echo $row['AName']; ?>
							</td>
						</tr>
						</tr>
						<tr>
							<td><strong>Address : </strong>
							</td>
							<td>
								<?PHP echo $row['Addrs'];?> </td>
						</tr>
						<tr>
							<td><strong>City : </strong>
							</td>
							<td>
								<?PHP echo $row['City'];?>
							</td>
						</tr>
						<tr>
							<td><strong>Phone Number :</strong>
							</td>
							<td>
								<?PHP echo $row['PhNo'];?> </td>
						</tr>
						
						
					</table>
				</form>
			</fieldset>
			<?php
			}
			?>
		</div>
	</div>
	<?php include('allfoot.php'); ?>