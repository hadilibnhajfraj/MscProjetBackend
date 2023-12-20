<?php
require 'database.php';
$id_analyse = ($_GET['id_analyse'] !== null &&
 (int)$_GET['id_analyse'] > 0)?
  mysqli_real_escape_string($db, (int)$_GET['id_analyse']) : false;
if(!$id_analyse)
{
	return http_response_code(400);
}

$sql = "DELETE FROM analyse WHERE id_analyse ='{$id_analyse}'";
if($db->query($sql))
{
	http_response_code(204);
}
else
{
	return http_response_code(422);
}