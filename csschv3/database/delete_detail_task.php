<?php
require_once('db.php');

$id = $_GET['idTask'];
$occur = $_GET['occur'];
"<script>alert('$id'); window.location='../pages/daftar_penugasan.php'</script>";
try {
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
	$result = $conn->prepare("SELECT starttime, endtime FROM detailtask WHERE idTask = $id ORDER BY occurence");
	$result->execute();
	
	$starts = [];
	$ends = [];
	for($i=0; $row = $result->fetch(); $i++){
		$starts[] = $row['starttime'];
		$ends[] = $row['endtime'];
	}
	$sql = "Delete from detailtask where idTask = $id and occurence = $occur";
	$conn->exec($sql);
	
	if (sizeof($starts) > 1){
		for ($i = $occur; $i < sizeof($starts); $i++){
			$sql = "UPDATE detailtask SET occurence =" .$i. " WHERE starttime = '".$starts[$i]."' and idTask = $id ";
			$conn->exec($sql);
		}
	}
	
} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_penugasan.php'</script>";
}
header('location:../pages/daftar_penugasan.php');
?>