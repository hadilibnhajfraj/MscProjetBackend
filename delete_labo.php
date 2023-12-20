<?php
require 'database.php';
$id_labo = ($_GET['id_labo'] !== null &&
 (int)$_GET['id_labo'] > 0)?
  mysqli_real_escape_string($db, (int)$_GET['id_labo']) : false;
if(!$id_labo)
{
	return http_response_code(400);
}

$sql = "DELETE FROM laboratoire WHERE id_labo ='{$id_labo}'";
if($db->query($sql))
{
	http_response_code(204);
}
else
{
	return http_response_code(422);
}