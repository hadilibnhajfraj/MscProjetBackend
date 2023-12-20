<?php
include 'database.php';
$resultat = [];



$sql = "SELECT id_resultat,num_analyse,nom_resultat,valeur_resultat
FROM  resulltat  WHERE id_resultat=
 ".$_GET['id_resultat'];
if($result = $db->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
		$resultat[$i]['id_resultat'] = $row['id_resultat'];
		$resultat[$i]['num_analyse'] = $row['num_analyse'];
		$resultat[$i]['nom_resultat'] = $row['nom_resultat'];
        $resultat[$i]['valeur_resultat'] = $row['valeur_resultat'];
        
        
		$i++;
	}
	echo json_encode($resultat);
}
else
{
	http_response_code(404);
}
