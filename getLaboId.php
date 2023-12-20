<?php
include 'database.php';
$labo = [];


$sql = "SELECT id_labo,nom_labo,adresse_labo,commune_labo,pays_labo
FROM  laboratoire  WHERE id_labo=
 ".$_GET['id_labo'];
if($result = $db->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
  	$labo[$i]['id_labo'] = $row['id_labo'];
		$labo[$i]['nom_labo'] = $row['nom_labo'];
		$labo[$i]['adresse_labo'] = $row['adresse_labo'];
        $labo[$i]['commune_labo'] = $row['commune_labo'];
		$labo[$i]['pays_labo'] = $row['pays_labo'];
  
	}
	echo json_encode($labo);
}
else
{
	http_response_code(404);
}