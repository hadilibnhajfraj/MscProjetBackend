<?php
include 'database.php';
$analyse_patient = [];

$sql = "SELECT DISTINCT id_analyse,date,filename,GROUP_CONCAT(nom_resultat SEPARATOR ' \n ') AS nom,GROUP_CONCAT(valeur_resultat SEPARATOR ' \n ') AS val 
FROM patient AS P , laboratoire AS L , resulltat AS R , analyse AS A , pdf_file F WHERE P.id_patient=A.patient_num 
AND F.id_pdf=A.pdf_num AND 
L.id_labo = A.labo_num AND A.id_analyse = R.num_analyse GROUP BY date " ;
if($result = $db->query($sql))
{
	$i = 0;
	 
	while($row = $result->fetch_assoc())
	{   
		$analyse_patient[$i]['id_analyse']=$row['id_analyse'];
		$analyse_patient[$i]['nom'] = $row['nom'];
		$analyse_patient[$i]['val'] = $row['val'];
		$analyse_patient[$i]['filename']=$row['filename'];
		$analyse_patient[$i]['date'] = $row['date'];
       
        
        
		
       
        
		$i++;
	}
	echo json_encode($analyse_patient);
}
else
{
	http_response_code(404);
}