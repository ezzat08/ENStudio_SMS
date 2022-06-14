<?php
session_start();

if ( $_SESSION[ "sidx" ] == "" || $_SESSION[ "sidx" ] == NULL ) {
	header( 'Location:studentlogin' );
}

$userid = $_SESSION[ "sidx" ];
$userfname = $_SESSION[ "fname" ];
$userlname = $_SESSION[ "lname" ];
?>
<?php include('studenthead.php'); ?>
<?php include('ssidemenu.php'); ?>



<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8 text-center">

			<h3> Welcome <a href="welcomestudent"><?php echo "<span style='color:red'>".$userfname." ".$userlname."</span>";?></a></h3>
			<?php
			include( 'database.php' );
			
			//selecting data from assessment table
			$sql = "select * from  studenttable3 where Eid='$userid'";
			$result = mysqli_query( $connect, $sql );
			//loop below will print details of assessment
			while ( $row = mysqli_fetch_array( $result ) ) {
				?>
			<fieldset>
				<legend>My Details</legend>
				<form action="" method="POST" name="update">
					<table class="table table-hover">

						<tr>
							<td><strong>Enrolment number : </strong>
							</td>
							<td>
								<?php echo $row['Eno']; ?>
							</td>

						</tr>
						<tr>
							<td><strong>First Name :</strong> </td>
							<td>
								<?php echo $row['FName']; ?>
							</td>
						</tr>
						<tr>
							<td><strong>Last Name :</strong> </td>
							<td>
								<?php echo $row['LName']; ?>
							</td>
						</tr>
						<tr>
							<td><strong>Father Name :</strong> </td>
							<td>
								<?PHP echo $row['FaName'];?>
							</td>
						</tr>
						<tr>
							<td><strong>Address : </strong>
							</td>
							<td>
								<?PHP echo $row['Addrs'];?> </td>
						</tr>
						<tr>
							<td><strong>Gender :</strong>
							</td>
							<td>
								<?PHP echo $row['Gender'];?>
							</td>
						</tr>
						<tr>
							<td><strong>Course : </strong>
							</td>
							<td>
								<?PHP echo $row['Course'];?>
							</td>
						</tr>
						<tr>
							<td><strong>D.O.B. : </strong> </td>
							<td>
								<?PHP echo $row['DOB'];?>
							</td>
						</tr>
						<tr>
							<td><strong>Contact :</strong>
							</td>
							<td>
								<?PHP echo $row['PhNo'];?> </td>
						</tr>
						<tr>
							<td><strong>Email : </strong>
							</td>
							<td>
								<?PHP echo $row['Eid'];?>
							</td>
						</tr>
						
						<tr>
							
							
						</tr>
					</table>
				</form>
			</fieldset>
			<?php
			}
			?>
		</div>

		<div class="col-md-2"></div>
	</div>
	<?php include('allfoot.php'); ?>