<?php
require_once('db.php');

$get_id=$_GET['idPegawai'];
"<script>alert('$get_id'); window.location='../pages/daftar_pegawai.php'</script>";
try{
// sql to delete a record
$sql = "Delete from shiftpegawai where idPegawai = '$get_id'";

// use exec() because no results are returned
$conn->exec($sql);

$sql = "Delete from pegawai where idPegawai = '$get_id'";

// use exec() because no results are returned
$conn->exec($sql);

} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_pegawai.php'</script>";
}
header('location:../pages/daftar_pegawai.php');
?>