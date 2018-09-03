<?php
require_once('db.php');
date_default_timezone_set("Asia/Bangkok");
$today = date('d-m-Y');

$rowCount = count($_POST["check"]);

try {
	for($i=0;$i<$rowCount;$i++) {
		$sql = "DELETE FROM actual WHERE id='" . $_POST["check"][$i] . "'";
		$conn->exec($sql);
	}
} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_pengawasan.php'</script>";
}

header('location:../pages/daftar_pengawasan.php');
?>