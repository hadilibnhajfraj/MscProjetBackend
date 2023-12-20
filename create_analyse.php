<?php
include 'database.php';
$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
	// Validate.
	if(trim($request['patient_num']) === ''
     || trim($request['labo_num']) === '' 
     ||trim($request['date']) === '' 
     ||trim($request['pdf_num'])==='')
	{
		return http_response_code(400);
	}
	$patient_num = mysqli_real_escape_string($db, trim($request['patient_num']));
    $labo_num = mysqli_real_escape_string($db, trim($request['labo_num']));
    $date= mysqli_real_escape_string($db, trim($request['date']));
    $pdf_num=mysqli_real_escape_string($db,trim($request['pdf_num']));
	
	$sql = "INSERT INTO analyse (id_analyse,patient_num,labo_num,date,pdf_num)
	 VALUES (NULL,'{$patient_num}','{$labo_num}','{$date}','{$pdf_num}')";
	if($db->query($sql))
	{
		http_response_code(201);
		$analyse = [
			'id_analyse' => mysqli_insert_id($db),
        'patient_num' => $patient_num,
        'labo_num'=>$labo_num,
        'date'=>$date,
        'pdf_num'=>$pdf_num
        
		];
		echo json_encode($analyse);
       
	}
	else
	{
		http_response_code(422);
	}
}