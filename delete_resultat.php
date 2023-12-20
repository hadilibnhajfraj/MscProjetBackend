<?php
require 'database.php';
$id_resultat = ($_GET['id_resultat'] !== null &&
 (int)$_GET['id_resultat'] > 0)?
  mysqli_real_escape_string($db, (int)$_GET['id_resultat']) : false;
if(!$id_resultat)
{
	return http_response_code(400);
}

$sql = "DELETE FROM resulltat WHERE id_resultat ='{$id_resultat}'";
if($db->query($sql))
{
	http_response_code(204);
}
else
{
	return http_response_code(422);
}