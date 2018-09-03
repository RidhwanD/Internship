<?php
	require_once('db.php');
	date_default_timezone_set("Asia/Bangkok");
	$today = date('D d-m-Y');
	$date = substr($today,4);
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
	
	if (isset($_POST['kodeR'])) {
		$kodeR = $_POST['kodeR'];
	}
	
	if (isset($_POST['shift'])) {
		$shift = $_POST['shift'];
	}
	
	if (isset($_POST['durasi'])) {
		$durasi = $_POST['durasi'];
	}
	
	//if (isset($_POST['pic'])) {
	//	$pic = $_POST['pic'];
	//}
	
	if (isset($_POST['stJam'])&&isset($_POST['stMin'])) {
			$start = $_POST['stJam'].":".$_POST['stMin'];
			$end = addTime($start,$durasi);
	}
	
	try{
		$result = $conn->prepare("SELECT namaRuangan, area FROM ruangan WHERE kodeRuangan = '$kodeR'");
		$result->execute();
		$iterate = false;
		for($i=0; $row = $result->fetch(); $i++){
			$namaR = $row['namaRuangan'];
			$area = $row['area'];
		}
		//$result = $conn->prepare("SELECT namaPegawai, kontak FROM pegawai WHERE idPegawai = '$pic'");
		//$result->execute();
		//$iterate = false;
		//for($i=0; $row = $result->fetch(); $i++){
		//	$kontak = $row['kontak'];
		//	$nama = $row['namaPegawai'];
		//}
		$result2 = $conn->prepare("select namaPegawai, kontak from pegawai natural join shiftpegawai where shift = '$shift' and area = '$area'");
		$result2->execute(); 
		for($j=0; $row2 = $result2->fetch(); $j++){
			$nama = $row2['namaPegawai'];
			$kontak = $row2['kontak'];
		}
		$time = date('H:i');
		$lewat = 0;
		if (isEarlier($start,$time)) $lewat = 1;
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "INSERT INTO actual (idTask,exeDate,namaRuangan,area,shift,namaPegawai, kontak,duration,occurence,startTime,endTime,actEndTime,status,delay,status_sms) VALUES (0,'$date','$namaR','$area','$shift','$nama','$kontak',$durasi,0,'$start','$end',null,0,0,$lewat)";
		$conn->exec($sql);
		echo "<script>alert('Data Berhasil Ditambahkan!'); window.location='../pages/daftar_pengawasan.php'</script>";
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_pengawasan.php'</script>";
	}
?>