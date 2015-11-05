<?php
require("conf.php");
$userAgent =  md5($_SERVER['REMOTE_ADDR']  . $_SERVER['HTTP_X_FORWARDED_FOR'] . $_SERVER['HTTP_USER_AGENT']);


$sql = mysql_query("SELECT * FROM votes WHERE user_agent = '". $userAgent . "' group by trick_id");

$json = "[";
$isFirstGenerated = false;
	while ($rw = mysql_fetch_assoc($sql)){

		if(!$isFirstGenerated)
		{
			$isFirstGenerated = true;
		}
		else
		{
			$json .= ",";
		}
		$json .= '{"id":"' . $rw['trick_id'] . '"}';

	};

	$json .=  "]";
	echo $json;


?>