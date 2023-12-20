<?php
include 'database.php';
$patient = [];

$sql = "SELECT DISTINCT  nom, prenom,date_naissance ,adresse,pays,nom_labo,
adresse_labo,commune,code_postal,date,GROUP_CONCAT(nom_resultat SEPARATOR ' || ') AS name,GROUP_CONCAT(valeur_resultat SEPARATOR ' || ') AS val , date
FROM patient AS P , laboratoire AS L , resulltat AS R , analyse AS A WHERE P.id_patient=A.patient_num 
AND L.id_labo = A.labo_num AND A.id_analyse = R.num_analyse " ;
if($result = $db->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
		
		$patient[$i]['nom'] = $row['nom'];
		$patient[$i]['prenom'] = $row['prenom'];
        $patient[$i]['date_naissance'] = $row['date_naissance'];
        $patient[$i]['code_postal'] = $row['code_postal'];
		$patient[$i]['commune'] = $row['commune'];
		$patient[$i]['nom_labo'] = $row['nom_labo'];
        $patient[$i]['adresse_labo'] = $row['adresse_labo'];
        $patient[$i]['pays'] = $row['pays'];
        $patient[$i]['adresse'] = $row['adresse'];
		$patient[$i]['val']=$row['val'];
        $patient[$i]['name'] = $row['name'];
		$patient[$i]['date'] = $row['date'];
		$i++;
	}
	echo json_encode($patient);
}
else
{
	http_response_code(404);
}