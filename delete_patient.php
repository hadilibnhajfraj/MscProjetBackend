<?php
require 'database.php';
$id_patient = ($_GET['id_patient'] !== null &&
 (int)$_GET['id_patient'] > 0)?
  mysqli_real_escape_string($db, (int)$_GET['id_patient']) : false;
if(!$id_patient)
{
	return http_response_code(400);
}

$sql = "DELETE FROM patient WHERE id_patient ='{$id_patient}'";
if($db->query($sql))
{
	http_response_code(204);
}
else
{
	return http_response_code(422);
}