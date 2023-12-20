<?php
require 'database.php';
$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
	if(trim($request['nom']) === '' || trim($request['prenom']) === '' || trim($request['date_naissance']) === '' 
    ||trim($request['adresse']) === '' ||trim($request['code_postal']) === '' 
	||trim($request['commune']) === '' ||trim($request['pays']) === ''  )
	{
		return http_response_code(400);
	}
	$id_patient =mysqli_real_escape_string($db, (int)$request['id_patient']);
	$nom = mysqli_real_escape_string($db, trim($request['nom']));
    $prenom = mysqli_real_escape_string($db, trim($request['prenom']));
    $date_naissance= mysqli_real_escape_string($db, trim($request['date_naissance']));
    $adresse = mysqli_real_escape_string($db, trim($request['adresse']));
	$code_postal= mysqli_real_escape_string($db, trim($request['code_postal']));
	$commune = mysqli_real_escape_string($db, trim($request['commune']));
	$pays = mysqli_real_escape_string($db, trim($request['pays']));
	$sql = "UPDATE patient SET nom='$nom',prenom='$prenom'
    ,date_naissance='$date_naissance',adresse='$adresse' , code_postal='$code_postal',
	commune='$commune',pays='$pays'
	 WHERE id_patient= '$id_patient' ";
	
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

