<html>
<head>
    <meta charset="utf-8">
    <title>Penjadwalan Cleaning Service</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
	
	<div class="header">
    	<a href="../index.php"><img src="../img/tmmin.png" alt="companylogo" title="Logo"></a>
        <h1>Sistem Reminder Jadwal Cleaning Service</h1>
    </div >
    <div class="forms">
    	<?php 
		require_once('../database/db.php');
			$id = $_GET['id'];
			$result = $conn->prepare("SELECT namaPegawai, kontak, startTime, duration FROM `actual` where id = $id");
			$result->execute(); 
			$iterate = false;
			for($i=0; $row = $result->fetch(); $i++){
				$pic = $row['namaPegawai'];
				$kontak = $row['kontak'];
				$start = $row['startTime'];
				$dur = $row['duration'];
			}
		?>
        <h3>Edit Data Jadwal Cleaning Service</h3>
    	<form action="../database/edit_actual.php<?php echo '?id='.$id; ?>" method="POST">
        <label for="namaP">Nama Pegawai</label>
        <input type="text" id="namaPegawai" name="namaPegawai" value="<?php echo $pic; ?>" required>
    
        <label for="kontP">Kontak</label>
        <input type="text" id="kontak" name="kontak" value="<?php echo $kontak; ?>" required>
        <input type="checkbox" value="editall" name="editall" >Ubah Nama dan Kontak untuk seluruh data dengan Nama: <?php echo $pic; ?> dan Kontak: <?php echo $kontak; ?>
        <br>
        <br>
        <label for="durasi">Durasi</label>
        <input type="text" id="durasi" name="durasi" placeholder="0" value="<?php echo $dur; ?>" >
        <label for="kontP">Start Time</label><br>
        <select id="stJam" name="stJam" required >
            <option selected disabled>Pilih Jam</option>
            <?php for ($i = 5; $i <= 22; $i++){ 
                $val = str_pad($i,2,"0",STR_PAD_LEFT);
            ?>
                <option <?php if ($val == substr($start,0,2)) echo "selected"; ?> value="<?php echo $val ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
            <?php } ?>
        </select>
        <select id="stMin" name="stMin" required >
            <option selected disabled>Pilih Menit</option>
            <?php for ($i = 0; $i < 60; $i++){ 
                $val = str_pad($i,2,"0",STR_PAD_LEFT);
            ?>
            <option <?php if ($val == substr($start,3,2)) echo "selected"; ?> value="<?php echo $val; ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
            <?php } ?>
        </select>
        <input type="submit" value="Submit" class="submit">
    </form>
    <font color="red">* Perubahan yang dilakukan hanya untuk hari ini saja. Untuk perubahan permanen, harap ubah di bagian pengelolaan dan/atau penugasan JUGA.</font>
	</div>
    	
</body>
</html>
