<?php
require_once('db.php');

$get_id=$_REQUEST['kode'];
$get_nama=$_REQUEST['nama'];
$get_area=$_REQUEST['area'];

$kodeR= $_POST['kodeRuangan'];
$namaR= $_POST['namaRuangan'];
$area= $_POST['area'];
try{
	$result = $conn->prepare("SELECT * FROM area WHERE id = '$area'");
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
		$namaA = $row['area'];
	}
	$sql = "UPDATE ruangan SET kodeRuangan ='" .$kodeR. "', namaRuangan ='".$namaR."', area='".$namaA."' WHERE kodeRuangan = '".$get_id."' ";
	$conn->exec($sql);
	echo "<script>alert('Data Ruangan Berhasil Diubah!'); window.location='../pages/daftar_ruangan.php'</script>";

} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_ruangan.php'</script>";
}

?>

