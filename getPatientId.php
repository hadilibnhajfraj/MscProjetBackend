<?php
include 'database.php';
$patient = [];


$sql = "SELECT id_patient,nom,prenom,date_naissance,adresse,code_postal,commune,pays
FROM  patient  WHERE id_patient=
 ".$_GET['id_patient'];
if($result = $db->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
  	$patient[$i]['id_patient'] = $row['id_patient'];
		$patient[$i]['nom'] = $row['nom'];
		$patient[$i]['prenom'] = $row['prenom'];
        $patient[$i]['date_naissance'] = $row['date_naissance'];
		$patient[$i]['adresse'] = $row['adresse'];
        $patient[$i]['code_postal'] = $row['code_postal'];
		$patient[$i]['commune'] = $row['commune'];
		$patient[$i]['pays'] = $row['pays'];
	}
	echo json_encode($patient);
}
else
{
	http_response_code(404);
}