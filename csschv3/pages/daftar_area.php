<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Daftar Area - Penjadwalan Cleaning Service</title>
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
                <a href="daftar_area.php" class="active">Daftar Area</a>
                <a href="daftar_ruangan.php">Daftar Ruangan</a>
                <a href="daftar_pegawai.php">Daftar Pegawai</a>
            </div>
        </div> 
        <a href="daftar_penugasan.php">Penugasan</a>
        <a href="daftar_pengawasan.php">Pengawasan</a>
        <a href="view_progress.php">View Progress</a>
	</div>
    
    <!-- =========================== INPUT MODAL ===================================-->
    
    <div id="importArea" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close_import">&times;</span>
                <h3>Import Data Area</h3>
                <a href="../database/download_area.php">Download Format Input</a>
            </div>
            <div class="modal-body">
        		<form name="myForm" id="myForm" onSubmit="return validateForm()" action="../database/import_area.php" method="post" enctype="multipart/form-data">
                    <input type="file" id="filearea" name="filearea" />
                    <input type="submit" name="submit" value="Import" class="submit" /><br/>
                    <font color="red">* Import File akan meng-overwrite seluruh data area lama.</font>
                </form>
             </div>
		</div>
    </div>
    
    <div id="addArea" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close">&times;</span>
                <h3>Input Data Pegawai</h3>
            </div>
            <div class="modal-body">
                <form action="../database/add_area.php" method="POST">
                    <label for="namaP">Nama Area</label>
                    <input type="text" id="namaArea" name="namaArea" placeholder="Masukkan nama area.." required>
                    <input type="submit" value="Submit" class="submit">
                </form>
            </div>
		</div>
    </div>
    
    <!-- =========================== KONTEN PAGE ===================================-->
    
    <div class="content">
    	<div class="page-header">
        	<h3>Tabel Data Area</h3>
            <button class="button add-button" id="tambahDataArea"><img class="icon2" src="../img/add.png"> Tambah Data Baru</button>
            <button class="button add-button" id="importDataArea"><img class="icon2" src="../img/import.png"> Import Data</button>
        </div>
        <div class="data-table">
        <table>
        	<tr>
                <th width="5%">No</th>
                <th width="85%">Area</th>
                <th width="10%">Action</th>
            </tr>
            
			<?php
                require_once('../database/db.php');
                $result = $conn->prepare("SELECT id, area from area ORDER BY area ASC");
				
                $result->execute();
				$iterate = false;
                for($i=0; $row = $result->fetch(); $i++){
					if (sizeof($row)>0){
								$iterate = true;
							}
					$id = $row['id'];
            ?>
            
			<tr>
				<td> <?php echo ($i+1); ?></td>
                <td> <?php echo $row ['area']; ?></td>
				<td>
                	<div class="tooltip">
                        <button class="button btn-edit" onclick="edit_modal('<?php echo $id; ?>')">
                            <img class="icon" src="../img/edit.png" title="Ubah Data">
                        </button>
                    <span class="tooltiptext">Ubah Data</span>
   					</div>
                    <div class="tooltip">
                        <button class="button btn-delete" onclick="delete_area('<?php echo $id; ?>','<?php echo $row['area']; ?>')">
                            <img class="icon" src="../img/remove.png" title="Hapus Data">
                        </button>
                    <span class="tooltiptext">Hapus Data</span>
   					</div>
				</td>
                
                <!-- =========================== EDIT MODAL ===================================-->
    			
                <div id="editArea<?php echo $id; ?>" class="modal slide-top">
                    <div class="modal-content">
                        <div class="modal-header">
                            <span onclick="close_edit('<?php echo $id; ?>')" class="close-edit">&times;</span>
                            <h3>Edit Data Pegawai</h3>
                        </div>
                        <div class="modal-body">
                            <form action="../database/edit_area.php<?php echo '?id='.$id; ?>" method="POST">
                                <label for="namaP">Nama Area</label>
                                <input type="text" id="namaArea" name="namaArea" value="<?php echo $row['area']; ?>" required>
                                <input type="submit" value="Submit" class="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </tr>
            
            
            <?php } 
			if (!$iterate){ ?>
				<tr>
				<td colspan = 3>No data in table</td>
                </tr>
			<?php }?>
 		</table>
        </div>
    </div>
    
    <script>
	function delete_area(id, nama)
	{
		 var r = confirm('Hapus Data Dengan Nama: '+nama+'?');
		 if(r == true)
		 {
			 window.location.href='../database/delete_area.php?id='+id;
		 }
	}
	
	//=======================================================================================================//
	
	// Get the modal
	var modal_add = document.getElementById('addArea');
	
	// Get the button that opens the modal
	var btn_add = document.getElementById("tambahDataArea");
	
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
	var modal_imp = document.getElementById('importArea');
	
	// Get the button that opens the modal
	var btn_imp = document.getElementById("importDataArea");
	
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
		var kode = 'editArea'+id;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_edit(id) {
		var kode = 'editArea'+id;
		document.getElementById(kode).style.display = "none";
	}
	
	//=======================================================================================================//
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal_add) {
			modal_add.style.display = "none";
		}
	}
	
	
	</script>

</body>
</html>