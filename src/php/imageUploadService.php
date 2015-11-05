<?php
	require("conf.php");
	$title = test_input($_POST['title']);
	$trick = test_input($_POST['trick']);
if($_FILES['Filedata']['name']!=  ""){
	$tmp_name = $_FILES["Filedata"]["tmp_name"];
	$name = $_FILES["Filedata"]["name"];
	$arr = explode(".",$name);
	$i_name = time().".".$arr[1];
	$dir_uploads = "uploads/";
	move_uploaded_file($tmp_name, $dir_uploads.$i_name);
	$imageUpload = $dir_uploads.$i_name;
}
if($i_name != ""){
	$imageFileUpload = $imageUpload;
}else{
	$imageFileUpload = "uploads/fallBackImage.jpg";
}
if($title != "" || $trick != ""){
	$sql="INSERT INTO recipes(title,trick,image_url) VALUES('$title','$trick','$imageFileUpload')";
	mysql_query($sql);
	echo mysql_insert_id();
}else{
	echo "Form submition fail";
}






function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}




?>