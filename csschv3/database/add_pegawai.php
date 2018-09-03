<?php
	require_once('db.php');
	
	try{
		if (isset($_POST['namaPegawai'])) {
			$nama = $_POST['namaPegawai'];
		}
		
		if (isset($_POST['kontak'])) {
			$kontak = $_POST['kontak'];
		}
		
		if (isset($_POST['jkP'])) {
			$jkP = $_POST['jkP'];
		}
		
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$sql = "INSERT INTO pegawai (namaPegawai, kontak, jenisKelamin)
		VALUES ('$nama', '$kontak', '$jkP')";
		
		$conn->exec($sql);
		$id = $conn->lastInsertId();
		if (isset($_POST['shift1'])) {
			$shi = $_POST['shift1']; 
			$sft = $shi."(".$jkP.")";
			$area = $_POST['area_shift1'];
			$result = $conn->prepare("SELECT * FROM area WHERE id = '$area'");
			$result->execute();
			for($i=0; $row = $result->fetch(); $i++){
				$namaA = $row['area'];
			}
			$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
			$conn->exec($sql);
		}
		if (isset($_POST['shift2'])) {
			$shi = $_POST['shift2']; 
			$sft = $shi."(".$jkP.")";
			$area = $_POST['area_shift2'];
			$result = $conn->prepare("SELECT * FROM area WHERE id = '$area'");
			$result->execute();
			for($i=0; $row = $result->fetch(); $i++){
				$namaA = $row['area'];
			}
			$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
			$conn->exec($sql);
		}
		if (isset($_POST['shift3'])) {
			$shi = $_POST['shift3']; 
			$sft = $shi."(".$jkP.")";
			if (isset($_POST['area_shift3_1'])and isset($_POST['area_shift3_2'])){
				$area31 = $_POST['area_shift3_1'];
				$area32 = $_POST['area_shift3_2'];
				
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area31'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaA = $row['area'];
				}
				
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area32'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaAS = $row['area'];
				}
				if ($area31 == $area32) {
					echo "<script>alert('Area Shift 3 Tidak Boleh Sama!'); window.location='../pages/daftar_pegawai.php'</script>";
				} else {
					$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
				
					$conn->exec($sql);
					$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaAS."')";
				
					$conn->exec($sql);
				} 
			} else {
				if (isset($_POST['area_shift3_1'])){
					$area3 = $_POST['area_shift3_1'];
				} else if (isset($_POST['area_shift3_2'])){
					$area3 = $_POST['area_shift3_2'];
				}
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area3'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaA = $row['area'];
				}
				$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
				$conn->exec($sql);
			}
			
		}
		if (isset($_POST['shifts'])) {
			$sft = "Sabtu(".$jkP.")";
			if (isset($_POST['area_sabtu_1']) and isset($_POST['area_sabtu_2'])){
				$area31 = $_POST['area_sabtu_1'];
				$area32 = $_POST['area_sabtu_2'];
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area31'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaA = $row['area'];
				}
				
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area32'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaAS = $row['area'];
				}
				if ($area31 == $area32) {
					echo "<script>alert('Area Shift Sabtu Tidak Boleh Sama!'); window.location='../pages/daftar_pegawai.php'</script>";
				} else {
					$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
					$conn->exec($sql);
					$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaAS."')";
					$conn->exec($sql);
				} 
			} else {
				if (isset($_POST['area_sabtu_1'])){
					$area3 = $_POST['area_sabtu_1'];
				} else if (isset($_POST['area_sabtu_2'])){
					$area3 = $_POST['area_sabtu_2'];
				}
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area3'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaA = $row['area'];
				}
				$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
				$conn->exec($sql);
				
			}
		}
		if (isset($_POST['shiftm'])) {
			$sft = "Minggu(".$jkP.")";
			if (isset($_POST['area_minggu_1']) and isset($_POST['area_minggu_2'])){
				$area31 = $_POST['area_minggu_1'];
				$area32 = $_POST['area_minggu_2'];
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area31'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaA = $row['area'];
				}
				
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area32'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaAS = $row['area'];
				}
				if ($area31 == $area32) {
					echo "<script>alert('Area Shift Minggu Tidak Boleh Sama!'); window.location='../pages/daftar_pegawai.php'</script>";
				} else {
					$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
					$conn->exec($sql);
					$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaAS."')";
					$conn->exec($sql);
				} 
			} else {
				if (isset($_POST['area_minggu_1'])){
					$area3 = $_POST['area_minggu_1'];
				} else if (isset($_POST['area_minggu_2'])){
					$area3 = $_POST['area_minggu_2'];
				}
				$result = $conn->prepare("SELECT * FROM area WHERE id = '$area3'");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$namaA = $row['area'];
				}
				$sql = "INSERT INTO shiftPegawai VALUES (".$id.",'".$sft."','".$namaA."')";
				$conn->exec($sql);
			}
		}
		echo "<script>alert('Data Pegawai Berhasil Ditambahkan!'); window.location='../pages/daftar_pegawai.php'</script>";
	} catch (Exception $e) {
		echo "<script>alert('$e'); window.location='../pages/daftar_pegawai.php'</script>";
	}
	
	
?>