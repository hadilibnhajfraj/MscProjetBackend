<?php
include 'database.php';
$laboratoire = [];

$sql = "SELECT * FROM laboratoire";
if($result = $db->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
		$laboratoire[$i]['id_labo'] = $row['id_labo'];
		$laboratoire[$i]['nom_labo'] = $row['nom_labo'];
		$laboratoire[$i]['adresse_labo'] = $row['adresse_labo'];
        $laboratoire[$i]['commune_labo'] = $row['commune_labo'];
        $laboratoire[$i]['pays_labo'] = $row['pays_labo'];
        
        
		$i++;
	}
	echo json_encode($laboratoire);
}
else
{
	http_response_code(404);
}