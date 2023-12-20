<?php
include 'database.php';
$analyse = [];

$sql = "SELECT * FROM analyse";
if($result = $db->query($sql))
{
	$i = 0;
	while($row = $result->fetch_assoc())
	{
		$analyse[$i]['id_analyse'] = $row['id_analyse'];
		
        $analyse[$i]['patient_num'] = $row['patient_num'];
        $analyse[$i]['labo_num'] = $row['labo_num'];
        $analyse[$i]['date'] = $row['date'];
		$analyse[$i]['pdf_num'] = $row['pdf_num'];
        
		$i++;
	}
	echo json_encode($analyse);
}
else
{
	http_response_code(404);
}