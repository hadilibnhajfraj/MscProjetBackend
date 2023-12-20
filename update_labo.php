<?php
require 'database.php';
$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
    if(trim($request['nom_labo']) === '' || trim($request['adresse_labo']) === '' 
    || trim($request['commune_labo']) === '' 
    ||trim($request['pays_labo']) === ''   )
	{
		return http_response_code(400);
	}
	$id_labo =mysqli_real_escape_string($db, (int)$request['id_labo']);
	$nom_labo = mysqli_real_escape_string($db, trim($request['nom_labo']));
    $adresse_labo = mysqli_real_escape_string($db, trim($request['adresse_labo']));
    $commune_labo = mysqli_real_escape_string($db, trim($request['commune_labo']));
    $pays_labo= mysqli_real_escape_string($db, trim($request['pays_labo']));

	$sql = "UPDATE laboratoire SET nom_labo='$nom_labo',adresse_labo='$adresse_labo'
    ,commune_labo='$commune_labo',pays_labo='$pays_labo' 
    WHERE id_labo= '$id_labo' ";
	
	if($db->query($sql))
	{
		http_response_code(204);
		$response["msg"] = "User update response from server was a success ";
	}
	else
	{
		return http_response_code(422);
	}
}

