<?php

	function addTime($time, $minute){
		$hour = substr($time,0,2);
		$min = substr($time,3,2) + $minute -1;
		if ($min >= 60) {
			$min = $min - 60;
			$hour = $hour + 1;
		}
		return str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT);
	}
	
	function inBetween($starttime, $endtime, $timeChecked){
		if (substr($starttime,0,2)==substr($endtime,0,2)){
			if (substr($starttime,0,2)==substr($timeChecked,0,2)){
				if ((substr($timeChecked,3,2) >= substr($starttime,3,2)) and (substr($timeChecked,3,2) <= substr($endtime,3,2))) return true;
			}
		} else if (substr($starttime,0,2)!=substr($endtime,0,2)){
			if ((substr($starttime,0,2)==substr($timeChecked,0,2)) and (substr($starttime,3,2)<=substr($timeChecked,3,2))) return true;
			else if ((substr($endtime,0,2)==substr($timeChecked,0,2)) and (substr($endtime,3,2)>=substr($timeChecked,3,2))) return true;
		}
		return false;
	}
	
	function isEarlier($timeChecked, $timeComp){
		if (substr($timeChecked,0,2)<substr($timeComp,0,2)) return true;
		else if (substr($timeChecked,0,2)==substr($timeComp,0,2)) {
			if (substr($timeChecked,3,2)<substr($timeComp,3,2)) return true;
		}
		return false;
	}
	
	require_once('db.php');
	if (isset($_POST['kodeR'])) {
		$kodeR = $_POST['kodeR'];
	}
	
	if (isset($_POST['shift'])) {
		$shift = $_POST['shift'];
	}
	
	if (isset($_POST['durasi'])) {
		$dur = $_POST['durasi'];
	}
	$desc = "";
	if (isset($_POST['desc'])) {
		$desc = $_POST['desc'];
	}
	try{
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
		$sql = "INSERT INTO task (kodeRuangan, shift, duration,deskripsi)
		VALUES ('$kodeR', '$shift', '$dur','$desc')";
		
		$conn->exec($sql);
		$id = $conn->lastInsertId();
		echo "<script>alert('Data Task Berhasil Ditambahkan!'); window.location='../pages/daftar_penugasan.php'</script>";
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_penugasan.php'</script>";
	}
?>