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

$get_id=$_REQUEST['id'];

$nama= $_POST['namaPegawai'];
$kontak= $_POST['kontak'];
$dur = $_POST['durasi'];
$jam= $_POST['stJam'];
$min= $_POST['stMin'];
$start = $jam.":".$min;
date_default_timezone_set("Asia/Bangkok");
$today = date('d-m-Y');

try{
	$result = $conn->prepare("SELECT namapegawai, kontak, status, duration FROM actual WHERE id = $get_id  and exeDate = '$today'");
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
		$status = $row['status'];
		$pic = $row['namapegawai'];
		$ktk = $row['kontak'];
	}
	if ($status == 0){
		$end = addTime($start,$dur);
		$sql = "Update actual set namaPegawai = '$nama', kontak = '$kontak', starttime='$start', endtime = '$end', duration = $dur, delay = 0, status_sms = 0 where exeDate = '$today' and id = $get_id";
		$conn->exec($sql);	
		
		echo "<script>alert('Data Berhasil Diubah!'); window.location='../pages/daftar_pengawasan.php'</script>";
		if (isset($_POST['editall'])){
			$sql = "Update actual set namaPegawai = '$nama', kontak = '$kontak' where exeDate = '$today' and namapegawai = '$pic' and kontak = '$ktk' and status = 0";
			$conn->exec($sql);
		}
	} else {
		echo "<script>alert('Status sudah dikerjakan! Data Tidak Bisa Diubah!'); window.location='../pages/daftar_pengawasan.php'</script>";
	}
} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_pengawasan.php'</script>";
}
?>