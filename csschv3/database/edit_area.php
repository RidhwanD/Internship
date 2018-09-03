<?php
require_once('db.php');

$get_id=$_REQUEST['id'];
$namaR= $_POST['namaArea'];

try{
	$sql = "UPDATE area SET area ='" .$namaR. "' WHERE id = ".$get_id;
	$conn->exec($sql);
	echo "<script>alert('Data Area Berhasil Diubah!'); window.location='../pages/daftar_area.php'</script>";

} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_area.php'</script>";
}

?>

