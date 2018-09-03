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
	$id = $_GET['id'];
	$dur = $_GET['dur'];
	$occur = $_GET['occur'];
	if (isset($_POST['stJam'])&&isset($_POST['stMin'])) {
			$start = $_POST['stJam'].":".$_POST['stMin'];
			$end = addTime($start,$dur);
	}
	try{
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$result = $conn->prepare("SELECT kodeRuangan, shift FROM task WHERE idTask = $id");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
			$kodeR = $row['kodeRuangan'];
			$shift = $row['shift'];
		}
		$result = $conn->prepare("SELECT starttime, endtime FROM detailtask WHERE idTask = $id ORDER BY occurence");
		$result->execute();
		$starts = [];
		$ends = [];
		for($i=0; $row = $result->fetch(); $i++){
			$starts[] = $row['starttime'];
			$ends[] = $row['endtime'];
		}
		//$result2 = $conn->prepare("select occurence, starttime, endtime from detailtask where idTask= $id");
		//$result2->execute();
			
		//$startall = [];
		//$endall = [];
		//for($i=0; $row2 = $result2->fetch(); $i++){
		//	$startall[] = $row2['starttime'];
		//	$endall[] = $row2['endtime'];
		//	$occurall[] = $row2['occurence'];
		//}
		
		//$concurrent = false;
		//for ($i = 0; $i < sizeof($startall); $i++){
		//	if (((inBetween($startall[$i],$endall[$i],$start)) or (inBetween($startall[$i],$endall[$i],$end))) and ($occur != $occurall[$i]))
		//		$concurrent = true;
		//}
		//if (!$concurrent){
		
		//	$result2 = $conn->prepare("select (select area from ruangan where koderuangan = '$kodeR') as area, starttime, endtime from task natural join detailtask where shift = '$shift' and idTask != $id");
		//	$result2->execute();
				
		//	$startall = [];
		//	$endall = [];
		//	for($i=0; $row2 = $result2->fetch(); $i++){
		//		$startall[] = $row2['starttime'];
		//		$endall[] = $row2['endtime'];
		//	}
		//	$concurrent = false;
		//	for ($i = 0; $i < sizeof($startall); $i++){
		//		if ((inBetween($startall[$i],$endall[$i],$start)) or (inBetween($startall[$i],$endall[$i],$end)))
		//			$concurrent = true;
		//	}
		//}
		
		//if (!$concurrent){
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
						
			array_splice($starts,$occur-1,1);
			
			$it = sizeof($starts);
			$lesser = false;
			while (!$lesser and $it >= 0) {
				$it--;
				if ($it >= 0)
				$lesser = isEarlier($starts[$it],$start);
			}
			for ($i = $it+1;$i < sizeof($starts);$i++){
				
				$sql = "UPDATE detailtask SET occurence ='" .($i+2). "' WHERE starttime = '".$starts[$i]."' and idTask = $id ";
				$conn->exec($sql);
				
			}
			$sql = "INSERT INTO detailtask (idTask, occurence, starttime, endtime)
		VALUES ($id, ($it+2), '$start', '$end')";
		
			$conn->exec($sql);
		//} else {
			echo "<!-- <script>alert('Data Start Time: $start - $end bertabrakan!'); window.location='../pages/daftar_penugasan.php'</script> -->";
		//}
		echo "<script>alert('Data Berhasil Diupdate!'); window.location='../pages/daftar_penugasan.php'</script>";
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_penugasan.php'</script>";
	}
?>