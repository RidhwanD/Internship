<?php
require_once('db.php');
date_default_timezone_set("Asia/Bangkok");
$today = date('d-m-Y');


try {
	$sql = "Delete from actual where exedate = '$today'";
	
	$conn->exec($sql);
} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_pengawasan.php'</script>";
}
header('location:../pages/daftar_pengawasan.php');
?>