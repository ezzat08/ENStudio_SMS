  <?php


if ( $_SESSION[ "sidx" ] == "" || $_SESSION[ "sidx" ] == NULL ) {
  header( 'Location:studentlogin' );
}

$userid = $_SESSION[ "sidx" ];
$userfname = $_SESSION[ "fname" ];
$sEno = $_SESSION[ "seno" ];
$userlname = $_SESSION[ "lname" ];
?>
<!DOCTYPE html>
<html>
<head>
	<link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<meta charset="utf-8">
	<title></title>
	<link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<style>body {
  font-family: "Lato", sans-serif;
}

body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 25000;
  top: 0;
  left: 0;
  background-color: #14DFEE;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}</style>
</head>
<body>
	<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="mydetailsstudent" style="color:#000">Home</a>
  <a href="takeassessment.php?seno=<?php echo $sEno; ?>" style="color:#000"><i class="fa fa-pencil-square"></i> Take Quiz</a>

      <a href="viewresult.php?seno=<?php echo $sEno;  ?>" style="color:#000"> <i class="fa fa-file"></i> View Results</a>

      <a href="askquery.php?eid=<?php echo $userid;  ?>" style="color:#000"> <i class="fa fa-question"></i> Ask Query</a>

      <a href="viewquery.php?eid=<?php echo $userid;  ?>" style="color:#000"></i> My Query </a>
      
      <a href="viewvideos.php?eid=<?php echo $userid;  ?>" style="color:#000"> <i class="fa fa-video-camera"></i> Videos (E-Learn)</a>
      
      <a href="index.php" style="color:#000">Logout</a>
</div>

<div id="main">
  <h2></h2>
  <p></p>
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</div>


<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>

</body>
</html>