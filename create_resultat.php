<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
	// Validate.
	if(trim($request['num_analyse']) === '' || trim($request['nom_resultat']) === '' ||trim($request['valeur_resultat']) === '' )
	{
		return http_response_code(400);
	}
	$num_analyse = mysqli_real_escape_string($db, trim($request['num_analyse']));
    $nom_resultat = mysqli_real_escape_string($db, trim($request['nom_resultat']));
    $valeur_resultat= mysqli_real_escape_string($db, trim($request['valeur_resultat']));
   
	
	$sql = "INSERT INTO resulltat (num_analyse,nom_resultat,valeur_resultat)
	 VALUES ('{$num_analyse}','{$nom_resultat}','{$valeur_resultat}')";
	if($db->query($sql))
	{
		http_response_code(201);
		$resultat = [
		
        'num_analyse' => $num_analyse,
        'nom_resultat'=>$nom_resultat,
        'valeur_resultat'=>$valeur_resultat
		];
		echo json_encode($resultat);
       
	}
	else
	{
		http_response_code(422);
	}
}