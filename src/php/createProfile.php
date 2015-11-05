<?php
	require("conf.php");
	$trickID = test_input($_POST['trickID']);
	$name = test_input($_POST['name']);
	$email = test_input($_POST['email']);
	$phone = test_input($_POST['phone']);
	$gender = test_input($_POST['gender']);
	$city = test_input($_POST['city']);
	$address = test_input($_POST['address']);
	//$checkbox = test_input($_POST['checkbox']);
	


	if($name !="" || $email !=""){
		$sql="UPDATE recipes SET name='$name', email='$email', phone_number='$phone', gender='$gender', city='$city', address='$address' WHERE id='$trickID'";
		mysql_query($sql);
		$sqlSelect = mysql_query("SELECT * FROM recipes ORDER BY id DESC");
		$rw = mysql_fetch_assoc($sqlSelect);
		$id = $rw['id'];
		echo $id;
	}else{
		echo "Form submission error";
		//header('Refresh: 3;url=index.php');
	}














function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}










?>