<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
	// Validate.
	if(trim($request['nom_labo']) === '' || trim($request['adresse_labo']) === '' 
    || trim($request['commune_labo']) === '' 
    ||trim($request['pays_labo']) === ''   )
	{
		return http_response_code(400);
	}
	$nom_labo = mysqli_real_escape_string($db, trim($request['nom_labo']));
    $adresse_labo = mysqli_real_escape_string($db, trim($request['adresse_labo']));
    $commune_labo = mysqli_real_escape_string($db, trim($request['commune_labo']));
    $pays_labo= mysqli_real_escape_string($db, trim($request['pays_labo']));
    
	$sql = "INSERT INTO laboratoire (nom_labo,adresse_labo,commune_labo,pays_labo) 
    VALUES ('{$nom_labo}','{$adresse_labo}','{$commune_labo}',
    '{$pays_labo}')";
	if($db->query($sql))
	{
		http_response_code(201);
		$laboratoire = [
		
        'nom_labo' => $nom_labo,
        'adresse_labo'=>$adresse_labo,
        'commune_labo'=>$commune_labo,
		'pays_labo'=>$pays_labo
		];
		echo json_encode($laboratoire);
       
	}
	else
	{
		http_response_code(422);
	}
}