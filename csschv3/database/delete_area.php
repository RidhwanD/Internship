<?php
require_once('db.php');

$get_id=$_GET['id'];
"<script>alert('$get_id'); window.location='../pages/daftar_area.php'</script>";
try {
// sql to delete a record
	$sql = "Delete from area where id = $get_id";
	
	// use exec() because no results are returned
	$conn->exec($sql);
} catch (Exception $e){
	echo "<script>alert('$e'); window.location='../pages/daftar_area.php'</script>";
}
header('location:../pages/daftar_area.php');
?>