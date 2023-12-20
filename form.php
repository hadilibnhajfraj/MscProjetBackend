<?php
require 'database.php';
$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
	if(trim($request['nom']) === '' || trim($request['prenom']) === '' || trim($request['date_naissance']) === '' 
    ||trim($request['adresse']) === '' ||trim($request['code_postal']) === '' 
	||trim($request['commune']) === '' ||trim($request['pays']) === '' 
    || trim($request['date']) === ''|| trim($request['adresse_labo']) === '' 
    || trim($request['nom_labo']) === ''
    
    || trim($request['nom_resultat']) === '' 
	||trim($request['valeur_resultat']) === '')
	{
		return http_response_code(400);
	}
	$id_analyse =mysqli_real_escape_string($db, (int)$request['id_analyse']);
    $date = mysqli_real_escape_string($db, trim($request['date']));
	$nom = mysqli_real_escape_string($db, trim($request['nom']));
    $prenom = mysqli_real_escape_string($db, trim($request['prenom']));
    $date_naissance= mysqli_real_escape_string($db, trim($request['date_naissance']));
    $adresse = mysqli_real_escape_string($db, trim($request['adresse']));
	$code_postal= mysqli_real_escape_string($db, trim($request['code_postal']));
	$commune = mysqli_real_escape_string($db, trim($request['commune']));
	$pays = mysqli_real_escape_string($db, trim($request['pays']));
    $nom_labo = mysqli_real_escape_string($db, trim($request['nom_labo']));
    $adresse_labo = mysqli_real_escape_string($db, trim($request['adresse_labo']));
   
   
    $nom_resultat = mysqli_real_escape_string($db, trim($request['nom_resultat']));
    $valeur_resultat= mysqli_real_escape_string($db, trim($request['valeur_resultat']));
	$sql = "UPDATE patient p 
    INNER JOIN analyse A ON A.patient_num=p.id_patient
     INNER JOIN resulltat R ON R.num_analyse=A.id_analyse 
     INNER JOIN laboratoire L ON l.id_labo=A.labo_num
     SET nom='$nom',prenom='$prenom'
    ,date_naissance='$date_naissance',
    adresse='$adresse' , code_postal='$code_postal',
	commune='$commune',pays='$pays' ,
    date='$date' , nom_labo='$nom_labo',adresse_labo='$adresse_labo'
    ,nom_resultat='$nom_resultat'
    ,valeur_resultat='$valeur_resultat',date='$date' ";
	
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

