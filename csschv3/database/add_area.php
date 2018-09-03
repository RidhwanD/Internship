<?php
	require_once('db.php');
	if (isset($_POST['namaArea'])) {
			$nama = $_POST['namaArea'];
	}
	try{
		$sql = "INSERT INTO area (area)
	VALUES ('$nama')";
	
		$conn->exec($sql);
		echo "<script>alert('Data Area Berhasil Ditambahkan!'); window.location='../pages/daftar_area.php'</script>";
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_area.php'</script>";
	}
?>