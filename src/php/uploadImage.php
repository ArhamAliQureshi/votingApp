<?php
	require("../admin/database/conf.php");
	$uploadFile = test_input($_POST['uploadFile']);
	$id = test_input($_POST['21']);
	if($_FILES['uploadFile']['name']!=  ""){
		$tmp_name = $_FILES["uploadFile"]["tmp_name"];
		$name = $_FILES["uploadFile"]["name"];
		$arr = explode(".",$name);
		$i_name = time().".".$arr[1];
		$dir_uploads = "../uploads/";
		move_uploaded_file($tmp_name, $dir_uploads.$i_name);
		
	}	
	function test_input($data) {
	  $data = trim($data);
	  $data = stripslashes($data);
	  $data = htmlspecialchars($data);
	  return $data;
	}
	
	
	if($i_name !=""){
		$sql = mysql_query("INSERT INTO recipes () ");




		$sql = mysql_query("UPDATE recipes SET image_url='$i_name' WHERE id='$id' ");
		//$qy = mysql_query($sql);
	}else{
		echo "Form submission error";
		header('Refresh: 3;url=../index.php');
	}

?>