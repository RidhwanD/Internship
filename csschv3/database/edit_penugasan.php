<?php
require_once('db.php');

function addTime($time, $minute){
	$hour = substr($time,0,2);
	$min = substr($time,3,2) + $minute -1;
	if ($min >= 60) {
		$min = $min - 60;
		$hour = $hour + 1;
	}
	return str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT);
}

$get_id=$_GET['id'];


if (isset($_POST['kodeR'])) {
		$kodeR = $_POST['kodeR'];
	}
	
	if (isset($_POST['shift'])) {
		$shift = $_POST['shift'];
	}
	
	if (isset($_POST['durasi'])) {
		$durasi = $_POST['durasi'];
	}
	$desc = "";
	if (isset($_POST['desc'])) {
		$desc = $_POST['desc'];
	}
try{
	
		
		$sql = "UPDATE task SET kodeRuangan ='" .$kodeR. "', shift ='".$shift."', duration=".$durasi." , deskripsi = '$desc' WHERE idTask = ".$get_id." ";
		$conn->exec($sql);
		$result2 = $conn->prepare("SELECT starttime FROM detailtask WHERE idTask = ".$get_id);
		$result2->execute();
		$iterate = false;
		for($i=0; $row2 = $result2->fetch(); $i++){
			if (sizeof($row2)>0){
				$iterate = true;
			}
			$starts[] = $row2['starttime'];
		}
		if ($iterate){
			for ($i = 0; $i < sizeof($starts); $i++){
				$end = addTime($starts[$i],$durasi);
				$sql = "UPDATE detailtask SET endtime ='" .$end. "' WHERE idTask = ".$get_id." AND starttime = '$starts[$i]'";
				$conn->exec($sql);
			}
	//	}
	}
	echo "<script>alert('Data Penugasan Berhasil Diubah!'); window.location='../pages/daftar_penugasan.php'</script>";
} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_penugasan.php'</script>";
}

?>