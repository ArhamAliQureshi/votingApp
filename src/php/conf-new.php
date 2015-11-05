<?php
session_start();
error_reporting(E_ERROR | E_WARNING | E_PARSE);
ini_set("display_errors", 1);

if ($_SERVER['SERVER_NAME']=="localhost") {
	/* Local */
	$user = "cimple2_taqi"; //Database Username here
	$pass = "2cimple2"; //Database Password here
	$db = "cimple2_dalda"; //Database Name here
	$localhost="localhost"; //Database Server
}
else {
	$user = "cimple2_taqi"; //Database Username here
	$pass = "2cimple2"; //Database Password here
	$db = "cimple2_dalda"; //Database Name here
	$localhost="localhost"; //Database Server
}
//define("PREFIX", "cms_");
$link = mysql_connect($localhost, $user, $pass);
if (!$link )
	die( "Couldn't connect to MySQL" );

mysql_select_db( $db)
	or die ( "Couldn't open $db: ".mysql_error() );

?>