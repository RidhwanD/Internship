<?php
	require_once('db.php');
	if (isset($_POST['kodeRuangan'])) {
		$kodeR = $_POST['kodeRuangan'];
	}
	
	if (isset($_POST['namaRuangan'])) {
		$namaR = $_POST['namaRuangan'];
	}
	
	if (isset($_POST['area'])) {
		$area = $_POST['area'];
	}
	try{
		$result = $conn->prepare("SELECT * FROM ruangan WHERE kodeRuangan = '$kodeR' or (namaRuangan = '$namaR' and area = '$area')");
		$result->execute();
		$iterate = false;
		for($i=0; $row = $result->fetch(); $i++){
			if (sizeof($row)>0){
				$iterate = true;
			}
		}
		$result = $conn->prepare("SELECT * FROM area WHERE id = '$area'");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
			$namaA = $row['area'];
		}
		if (!$iterate) {
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$sql = "INSERT INTO ruangan (kodeRuangan, namaRuangan, area)
			VALUES ('$kodeR', '$namaR', '$namaA')";
			
			$conn->exec($sql);
			echo "<script>alert('Data Ruangan Berhasil Ditambahkan!'); window.location='../pages/daftar_ruangan.php'</script>";
		} else {
			echo "<script>alert('Data Ruangan Sudah Ada!'); window.location='../pages/daftar_ruangan.php'</script>";
		}
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_ruangan.php'</script>";
	}
?>