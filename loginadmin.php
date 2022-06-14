<?php
session_start();
?>
<?php

$username = $_POST[ "aid" ];
$pass = $_POST[ "apass" ];

include( "database.php" );
//searching login id and password entered in $x & $y
$sql = "select * from admin where Aid='" . $username . "' and Apass='" . $pass . "'";

$result = mysqli_query( $connect, $sql );

if ( $result->num_rows > 0 ) {
	if ( $row = $result->fetch_assoc() ) {
		$_SESSION[ "umail" ] = $row[ "Aid" ];
		$_SESSION[ "aname" ] = $row[ "AName" ];

	}
	//redirecting to welcome admin page
	header( 'Location:welcomeadmin.php' );
} else {
	//error message if SQL query fails
	echo "<h3><span style='color:red; '>Invalid Admin ID & Password. Page Will redirect to Login Page after 3 seconds </span></h3>";
	header( "refresh:3;url=Adminlogin.php" );

}
$connect->close();
?>