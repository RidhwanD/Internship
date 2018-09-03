<?php
	date_default_timezone_set("Asia/Bangkok");
	$today = date('D d-m-Y');
	$date = substr($today,4);
	if (substr($today,0,3) == "Sun") $day = "Minggu";
	else if (substr($today,0,3) == "Sat") $day = "Sabtu";
	else $day = "Shift";
	function isEarlier($timeChecked, $timeComp){
		if (substr($timeChecked,0,2)<substr($timeComp,0,2)) return true;
		else if (substr($timeChecked,0,2)==substr($timeComp,0,2)) {
			if (substr($timeChecked,3,2)<substr($timeComp,3,2)) return true;
		}
		return false;
	}
	
	require_once('db.php');
	
	$result = $conn->prepare("SELECT count(*) as num FROM ACTUAL WHERE exedate = '$date'");
	$result->execute(); 
	$num = 0;
	for($i=0; $row = $result->fetch(); $i++){
		$num = $row['num'];
	}
	if ($num == 0){
		$time = date('H:i');
		$result = $conn->prepare("SELECT idTask, koderuangan, namaRuangan, area, shift, duration, occurence, starttime, endtime FROM task natural join ruangan natural join detailtask where shift like '$day%' ORDER BY shift");
		$result->execute(); 
		for($i=0; $row = $result->fetch(); $i++){
			$idtask = $row['idTask'];
			$shift = $row['shift'];
			$ruang = $row['koderuangan'];
			$nruang = $row['namaRuangan'];
			$area = $row['area'];
			$dur = $row['duration'];
			$occ = $row['occurence'];
			$start = $row['starttime'];
			$end = $row['endtime'];
			$lewat = 0;
			if (isEarlier($row['starttime'],$time)) $lewat = 1;
			$result2 = $conn->prepare("select namaPegawai, kontak from pegawai natural join shiftpegawai where shift = '$shift' and area = (select area from ruangan where kodeRuangan = '$ruang')");
			$result2->execute(); 
			for($j=0; $row2 = $result2->fetch(); $j++){
				$pic = $row2['namaPegawai'];
				$knt = $row2['kontak'];
				try {
					$sql = "INSERT INTO actual (idTask,exeDate,namaRuangan,area,shift,namaPegawai, kontak,duration,occurence,startTime,endTime,actEndTime,status,delay,status_sms) VALUES ($idtask,'$date','$nruang','$area','$shift','$pic','$knt',$dur,$occ,'$start','$end',null,0,0,$lewat)";
					$conn->exec($sql);
				} catch (Exception $e) {
					echo "<script>alert('$e'); window.location='../pages/daftar_pengawasan.php'</script>";
				}
			}
		}
		
	}
	try {
		$sql = "UPDATE actual SET delay = 1 WHERE status = 0 AND exedate <> '$date'";
		$conn->exec($sql);
		$sql = "UPDATE actual SET status_sms = 1 WHERE exedate <> '$date'";
		$conn->exec($sql);
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_pengawasan.php'</script>";
	}
	
header('location:../pages/daftar_pengawasan.php');
?>