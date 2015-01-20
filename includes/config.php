<?php
session_start();
//Conexion MySQL
$DBHost = 'localhost';
$DBUser = 'anguelsc_anguel';
$DBPass = 'Losmejores1982';
$DB = 'anguelsc_biblioteca';
$r = mysql_connect($DBHost, $DBUser, $DBPass);
if(!$r)
{
	die( mysql_error() );
}

mysql_select_db($DB,$r);
date_default_timezone_set("America/Lima");

?>