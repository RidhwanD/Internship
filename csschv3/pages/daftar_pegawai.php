<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Daftar Pegawai - Penjadwalan Cleaning Service</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
	<div class="header">
    	<a href="../index.php"><img src="../img/tmmin.png" alt="companylogo" title="Logo"></a>
        <h1>Sistem Reminder Jadwal Cleaning Service</h1>
    </div>
    
    <!-- =========================== NAVIGATION BAR ===================================-->
    
    <div class="navbar">	
      	<!-- <a href="../index.php" >Home</a> -->
        <div class="dropdown active">
            <button class="dropbtn ">Pengelolaan</button>
            <div class="dropdown-content">
                <a href="daftar_area.php">Daftar Area</a>
                <a href="daftar_ruangan.php">Daftar Ruangan</a>
                <a href="daftar_pegawai.php" class="active_sub">Daftar Pegawai</a>
            </div>
        </div> 
        <a href="daftar_penugasan.php">Penugasan</a>
        <a href="daftar_pengawasan.php">Pengawasan</a>
        <a href="view_progress.php">View Progress</a>
	</div>
    
    <!-- =========================== INPUT MODAL ===================================-->
    
    <div id="importPegawai" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close_import">&times;</span>
                <h3>Import Data Pegawai</h3>
                <a href="../database/download_petugas.php">Download Format Input</a>
            </div>
            <div class="modal-body">
        		<form name="myForm" id="myForm" onSubmit="return validateForm()" action="../database/import_pegawai.php" method="post" enctype="multipart/form-data">
                    <input type="file" id="filepegawai" name="filepegawai" />
                    <input type="submit" name="submit" value="Import" class="submit" /><br/>
                    <font color="red">* Import File akan meng-overwrite seluruh data pegawai lama.</font>
                </form>
             </div>
		</div>
    </div>
    
    <div id="addPegawai" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close">&times;</span>
                <h3>Input Data Pegawai</h3>
            </div>
            <div class="modal-body">
                <form action="../database/add_pegawai.php" method="POST">
                    <label for="namaP">Nama Pegawai</label>
                    <input type="text" id="namaPegawai" name="namaPegawai" placeholder="Masukkan nama.." required>
                
                    <label for="kontP">Kontak</label>
                    <input type="text" id="kontak" name="kontak" placeholder="Masukkan kontak.." required>
                
                	<label for="jkP">Jenis Kelamin</label><br>
                    <input type="radio" id="jkP" name="jkP" value="L" required>Laki-laki
                    <input type="radio" id="jkP" name="jkP" value="P" required>Perempuan <br>
                	
                    <label for="area">Shift - Area</label>
                    
                    <div class="area-shift">
                    <input type="checkbox" id="shiftNum" name="shift1" value="Shift 1" >Shift 1
                    <select id="area_shift" name="area_shift1" >
                        <option selected disabled>Pilih Area</option>
                        <?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    </div>
                    <div class="area-shift">
                    <input type="checkbox" id="shiftNum" name="shift2" value="Shift 2" >Shift 2
                    <select id="area_shift" name="area_shift2" >
                        <option selected disabled>Pilih Area</option>
                        <?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    </div>
                    <div class="area-shift">
                    <input type="checkbox" id="shiftNum" name="shift3" value="Shift 3" >Shift 3
                    <select id="area_shift3" name="area_shift3_1" >
                        <option selected disabled>Pilih Area</option>
                        <?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    <select id="area_shift3" name="area_shift3_2" >
                        <option selected disabled>Pilih Area</option>
                        
						<?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    </div>
                    <div class="area-shift">
                    <input type="checkbox" value="Sabtu" name="shifts" >Sabtu
                    <select id="area_shift3" name="area_sabtu_1"  >
                        <option selected disabled>Pilih Area</option>
                        
						<?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    <select id="area_shift3" name="area_sabtu_2" >
                        <option selected disabled>Pilih Area</option>
                        
						<?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    </div>
                    <div class="area-shift">
                    <input type="checkbox" value="Minggu" name="shiftm" >Minggu
                    <select id="area_shift3" name="area_minggu_1"  >
                        <option selected disabled>Pilih Area</option>
                        <?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    <select id="area_shift3" name="area_minggu_2"  >
                        <option selected disabled>Pilih Area</option>
                        <?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT id, area FROM area");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['id'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $row['area'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    </div>
                    <input type="submit" value="Submit" class="submit">
                </form>
            </div>
		</div>
    </div>
    
    <!-- =========================== KONTEN PAGE ===================================-->
    
    <div class="content">
    	<div class="page-header">
        	<h3>Tabel Data Pegawai</h3>
            <button class="button add-button" id="tambahDataPegawai"><img class="icon2" src="../img/add.png"> Tambah Data Baru</button>
            <button class="button add-button" id="importDataPegawai"><img class="icon2" src="../img/import.png"> Import Data</button>
        </div>
        <div class="data-table">
        <table>
        	<tr>
            	<th width="5%">No</th>
                <th width="15%">Nama Pegawai</th>
                <th width="8%">Kontak</th>
                <th width="10%">Gender</th>
                <th width="10%">Shift 1</th>
                <th width="10%">Shift 2</th>
                <th width="10%">Shift 3</th>
                <th width="10%">Shift Sabtu</th>
                <th width="12%">Shift Minggu</th>
                <th width="10%">Action</th>
            </tr>
            
			<?php
                require_once('../database/db.php');
                $result = $conn->prepare("SELECT pegawai.idPegawai, pegawai.namaPegawai, pegawai.kontak, pegawai.jenisKelamin, (SELECT area from shiftpegawai where shiftpegawai.shift LIKE 'Shift 1%' and shiftpegawai.idPegawai = pegawai.idPegawai) as shift1, (SELECT area from shiftpegawai where shiftpegawai.shift LIKE 'Shift 2%' and shiftpegawai.idPegawai = pegawai.idPegawai) as shift2 from pegawai ORDER BY namaPegawai ASC");
				
                $result->execute();
				$iterate = false;
                for($i=0; $row = $result->fetch(); $i++){
				if (sizeof($row)>0){
					$iterate = true;
				}
                $id=$row['idPegawai'];
				
				$result2 = $conn->prepare("SELECT area from shiftpegawai natural join pegawai where shift LIKE 'Shift 3%' and idPegawai = $id ORDER BY area");
				$result2->execute();
				
				$result3 = $conn->prepare("SELECT area from shiftpegawai natural join pegawai where shift LIKE 'Sabtu%' and idPegawai = $id ORDER BY area");
				$result3->execute();
				
				$result4 = $conn->prepare("SELECT area from shiftpegawai natural join pegawai where shift LIKE 'Minggu%' and idPegawai = $id ORDER BY area");
				$result4->execute();
            ?>
            
			<tr>
				<td> <?php echo ($i+1); ?></td>
                <td> <?php echo $row ['namaPegawai']; ?></td>
				<td> <?php echo $row ['kontak']; ?></td>
				<td> <?php echo $row ['jenisKelamin']; ?></td>
                <td> <?php echo $row ['shift1']; ?></td>
				<td> <?php echo $row ['shift2']; ?></td>
				<td> 
					<?php 
						$iterate2 = false;
						$area3 = [];
						for($i2=0; $row2 = $result2->fetch(); $i2++){
							if (sizeof($row2)>0){
								$iterate2 = true;
							}
							$area3[] = $row2['area'];
							echo $row2['area'],"<br>";
						}
					?>
                 </td>
                <td>
                	<?php
						$iterate3 = false;
						$areasabtu = [];
						for($i2=0; $row2 = $result3->fetch(); $i2++){
							if (sizeof($row2)>0){
								$iterate3 = true;
							}
							$areasabtu[] = $row2['area'];
							echo $row2['area'],"<br>";
						}
					?>
                </td>
				<td>
					<?php 
						$iterate4 = false;
						$areaminggu = [];
						for($i2=0; $row2 = $result4->fetch(); $i2++){
							if (sizeof($row2)>0){
								$iterate4 = true;
							}
							$areaminggu[] = $row2['area'];
							echo $row2['area'],"<br>";
						}
                    ?>
                </td>
				<td>
                	<div class="tooltip">
                        <button class="button btn-edit" onclick="edit_modal('<?php echo $id; ?>')">
                            <img class="icon" src="../img/edit.png" title="Ubah Data">
                        </button>
                    <span class="tooltiptext">Ubah Data</span>
   					</div>
                    <div class="tooltip">
                        <button class="button btn-delete" onclick="delete_pegawai('<?php echo $id; ?>','<?php echo $row ['namaPegawai']; ?>')">
                            <img class="icon" src="../img/remove.png" title="Hapus Data">
                        </button>
                    <span class="tooltiptext">Hapus Data</span>
   					</div>
				</td>
                
                <!-- =========================== EDIT MODAL ===================================-->
    			
                <div id="editPegawai<?php echo $id; ?>" class="modal slide-top">
                    <div class="modal-content">
                        <div class="modal-header">
                            <span onclick="close_edit('<?php echo $id; ?>')" class="close-edit">&times;</span>
                            <h3>Edit Data Pegawai</h3>
                        </div>
                        <div class="modal-body">
                            <form action="../database/edit_pegawai.php<?php echo '?id='.$id; ?>" method="POST">
                                <label for="namaP">Nama Pegawai</label>
                                <input type="text" id="namaPegawai" name="namaPegawai" value="<?php echo $row ['namaPegawai']; ?>" required>
                            
                                <label for="kontP">Kontak</label>
                                <input type="text" id="kontak" name="kontak" value="<?php echo $row ['kontak']; ?>" required>
                            
                                <label for="jkP">Jenis Kelamin</label><br>
                                <input type="radio" id="jkP" name="jkP" value="L" required <?php if ($row ['jenisKelamin'] == "L") echo "checked"; ?>>Laki-laki
                                <input type="radio" id="jkP" name="jkP" value="P" required <?php if ($row ['jenisKelamin'] == "P") echo "checked"; ?>>Perempuan <br>
                                
                                <label for="area">Shift - Area</label>
                                
                                <div class="area-shift">
                                <input type="checkbox" id="shiftNum" name="shift1" value="Shift 1"  <?php if ($row ['shift1'] != "") echo "checked"; ?>>Shift 1
                                <select id="area_shift" name="area_shift1" >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($row7['area']==$row['shift1']) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                </select>
                                </div>
                                <div class="area-shift">
                                <input type="checkbox" id="shiftNum" name="shift2" value="Shift 2"  <?php if ($row ['shift2'] != "") echo "checked"; ?>>Shift 2
                                <select id="area_shift" name="area_shift2" >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($row7['area']==$row['shift2']) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                </div>
                                <div class="area-shift">
                                <input type="checkbox" id="shiftNum" name="shift3" value="Shift 3"  <?php if ($iterate2) echo "checked"; ?>>Shift 3
                                <select id="area_shift3" name="area_shift3_1" >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>" <?php if ($iterate2 and sizeof($area3)>1) if ($row7['area']==$area3[1]) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                <select id="area_shift3" name="area_shift3_2" >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>" <?php if ($iterate2) if ($row7['area']==$area3[0]) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                </div>
                                <div class="area-shift">
                                <input type="checkbox" value="Sabtu" name="shifts"  <?php if ($iterate3) echo "checked"; ?>>Sabtu
                                <select id="area_shift3" name="area_sabtu_1"  >
                                	<option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($iterate3 and sizeof($areasabtu)>1) if ($row7['area']==$areasabtu[1]) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                <select id="area_shift3" name="area_sabtu_2" >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($iterate3) if ($row7['area']== $areasabtu[0]) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                </div>
                                <div class="area-shift">
                                <input type="checkbox" value="Minggu" name="shiftm"  <?php if ($iterate4) echo "checked"; ?>>Minggu
                                <select id="area_shift3" name="area_minggu_1"  >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($iterate4 and sizeof($areaminggu)>1) if ($row7['area']==$areaminggu[1]) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                <select id="area_shift3" name="area_minggu_2" >
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result7 = $conn->prepare("SELECT id, area FROM area");
										$result7->execute();
										$iterate7 = false;
										for($j=0; $row7 = $result7->fetch(); $j++){
										if (sizeof($row7)>0){
											$iterate7 = true;
										}
										$id=$row7['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($iterate4) if ($row7['area']==$areaminggu[0]) echo "selected='selected'"; ?>><?php echo $row7['area'];?></option>
									<?php } 
									if (!$iterate){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                                </div>
                                <input type="submit" value="Submit" class="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </tr>
            
            
            <?php } 
			if (!$iterate){ ?>
				<tr>
				<td colspan = 9>No data in table</td>
                </tr>
			<?php }?>
 		</table>
        </div>
    </div>
    
    <script>
	function delete_pegawai(id, nama)
	{
		 var r = confirm('Hapus Data Dengan Nama: '+nama+'?');
		 if(r == true)
		 {
			 window.location.href='../database/delete_pegawai.php?idPegawai='+id;
		 }
	}
	
	//=======================================================================================================//
	
	// Get the modal
	var modal_add = document.getElementById('addPegawai');
	
	// Get the button that opens the modal
	var btn_add = document.getElementById("tambahDataPegawai");
	
	// Get the <span> element that closes the modal
	var span_add = document.getElementsByClassName("close")[0];
	
	// When the user clicks on the button, open the modal 
	btn_add.onclick = function() {
		modal_add.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span_add.onclick = function() {
		modal_add.style.display = "none";
	}
	

	// Get the modal
	var modal_imp = document.getElementById('importPegawai');
	
	// Get the button that opens the modal
	var btn_imp = document.getElementById("importDataPegawai");
	
	// Get the <span> element that closes the modal
	var span_imp = document.getElementsByClassName("close_import")[0];
	
	// When the user clicks on the button, open the modal 
	btn_imp.onclick = function() {
		modal_imp.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span_imp.onclick = function() {
		modal_imp.style.display = "none";
	}
	//=======================================================================================================//
		
	// When the user clicks on the button, open the modal 
	function edit_modal(id) {
		var kode = 'editPegawai'+id;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_edit(id) {
		var kode = 'editPegawai'+id;
		document.getElementById(kode).style.display = "none";
	}
	
	//=======================================================================================================//
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal_add) {
			modal_add.style.display = "none";
		}
	}
	
	function validateForm()
    {
        function hasExtension(inputID, exts) {
            var fileName = document.getElementById(inputID).value;
            return (new RegExp('(' + exts.join('|').replace(/\./g, '\\.') + ')$')).test(fileName);
        }
 
        if(!hasExtension('filepegawai', ['.xls'])){
            alert("Hanya file XLS (Excel 2003) yang diijinkan.");
            return false;
        }
    }
	</script>

</body>
</html>