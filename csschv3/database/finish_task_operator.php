<?php
	date_default_timezone_set("Asia/Bangkok");

	function addTime($time, $minute){
		$hour = substr($time,0,2);
		$min = substr($time,3,2) + $minute -1;
		while ($min >= 60) {
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
	$id = $_GET['id'];
	$end = $_GET['end'];
	$time = date('H:i');
	if (isEarlier($time,addTime($end,2))) $delay = 0; else $delay = 1;
	
	try{
		$sql = "UPDATE actual SET actendtime= '$time', status = 1, delay = $delay WHERE id = $id";
		$conn->exec($sql);
		echo "<script>alert('Data Berhasil Diupdate!'); window.location='../pages/operator.php'</script>";
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/operator.php'</script>";
	}
?>