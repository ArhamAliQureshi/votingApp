<?php
	require("conf.php");
	$trickID = $_POST['trickID'];
	echo $userAgent =  md5($_SERVER['REMOTE_ADDR']  . $_SERVER['HTTP_X_FORWARDED_FOR'] . $_SERVER['HTTP_USER_AGENT']);
	if(isset($trickID)){
		$sql="INSERT INTO votes(user_agent,trick_id) VALUES('$userAgent','$trickID')";
		$result = mysql_query($sql);

		$sql="Update recipes set votes = votes  + 1 where id =' $trickID'";
		$result = mysql_query($sql);
	}

?>