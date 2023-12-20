<?php
require 'database.php';
$postdata = file_get_contents('php://input');

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata,true);
   
	$id_analyse = mysqli_real_escape_string($db, trim($request['id_analyse']));
	$date = mysqli_real_escape_string($db, trim($request['date']));
    $patient_num = mysqli_real_escape_string($db, trim($request['patient_num']));
    $labo_num= mysqli_real_escape_string($db, trim($request['labo_num']));
	$pdf_num= mysqli_real_escape_string($db, trim($request['pdf_num']));

	$sql = "UPDATE analyse SET
	 patient_num='$patient_num',labo_num='$labo_num'
    ,date='$date',pdf_num='$pdf_num' 
    WHERE id_analyse= '$id_analyse' ";
	
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

