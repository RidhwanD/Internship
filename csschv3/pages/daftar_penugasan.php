<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Daftar Penugasan - Penjadwalan Cleaning Service</title>
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
        <div class="dropdown">
            <button class="dropbtn ">Pengelolaan</button>
            <div class="dropdown-content">
                <a href="daftar_area.php">Daftar Area</a>
                <a href="daftar_ruangan.php">Daftar Ruangan</a>
                <a href="daftar_pegawai.php">Daftar Pegawai</a>
            </div>
        </div> 
        <a href="daftar_penugasan.php" class="active">Penugasan</a>
        <a href="daftar_pengawasan.php">Pengawasan</a>
        <a href="view_progress.php">View Progress</a>
	</div>
    
    <!-- =========================== INPUT MODAL ===================================-->
    
    <div id="importTask" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close_import">&times;</span>
                <h3>Import Data Penugasan</h3>
                <a href="../database/download_task.php">Download Format Input</a>
            </div>
            <div class="modal-body">
        		<form name="myForm" id="myForm" onSubmit="return validateForm()" action="../database/import_penugasan.php" method="post" enctype="multipart/form-data">
                    <input type="file" id="filepenugasan" name="filepenugasan" />
                    <input type="submit" name="submit" value="Import" class="submit" /><br/>
                    <font color="red">* Import File akan meng-overwrite seluruh data penugasan lama.</font>
                </form>
             </div>
		</div>
    </div>
    
    <div id="addTask" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close">&times;</span>
                <h3>Input Data Penugasan</h3>
            </div>
            <div class="modal-body">
                <form action="../database/add_task.php" method="POST">
                    <label for="kodeR">Nama Ruangan</label>
                    <select id="kodeR" name="kodeR" required>
                        <option selected disabled>Pilih Ruangan</option>
                        <?php 
							require_once('../database/db.php');
                			$result = $conn->prepare("SELECT kodeRuangan, namaRuangan, area FROM ruangan");
							$result->execute();
							$iterate = false;
							for($i=0; $row = $result->fetch(); $i++){
							if (sizeof($row)>0){
								$iterate = true;
							}
							$id=$row['kodeRuangan'];
						?>
                        <option value="<?php echo $id;?>"><?php echo $id."&emsp;".$row['namaRuangan'];?></option>
                        <?php } 
						if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
         
         			<label for="shift">Shift</label>
                    <select id="shift" name="shift" required>
                        <option selected disabled>Pilih Shift</option>
                        <option value="Shift 1(L)">Shift 1(L)</option>
                        <option value="Shift 1(P)">Shift 1(P)</option>
                        <option value="Shift 2(L)">Shift 2(L)</option>
                        <option value="Shift 2(P)">Shift 2(P)</option>
                        <option value="Shift 3(L)">Shift 3(L)</option>
                        <option value="Shift 3(P)">Shift 3(P)</option>
                        <option value="Sabtu(L)">Sabtu(L)</option>
                        <option value="Sabtu(P)">Sabtu(P)</option>
                        <option value="Minggu(L)">Minggu(L)</option>
                        <option value="Minggu(P)">Minggu(P)</option>
                    </select>
         			       
                    <label for="durasi">Durasi</label>
                    <input type="text" id="durasi" name="durasi" placeholder="0" required>
                    
                    <!-- <label for="durasi">Deskripsi Tugas</label>
                    <textarea id="desc" name="desc" placeholder="ex. Pengambilan sampah"></textarea>
          			-->
                    <input type="submit" value="Submit" class="submit">
                    
                </form>
            </div>
		</div>
    </div>
    
    <!-- =========================== KONTEN PAGE ===================================-->
    <?php
		if (isset($_POST['area'])){
			$area = $_POST['area'];
		} else {
			$area = "";
		}
	?>
    <div class="content">
    	<div class="page-header">
        	<h3>Tabel Penugasan <?php echo $area; ?></h3>
            <table>
            <tr>
                    <td width="60%"><form action="daftar_penugasan.php" method="POST" >
                        <select id="stMin" name="area" >
                            <option selected disabled>Pilih Area</option>
                            <option value="">All Area</option>
                            <option value="LT 1">LT 1</option>
                            <option value="LT 2">LT 2</option>
                            <option value="LT 3">LT 3</option>
                            <option value="LT 4">LT 4</option>
                            <option value="LT 5">LT 5</option>
                            <option value="LT 6">LT 6</option>
                            <option value="LT 7">LT 7</option>
                            <option value="Annex">Annex</option>
                            <option value="Pool">Pool</option>
                            <option value="Studio Design">Studio Design</option>
                            <option value="Gondola">Gondola</option>
                            <option value="SPV">SPV</option>
                        </select>
                        <input type="submit" class="sub2">
                    </form></td>
                    <td width="17%"><button class="button add-button" id="importDataTask"><img class="icon2" src="../img/import.png"> Import Data</button></td>
                    <td width="23%"><button class="button add-button" id="tambahDataTask"><img class="icon2" src="../img/add.png"> Tambah Data Baru</button></td>
                </tr>
            </table>
            
        </div>
        <div class="data-table">
        <table>
        	<tr>
            	<th width="5%">No</th>
                <th width="15%">Ruangan</th>
                <th width="10%">Area</th>
                <th width="7%">Shift</th>
                <th width="12%">PIC</th>
                <th width="11%">Kontak</th>
                <th width="5%">Durasi</th>
                <!-- <th width="20%">Deskripsi</th> -->
                <th width="19%">Action</th>
            </tr>
            
            <?php
                require_once('../database/db.php');
                $result = $conn->prepare("SELECT idTask, koderuangan, namaRuangan, area, shift, duration, deskripsi FROM `task` natural join ruangan where area like '%$area%' ORDER BY namaruangan, shift");
				$result->execute(); 
				$iterate = false;
				$g = 0;
                for($i=0; $row = $result->fetch(); $i++){
				if (sizeof($row)>0){
					$iterate = true;
				}
                $id=$row['idTask'];
				$shift=$row['shift'];
				$kodeR=$row['koderuangan'];
				$result2 = $conn->prepare("select namaPegawai, kontak from pegawai natural join shiftpegawai where shift = '$shift' and area = (select area from ruangan where kodeRuangan = '$kodeR')");
				$result2->execute(); 
				
                
            ?>
            <tr>
            	<td> <?php $g++; echo $g; ?></td>
				<td> <?php echo $row ['namaRuangan']; ?></td>
                <td> <?php echo $row ['area']; ?></td>
				<td> <?php echo $row ['shift']; ?></td>
				<td> 
				<?php 
					for($iw=0; $row2 = $result2->fetch(); $iw++){
						echo $row2['namaPegawai'],"<br>"; 
					}
				?></td>
                <td> 
				<?php
					$result2->execute();  
					for($iw=0; $row2 = $result2->fetch(); $iw++){
						echo $row2['kontak'],"<br>"; 
					}
				?>
                </td>
                <td> <?php echo $row ['duration']; ?></td>
                <!-- <td> <?php // echo $row ['deskripsi']; ?></td> -->
				<td>
                	<div class="tooltip">
                        <button class="button btn-detail" onclick="detail_modal('<?php echo $id; ?>')">
                            <img class="icon" src="../img/detail.png">
                        </button>
                    <span class="tooltiptext">Lihat Detail</span>
   					</div>
                    <div class="tooltip">
                        <button class="button btn-detail" onclick="add_detail_modal('<?php echo $id; ?>')">
                            <img class="icon add-icon" src="../img/add.png">
                        </button>
                    <span class="tooltiptext">Tambah Start Time</span>
   					</div>
                    <div class="tooltip">
                        <button class="button btn-edit" onclick="edit_modal('<?php echo $id; ?>')">
                            <img class="icon" src="../img/edit.png">
                        </button>
                    <span class="tooltiptext">Ubah Data</span>
   					</div>
                    <div class="tooltip">
                        <button class="button btn-delete" onclick="delete_task('<?php echo $id; ?>')">
                            <img class="icon" src="../img/remove.png">
                        </button>
                    <span class="tooltiptext">Hapus Data</span>
   					</div>
				</td>
                
                <!-- ================================= MODAL ADD DETAIL ================================ -->
                
                <div id="addDetailTugas<?php echo $id; ?>" class="modal slide-top">
                    <div class="modal-content">
                        <div class="modal-header">
                            <span onclick="close_add_detail('<?php echo $id; ?>')"class="close">&times;</span>
                            <h3>Detail Penugasan</h3>
                        </div>
                        <div class="modal-body">
                        <form action="../database/add_detail_task.php<?php echo '?id='.$id; ?><?php echo '&dur='.$row ['duration']; ?>" method="POST">
                        	<label for="starttime">Start Time</label><br>
                            <select id="stJam" name="stJam" required >
                                <option selected disabled>Pilih Jam</option>
                                <?php for ($i = 5; $i <= 22; $i++){ ?>
                                    <option value="<?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
                                <?php } ?>
                            </select>
                            <select id="stMin" name="stMin" required >
                                <option selected disabled>Pilih Menit</option>
                                <?php for ($i = 0; $i < 60; $i++){ ?>
                                    <option value="<?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
                                <?php } ?>
                            </select>
                        	<input type="submit" value="Submit" class="submit3">
               			</form>
                        </div>
                    </div>
                </div>
                
                <!-- =================================== MODAL DETAIL ================================== -->
                
                <div id="detailTugas<?php echo $id; ?>" class="modal slide-top">
                    <div class="modal-content">
                        <div class="modal-header">
                            <span onclick="close_detail('<?php echo $id; ?>')"class="close">&times;</span>
                            <h3>Detail Penugasan</h3>
                            <p>Ruangan&emsp;: <?php echo $row ['namaRuangan']; ?></p>
                            <p>Shift&emsp;&emsp;&ensp;: <?php echo $row ['shift']; ?></p>
                        </div>
                        <div class="modal-body">
                            <div class="table">
                                <div class="tr">
                                    <div class="th" >Occurence</div>
                                    <div class="th" >Start Time</div>
                                    <div class="th" >End Time</div>
                                    <div class="th" >Action</div>
                                </div>
								<?php
                                    $sql = "SELECT idTask, occurence, starttime, endtime FROM detailtask WHERE idTask = $id ORDER BY occurence";
                                    $result2 = $conn->prepare($sql);
                                    $result2->execute();
                                    $iterate2 = false;
                                    for($j=0; $row2 = $result2->fetch(); $j++){
                                    if (sizeof($row2)>0){
                                        $iterate2 = true;
                                    }
                                ?>
                                <div class="tr" >
                                    <div class="td <?php if ($j % 2 == 1) echo "td2" ?>" ><?php echo $row2['occurence'] ?></div>
                                    <div class="td <?php if ($j % 2 == 1) echo "td2" ?>"><?php echo $row2['starttime'] ?></div>
                                    <div class="td <?php if ($j % 2 == 1) echo "td2" ?>"><?php echo $row2['endtime'] ?></div>
                                    <div class="td <?php if ($j % 2 == 1) echo "td2" ?>">
                                    <div class="tooltip">
                                        <button class="button btn-edit" onclick="edit_detail('<?php echo $id; ?>','<?php echo $row2['occurence']; ?>')">
                                            <img class="icon" src="../img/edit.png">
                                        </button>
                                    <span class="tooltiptext">Ubah Start Time</span>
   									</div>
                                    <div class="tooltip">
                                        <button class="button btn-delete" onclick="delete_detail('<?php echo $id; ?>','<?php echo $row2['occurence']; ?>')">
                                            <img class="icon" src="../img/remove.png">
                                        </button>
                                    <span class="tooltiptext">Hapus Start Time</span>
   									</div>
                                    </div>
                                    
         				<!-- =========================== MODAL EDIT DETAIL ============================ -->
                
                                    <div id="editDetailTask<?php echo $id; ?>-<?php echo $row2['occurence']; ?>" class="modal slide-top">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <span onclick="close_edit_detail('<?php echo $id; ?>','<?php echo $row2['occurence']; ?>')"class="close">&times;</span>
                                                <h3>Edit Start Time</h3>
                                            </div>
                                            <div class="modal-body">
                                            <form action="../database/edit_detail_task.php<?php echo '?id='.$id; ?><?php echo '&dur='.$row ['duration']; ?><?php echo '&occur='.$row2['occurence']; ?>" method="POST">
                                                <label for="starttime">Start Time</label><br>
                                                <select id="stJam" name="stJam" required >
                                                    <option selected disabled>Pilih Jam</option>
                                                    <?php for ($i = 5; $i <= 22; $i++){ 
                                                        $val = str_pad($i,2,"0",STR_PAD_LEFT);
                                                    ?>
                                                        <option <?php if ($val == substr($row2['starttime'],0,2)) echo "selected"; ?> value="<?php echo $val ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
                                                    <?php } ?>
                                                </select>
                                                <select id="stMin" name="stMin" required >
                                                    <option selected disabled>Pilih Menit</option>
                                                    <?php for ($i = 0; $i < 60; $i++){ 
                                                        $val = str_pad($i,2,"0",STR_PAD_LEFT);
                                                    ?>
                                                        <option <?php if ($val == substr($row2['starttime'],3,2)) echo "selected"; ?> value="<?php echo $val; ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
                                                    <?php } ?>
                                                </select>
                                                <input type="submit" value="Submit" class="submit3">
                                            </form>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                <?php } 
								if (!$iterate2){ ?>
									<div class="tr">
									<div class="td" >No data in table</div>
									</div>
								<?php }?>
                                
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- =================================== MODAL EDIT ================================== -->
                
                <div id="editTask<?php echo $id; ?>" class="modal slide-top">
                    <div class="modal-content">
                        <div class="modal-header">
                            <span onclick="close_edit('<?php echo $id; ?>')"class="close">&times;</span>
                            <h3>Edit Data Penugasan</h3>
                        </div>
                        <div class="modal-body">
                            <form action="../database/edit_penugasan.php<?php echo "?id=$id"?>" method="POST">
                                <label for="kodeR">Nama Ruangan</label>
                                <select id="kodeR" name="kodeR" required>
                                    <option selected disabled>Pilih Ruangan</option>
                                    <?php 
                                        require_once('../database/db.php');
                                        $result2 = $conn->prepare("SELECT kodeRuangan, namaRuangan, area FROM ruangan");
                                        $result2->execute();
                                        $iterate2 = false;
                                        for($i=0; $row2 = $result2->fetch(); $i++){
                                        if (sizeof($row2)>0){
                                            $iterate2 = true;
                                        }
                                        $id2=$row2['kodeRuangan'];
                                    ?>
                                    <option value="<?php echo $id2;?>" <?php if ($row['koderuangan']==$id2) echo "selected";?>><?php echo $id2."&emsp;".$row2['namaRuangan'];?></option>
                                    <?php } 
                                    if (!$iterate){ ?>
                                        <option disabled>Tidak Ada Data</option>
                                    <?php }?>
                                </select>
                     
                                <label for="shift">Shift</label>
                                <select id="shift" name="shift" required>
                                    <option selected disabled>Pilih Shift</option>
                                    <option value="Shift 1(L)"<?php if ($row['shift']=="Shift 1(L)") echo "selected";?>>Shift 1(L)</option>
                                    <option value="Shift 1(P)"<?php if ($row['shift']=="Shift 1(P)") echo "selected";?>>Shift 1(P)</option>
                                    <option value="Shift 2(L)"<?php if ($row['shift']=="Shift 2(L)") echo "selected";?>>Shift 2(L)</option>
                                    <option value="Shift 2(P)"<?php if ($row['shift']=="Shift 2(P)") echo "selected";?>>Shift 2(P)</option>
                                    <option value="Shift 3(L)"<?php if ($row['shift']=="Shift 3(L)") echo "selected";?>>Shift 3(L)</option>
                                    <option value="Shift 3(P)"<?php if ($row['shift']=="Shift 3(P)") echo "selected";?>>Shift 3(P)</option>
                                    <option value="Sabtu(L)"<?php if ($row['shift']=="Sabtu(L)") echo "selected";?>>Sabtu(L)</option>
                                    <option value="Sabtu(P)"<?php if ($row['shift']=="Sabtu(P)") echo "selected";?>>Sabtu(P)</option>
                                    <option value="Minggu(L)"<?php if ($row['shift']=="Minggu(L)") echo "selected";?>>Minggu(L)</option>
                                    <option value="Minggu(P)"<?php if ($row['shift']=="Minggu(P)") echo "selected";?>>Minggu(P)</option>
                                </select>
                                       
                                <label for="durasi">Durasi</label>
                                <input type="text" id="durasi" name="durasi" placeholder="0" required value="<?php echo $row['duration'];?>">
                                <!-- <label for="durasi">Deskripsi Tugas</label>
                    			<textarea id="desc" name="desc" placeholder="ex. Pengambilan sampah"><?php echo $row['deskripsi']; ?></textarea> -->
          			
                                
                                <input type="submit" value="Submit" class="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </tr>
            
            
            <?php } 
			if (!$iterate){ ?>
				<tr>
				<td colspan = 6>No data in table</td>
                </tr>
			<?php }?>
        </table>
    </div>
    <script>
	
	function delete_detail(id, occur)
	{
		 var r = confirm('Hapus Data?');
		 if(r == true)
		 {
			 window.location.href='../database/delete_detail_task.php?idTask='+id+'&occur='+occur;
		 }
	}
	function delete_task(id)
	{
		 var r = confirm('Hapus Data?');
		 if(r == true)
		 {
			 window.location.href='../database/delete_task.php?idTask='+id;
		 }
	}
	
	// Get the modal
	var modal_add = document.getElementById('addTask');
	
	// Get the button that opens the modal
	var btn_add = document.getElementById("tambahDataTask");
	
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
	var modal_imp = document.getElementById('importTask');
	
	// Get the button that opens the modal
	var btn_imp = document.getElementById("importDataTask");
	
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
	
	
	
    function detail_modal(id) {
		var kode = 'detailTugas'+id;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_detail(id) {
		var kode = 'detailTugas'+id;
		document.getElementById(kode).style.display = "none";
	}
	
	function edit_detail(id,occ) {
		var kode = 'editDetailTask'+id+'-'+occ;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_edit_detail(id,occ) {
		var kode = 'editDetailTask'+id+'-'+occ;
		document.getElementById(kode).style.display = "none";
	}
	
	function add_detail_modal(id) {
		var kode = 'addDetailTugas'+id;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_add_detail(id) {
		var kode = 'addDetailTugas'+id;
		document.getElementById(kode).style.display = "none";
	}
	
	function edit_modal(id) {
		var kode = 'editTask'+id;
		document.getElementById(kode).style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	function close_edit(id) {
		var kode = 'editTask'+id;
		document.getElementById(kode).style.display = "none";
	}
	</script>
</body>
</html>