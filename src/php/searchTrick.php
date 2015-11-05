<?php
	require("conf.php");

	header('Content-Type: application/json');


	$idsArray = array();
	$userAgent =  md5($_SERVER['REMOTE_ADDR']  . $_SERVER['HTTP_X_FORWARDED_FOR'] . $_SERVER['HTTP_USER_AGENT']);
	$sql = mysql_query("SELECT * FROM votes WHERE user_agent = '". $userAgent . "' group by trick_id");

	while ($rw = mysql_fetch_array($sql)){
		$idsArray[count($idsArray)] = $rw['trick_id'];
	};

	$json = "[";
	$imageBase = curPageURL();
	$searchTitleId = $_REQUEST['query'];
	$sql = mysql_query("SELECT * FROM recipes WHERE status = 1 AND title LIKE '%$searchTitleId%' ORDER BY id DESC");

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
		$json .= getSingleNode($rw);

	};
	$json .=  "]";
	echo $json;


function getSingleNode($row)
{
/*
	$singleNode = "{";
	$singleNode .= '"id":"' .  $row['id'] . '",';
	$singleNode .= ' "title":"' . $row['title'] . '",';
	$singleNode .= ' "trick":"' . $row['trick'] . '",';
	$singleNode .= ' "image":"'. curPageURL() . $imageBase . $row['image_url'] . '",';
	$singleNode .= '"name":"' .  $row['name'] . '",';
	$singleNode .= '"votes":"' .  $row['votes'] . '"';
	$singleNode .= "}";
	*/
	$row['image_url'] = curpageURL() . $row['image_url'];
	$row['image'] = $row['image_url'];
	$row['voted'] = checkIsVoted($row['id']);
	return json_encode($row);
}

function checkIsVoted ($id)
{
	for($x = 0; $x < count($GLOBALS['idsArray']); $x++) {
		if($GLOBALS['idsArray'][$x] == $id)
		{
			return "1";
		}
	}
	return "0";
}

function curPageURL()
{
	$pageURL = 'http';
	if ($_SERVER["HTTPS"] == "on")
	{
		$pageURL .= "s";
	}
	//$host= gethostname();
	//$ip = gethostbyname($host);

	$pageURL .= "://";
		if ($_SERVER["SERVER_PORT"] != "80") {
			$pageURL .= $_SERVER["SERVER_NAME"] . ":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
		} else {
			$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
		}
	return substr($pageURL, 0, strpos($pageURL, "searchTrick.php"));
}

?>