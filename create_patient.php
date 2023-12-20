<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
	// Validate.
	if(trim($request['nom']) === '' || trim($request['prenom']) === '' || trim($request['date_naissance']) === '' 
    ||trim($request['adresse']) === '' ||trim($request['code_postal']) === '' 
	||trim($request['commune']) === '' ||trim($request['pays']) === ''  )
	{
		return http_response_code(400);
	}
	$nom = mysqli_real_escape_string($db, trim($request['nom']));
    $prenom = mysqli_real_escape_string($db, trim($request['prenom']));
    $date_naissance= mysqli_real_escape_string($db, trim($request['date_naissance']));
    $adresse = mysqli_real_escape_string($db, trim($request['adresse']));
	$code_postal= mysqli_real_escape_string($db, trim($request['code_postal']));
	$commune = mysqli_real_escape_string($db, trim($request['commune']));
	$pays = mysqli_real_escape_string($db, trim($request['pays']));
	
	$sql = "INSERT INTO patient (nom,prenom,date_naissance,adresse,code_postal,commune,pays)
	 VALUES ('{$nom}','{$prenom}','{$date_naissance}','{$adresse}','{$code_postal}','{$commune}','{$pays}')";
	if($db->query($sql))
	{
		http_response_code(201);
		$patients = [
		
        'nom' => $nom,
        'prenom'=>$prenom,
        'date_naissance'=>$date_naissance,
        'adresse'=>$adresse,
		'code_postal'=>$code_postal,
		'commune'=>$commune,
		'pays'=>$pays
		];
		echo json_encode($patients);
       
	}
	else
	{
		http_response_code(422);
	}
}