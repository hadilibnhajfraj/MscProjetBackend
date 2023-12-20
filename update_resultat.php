<?php
require 'database.php';
$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
    if(trim($request['num_analyse']) === '' 
	|| trim($request['nom_resultat']) === '' 
	||trim($request['valeur_resultat']) === '' )
	{
		return http_response_code(400);
	}
	$id_resultat =mysqli_real_escape_string($db, (int)$request['id_resultat']);
	$num_analyse = mysqli_real_escape_string($db, trim($request['num_analyse']));
    $nom_resultat = mysqli_real_escape_string($db, trim($request['nom_resultat']));
    $valeur_resultat= mysqli_real_escape_string($db, trim($request['valeur_resultat']));

	$sql = "UPDATE resulltat SET
	 num_analyse='$num_analyse',nom_resultat='$nom_resultat'
    ,valeur_resultat='$valeur_resultat' 
    WHERE id_resultat= '$id_resultat' ";
	
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

