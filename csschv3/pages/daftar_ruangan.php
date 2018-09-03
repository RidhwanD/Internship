<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Daftar Ruangan - Penjadwalan Cleaning Service</title>
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
                <a href="daftar_ruangan.php" class="active_sub">Daftar Ruangan</a>
                <a href="daftar_pegawai.php">Daftar Pegawai</a>
            </div>
        </div> 
        <a href="daftar_penugasan.php">Penugasan</a>
        <a href="daftar_pengawasan.php">Pengawasan</a>
        <a href="view_progress.php">View Progress</a>
	</div>
    
    <!-- =========================== INPUT MODAL ===================================-->
    
    <div id="importRuangan" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close_import">&times;</span>
                <h3>Import Data Ruangan</h3>
                <a href="../database/download_ruangan.php">Download Format Input</a>
            </div>
            <div class="modal-body">
        		<form name="myForm" id="myForm" onSubmit="return validateForm()" action="../database/import_ruangan.php" method="post" enctype="multipart/form-data">
                    <input type="file" id="fileruangan" name="fileruangan" />
                    <input type="submit" name="submit" value="Import" class="submit" /><br/>
                    <font color="red">* Overwrite data lama dapat menghapus data pada tabel penugasan. Untuk perubahan data lama, sebaiknya gunakan fitur edit.</font>
                </form>
             </div>
		</div>
    </div>
    
    
    <div id="addRuangan" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close">&times;</span>
                <h3>Input Data Ruangan</h3>
            </div>
            <div class="modal-body">
            	<form action="../database/add_ruangan.php" method="POST">
                    <label for="kodeR">Functional Location</label>
                    <input type="text" id="kodeRuangan" name="kodeRuangan" placeholder="Masukkan kode.." required>
                
                    <label for="namaR">Nama Ruangan</label>
                    <input type="text" id="namaRuangan" name="namaRuangan" placeholder="Masukkan nama.." required>
                
                    <label for="area">Area</label>
                    <select id="area" name="area" required>
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
          
                    <input type="submit" value="Submit" class="submit">
                </form>
            </div>
		</div>
    </div>
    
    <!-- =========================== KONTEN PAGE ===================================-->
    
    <div class="content">
    	<div class="page-header">
        	<h3>Tabel Data Ruangan</h3>
            <button class="button add-button" id="tambahDataRuangan"><img class="icon2" src="../img/add.png"> Tambah Data Baru</button>
            <button class="button add-button" id="importDataRuangan"><img class="icon2" src="../img/import.png"> Import Data</button>
        </div>
        <div class="data-table">
        <table>
        	<tr>
            	<th width="5%">No</th>
                <th width="15%">Functional Location</th>
                <th width="40%">Nama Ruangan</th>
                <th width="30%">Area</th>
                <th width="10%">Action</th>
            </tr>
                            
			<?php
                require_once('../database/db.php');
                $result = $conn->prepare("SELECT * FROM ruangan ORDER BY kodeRuangan ASC");
                $result->execute();
				$iterate = false;
                for($i=0; $row = $result->fetch(); $i++){
				if (sizeof($row)>0){
					$iterate = true;
				}
                $id=$row['kodeRuangan'];
            ?>
           
			<tr>
				<td> <?php echo ($i+1); ?></td>
                <td> <?php echo $row ['kodeRuangan']; ?></td>
				<td> <?php echo $row ['namaRuangan']; ?></td>
				<td> <?php echo $row ['area']; ?></td>
				<td>
                	<div class="tooltip">
                    	<button class="button btn-edit" onclick="edit_modal('<?php echo $id; ?>')">
                    	<img class="icon" src="../img/edit.png">
                    	</button>
                    <span class="tooltiptext">Ubah Data</span>
   					</div>
					<!--<a href="ruangan_edit.php<?php// echo '?id='.$id; ?>" class="button btn-edit">Edit</a>-->				<div class="tooltip">
                        <button class="button btn-delete" onclick="delete_id('<?php echo $id; ?>')">
                            <img class="icon" src="../img/remove.png">
                        </button>
                    <span class="tooltiptext">Hapus Data</span>
   					</div>
				</td>
                
                <!-- =========================== EDIT MODAL ===================================-->
    
                <div id="editRuangan<?php echo $id; ?>" class="modal slide-top">
                   	<div class="modal-content">
                        <div class="modal-header">
                            <span onclick="close_edit('<?php echo $id; ?>')" class="close-edit">&times;</span>
                            <h3>Edit Data Ruangan</h3>
                        </div>
                        <div class="modal-body">
                            <form action="../database/edit_ruangan.php<?php echo '?kode='.$id.'&nama='.$row ['namaRuangan'].'&area='.$row ['area']; ?>" method="POST">
                                <label for="kodeR">Functional Location</label>
                                <input type="text" id="kodeRuangan" name="kodeRuangan" value='<?php echo $row ['kodeRuangan']; ?>' required>
                            
                                <label for="namaR">Nama Ruangan</label>
                                <input type="text" id="namaRuangan" name="namaRuangan" value='<?php echo $row ['namaRuangan']; ?>' required>
                            
                                <label for="area">Area</label>
                                <select id="area" name="area" required>
                                    <option selected disabled>Pilih Area</option>
                                    <?php 
										require_once('../database/db.php');
										$result2 = $conn->prepare("SELECT id, area FROM area");
										$result2->execute();
										$iterate2 = false;
										for($j=0; $row2 = $result2->fetch(); $j++){
										if (sizeof($row2)>0){
											$iterate2 = true;
										}
										$id=$row2['id'];
									?>
									<option value="<?php echo $id;?>"<?php if ($row2['area']==$row['area']) echo "selected='selected'"; ?>><?php echo $row2['area'];?></option>
									<?php } 
									if (!$iterate2){ ?>
										<option disabled>Tidak Ada Data</option>
									<?php }?>
                                    
                                </select>
                      
                                <input type="submit" value="Submit"  class="submit">
                            </form>
                		</div>
                	</div>
                </div>
                
            </tr>
            
            
            <?php } 
			if (!$iterate){ ?>
				<tr>
				<td colspan = 4>No data in table</td>
                </tr>
			<?php }?>
 		</table>
        </div>
    </div>
    
    <script>
	function delete_id(id)
	{
		 var r = confirm('Hapus Data Dengan ID: '+id+'?');
		 if(r == true)
		 {
			 window.location.href='../database/delete_ruangan.php?kodeRuangan='+id;
		 }
	}
	
	//=======================================================================================================//
	
	// Get the modal
	var modal_add = document.getElementById('addRuangan');
	
	// Get the button that opens the modal
	var btn_add = document.getElementById("tambahDataRuangan");
	
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
	
//=======================================================================================================//
	
	// Get the modal
	var modal_imp = document.getElementById('importRuangan');
	
	// Get the button that opens the modal
	var btn_imp = document.getElementById("importDataRuangan");
	
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
		var kode = 'editRuangan'+id;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_edit(id) {
		var kode = 'editRuangan'+id;
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
 
        if(!hasExtension('fileruangan', ['.xls'])){
            alert("Hanya file XLS (Excel 2003) yang diijinkan.");
            return false;
        }
    }
	</script>

</body>
</html>