<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="60">

<title>Daftar Pengawasan - Penjadwalan Cleaning Service</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
	
</head>
	
<body>
	<?php
		require_once('../database/db.php');
                			
    	function inBetween($starttime, $endtime, $timeChecked){
			if (substr($starttime,0,2)==substr($endtime,0,2)){
				if (substr($starttime,0,2)==substr($timeChecked,0,2)){
					if ((substr($timeChecked,3,2) >= substr($starttime,3,2)) and (substr($timeChecked,3,2) <= substr($endtime,3,2))) return true;
				}
			} else if (substr($starttime,0,2)!=substr($endtime,0,2)){
				if ((substr($starttime,0,2)==substr($timeChecked,0,2)) and (substr($starttime,3,2)<=substr($timeChecked,3,2))) return true;
				else if ((substr($endtime,0,2)==substr($timeChecked,0,2)) and (substr($endtime,3,2)>=substr($timeChecked,3,2))) return true;
			}
			return false;
		}
		
		function isEarlier($timeChecked, $timeComp){
			if (substr($timeChecked,0,2)<substr($timeComp,0,2)) return true;
			else if (substr($timeChecked,0,2)==substr($timeComp,0,2)) {
				if (substr($timeChecked,3,2)<substr($timeComp,3,2)) return true;
			}
			return false;
		}
		date_default_timezone_set("Asia/Bangkok");
		$today = date('d-m-Y');
		if (isset($_POST['waktu'])){
			$date = $_POST['waktu'];
			$now = date('d-m-Y',strtotime($date));
		} else {
			$now = date('d-m-Y');
		}
		$ww1 = "";
		$pic2 = "";
		if (isset($_POST['pic'])){
			if ($_POST['pic'] != "") {
				$pic = $_POST['pic'];
				$result = $conn->prepare("SELECT namaPegawai FROM pegawai WHERE idpegawai = $pic");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$pic2 = $row['namaPegawai'];
				}
				$ww1 = " and namaPegawai = '$pic2' ";
			}
		}
		
		$ww2 = "";
		$area2 = "";
		if (isset($_POST['area'])){
			if ($_POST['area'] != "") {
				$area = $_POST['area'];
				$result = $conn->prepare("SELECT area FROM area WHERE id = $area");
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
					$area2 = $row['area'];
				}
				$ww2 = " and area = '$area2' ";
			}
		}
		$houre = date('H:i');
		$result = $conn->prepare("SELECT id, endtime FROM actual WHERE status = 0 and delay = 0");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
			if (isEarlier($row['endtime'],$houre)){
				$ids = $row['id'];
				$sql = "update actual set delay = 1 where id = $ids";
				$conn->exec($sql);
						
			}
		}
		$sql = "update actual set delay = 1 where exedate <> '$today'";
		$conn->exec($sql);
	?>

	<div class="header">
    	<a href="../index.php"><img src="../img/tmmin.png" alt="companylogo" title="Logo"></a>
        <h1>Sistem Reminder Jadwal Cleaning Service</h1>
    </div>
    
    <!-- =========================== NAVIGATION BAR =================================== -->
    
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
        <a href="daftar_penugasan.php">Penugasan</a>
        <a class="active" href="daftar_pengawasan.php">Pengawasan</a>
        <a href="view_progress.php">View Progress</a>
	</div>
    
    <!-- =========================== EXPORT MODAL ================================== -->
    
    <div id="exportTask" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="closet">&times;</span>
                <h3>Export Data Penugasan</h3>
            </div>
            <div class="modal-body">
            	<form action="../database/export_report.php?date=<?php echo $now; ?>" method="POST">
                <label for="jkP">Download File .xls</label><br>
                <input type="radio" id="jkP" name="download" value="sumary" required>Summary Bulan&emsp;
                <select id="stJam" name="bulan" required >
                    <option selected disabled>Pilih Bulan</option>
                    <?php for ($i = 1; $i <= 12; $i++){ ?>
                        <option value="<?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
                    <?php } ?>
                </select>
                <select id="stMin" name="tahun" required >
                    <option selected disabled>Pilih Tahun</option>
                    <?php for ($i = 2010; $i <= substr($now,6); $i++){ ?>
                        <option value="<?php echo str_pad($i,4,"0",STR_PAD_LEFT); ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT); ?></option>
                    <?php } ?>
                </select>
                <br>
                <input type="radio" id="jkP" name="download" value="harian" required>Tanggal&emsp;&emsp;
&emsp;&emsp;&nbsp;   <input type="date" name="waktu_report" max="<?php echo date('Y-m-d') ?>" value="<?php echo date('Y-m-d',strtotime($now)); ?>"><br>
            	<input type="submit" value="Submit" class="submit">
                </form>
            </div>
		</div>
    </div>
    
    <!-- =========================== INPUT MODAL ===================================-->
        
    <div id="addTask" class="modal slide-top">
    	<div class="modal-content">
         	<div class="modal-header">
            	<span class="close">&times;</span>
                <h3>Input Data Penugasan</h3>
            </div>
            <div class="modal-body">
                <form action="../database/add_actual.php" method="POST">
                    <label for="kodeR">Nama Ruangan</label>
                    <select id="kodeR" name="kodeR" required>
                        <option selected disabled>Pilih Ruangan</option>
                        <?php 
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
                    <br>
                    <!-- <label for="pic">PIC</label>
                    <select id="pic" name="pic" required>
                        <option selected disabled>Pilih Pegawai</option>
                        <?php 
							//require_once('../database/db.php');
                			//$result = $conn->prepare("SELECT idPegawai, namaPegawai FROM pegawai");
							//$result->execute();
							//$iterate = false;
							//for($i=0; $row = $result->fetch(); $i++){
							//if (sizeof($row)>0){
							//	$iterate = true;
							//}
							//$id=$row['idPegawai'];
						?>
                        <option value="<?php //echo $id;?>"><?php //echo $row['namaPegawai'];?></option>
                        <?php //} 
						//if (!$iterate){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php //}?>
                    -->
                    </select>
                    
          			<input type="submit" value="Submit" class="submit">
                </form>
            </div>
		</div>
    </div>
    
    <!-- =========================== KONTEN PAGE ===================================-->
    
    <div class="content">
    	<div class="page-header">
        	<h3>Tabel Pengawasan</h3><br>
            <table>
            	<tr>
                    <td width="100%" colspan="4">
                    <form action="daftar_pengawasan.php" method="POST" >
                        <input type="date" id="awas" name="waktu" max="<?php echo date('Y-m-d') ?>" value="<?php echo date('Y-m-d',strtotime($now)); ?>" >
                        <select id="pic" name="pic" required class="awas">
                            <option selected disabled>Pilih Pegawai</option>
                            <option value="">All Pegawai</option>
                            <?php 
                                require_once('../database/db.php');
                                $result = $conn->prepare("SELECT idPegawai, namaPegawai FROM pegawai");
                                $result->execute();
                                $iterate = false;
                                for($i=0; $row = $result->fetch(); $i++){
                                if (sizeof($row)>0){
                                	$iterate = true;
                                }
                                $id=$row['idPegawai'];
                            ?>
                            <option value="<?php echo $id;?>" <?php if ($pic2 == $row['namaPegawai']) echo "selected"; ?>><?php echo $row['namaPegawai'];?></option>
                            <?php } 
                            if (!$iterate){ ?>
                                <option disabled>Tidak Ada Data</option>
                            <?php }?>
                        </select>
                        <select id="awas" name="area" >
                            <option selected disabled>Pilih Area</option>
                            <option value="">All Area</option>
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
                            <option value="<?php echo $id;?>"<?php if ($area2 == $row2['area']) echo "selected"; ?>><?php echo $row2['area'];?></option>
                            <?php } 
                            if (!$iterate2){ ?>
                                <option disabled>Tidak Ada Data</option>
                            <?php }?>
                        </select>
                        <input type="submit" class="sub2 awas">
                    </form>
                    </td>
                </tr>
                <tr>
                    <td width="20%"><button id = "tambahDataTask" class="button add-button small"><img class="icon2" src="../img/add.png" title="Tambah Data">Add Data</button></td>
                    <td width="20%"><button class="button add-button small" onclick="refresh()"><img class="icon2" src="../img/refresh.png" title="Import Data Dari Penugasan">Import Task</button></td>
                    <td width="20%"><button class="button delete-button small" onclick="deleteAll()"><img class="icon2" src="../img/remove.png" title="Hapus Data"> Delete</button></td>
                    <!-- <td width="18%"><button class="button add-button" onclick="exportData('<?php echo $now; ?>')"><img class="icon2" src="../img/export.png" title="Export Data">Export to Excel</button></td> -->
                    <td width="20%"><button class="button add-button small" id = "exportData" ><img class="icon2" src="../img/export.png" title="Export Data">Export to Excel</button></td>
                    <td width="20%"><p>Date: <?php echo $now; ?></p></td>
                </tr>
            </table>
        </div>
        <div class="data-table">
       <form name="frmUser" method="post" action="">
        <table>
        	
        
        	<tr>
                <th width="3%"><input type="checkbox" id="select_all" class="checkbox"/></th>
                <th width="5%">No</th>
                <th width="14%">Ruangan</th>
                <th width="5%">Area</th>
                <th width="8%">Shift</th>
                <th width="12%">PIC</th>
                <th width="10%">Kontak</th>
                <th width="5%">Dur</th>
                <th width="5%">Start</th>
                <th width="5%">End</th>
                <th width="8%">Act End</th>
                <th width="6%">Status</th>
                <th width="5%">Delay</th>
                <th width="18%">Action </th>
            </tr>
            
            <?php
                require_once('../database/db.php');
				$query = "SELECT id, `idTask`,`exeDate`, namaRuangan, area, `shift`,`namaPegawai`,`kontak`,`duration`,`occurence`,`startTime`,`endTime`,`actEndTime`,`status`,`delay` FROM `actual` where exeDate = '$now' $ww1 $ww2 ORDER BY starttime";
				//echo $query;
                $result = $conn->prepare($query);
				
				$result->execute(); 
				$iterate = false;
                for($i=0; $row = $result->fetch(); $i++){
				if (sizeof($row)>0){
					$iterate = true;
				}
                $id=$row['idTask'];
            ?>
            
            <tr>
            	<td> <input type="checkbox" class="checkbox" id="checkbox" name="check[]" value="<?php echo $row["id"]; ?>"></td>
                <td> <?php echo ($i+1); ?></td>
				<td> <?php echo $row ['namaRuangan']; ?></td>
                <td> <?php echo $row ['area']; ?></td>
				<td> <?php echo $row ['shift']; ?></td>
				<td> <?php echo $row ['namaPegawai']; ?></td>
                <td> <?php echo $row ['kontak']; ?></td>
                <td> <?php echo $row ['duration']; ?></td>
                <td> <?php echo $row ['startTime']; ?></td>
				<td> <?php echo $row ['endTime']; ?></td>
                <td> <?php echo $row ['actEndTime']; ?></td>
                <td 
				<?php 
					if ($row ['status'] == 1) 
						echo "id=\"done\""; 
					else {
						if ($today == $now){
							if (isEarlier(date('H:i'),$row ['startTime']))
								echo "id=\"noformat\"";
							else
								echo "id=\"undone\""; 
						} else {
							echo "id=\"late\"";
						}
					} ?>
                > <?php 
					if ($row ['status'] == 1) 
						echo "Done"; 
					else {
						if ($today == $now){
							if (isEarlier(date('H:i'),$row ['startTime']))
								echo "";
							else
								echo "In Prog"; 
						} else {
							echo "Not Done";
						}
					} ?></td>
                <td <?php 
					if ($row ['delay'] == 1) 
						echo "id=\"late\""; 
					else {
						if ($row ['status'] == 1)
							echo "id=\"notlate\"";
						else
							echo "id=\"noformat\""; 
					} ?>> 
					<?php 
					if ($row ['delay'] == 1) 
						echo "Late"; 
					else {
						if ($row ['status'] == 1)
							echo "On Time";
					} ?></td>
				<td>
                	<div class="tooltip">
                        <button class="button btn-finish" onclick="finish('<?php echo $row['id']; ?>','<?php echo $row ['endTime']; ?>')" <?php if (($row ['status'] == 1) or ($today != $now)) echo "disabled"; ?>>
                        <img <img src="../img/complete.png" class="icon">
                        </button>
                    <span class="tooltiptext">Tandai Selesai</span>
   					</div>
                    <div class="tooltip">
                        <span class="button btn-edit" <?php if (($row ['status'] == 1) or ($today != $now)) echo "id=\"disabled\""; ?> onclick="<?php if (($row ['status'] != 1)) echo "edit('".$row['id']."')"; ?> ">
                            <img class="icon" src="../img/edit.png">
                        </span>
                    <span class="tooltiptext">Ubah Data</span>
   					</div>
				</td>
                
            </tr>
            
            	
            <?php } 
			if (!$iterate){ ?>
				<tr>
				<td colspan = 14>No data in table</td>
                </tr>
			<?php }?>
            
            </table>
           </form>
        </div>
    </div>
    <script>
	var select_all = document.getElementById("select_all"); //select all checkbox
	var checkboxes = document.getElementsByClassName("checkbox"); //checkbox items
	
	function refresh()
	{
		window.location.href='../database/add_to_actual.php';
	}
	
	function deleteAll()
	{
		if (select_all.checked == true){
			 var r = confirm('Hapus Seluruh Data?');
			 if(r == true)
			 {
				 window.location.href='../database/delete_pengawasan.php';
			 }
		} else {
			if(confirm("Are you sure want to delete these rows?")) {
				document.frmUser.action = '../database/delete_pengawasan2.php';
				document.frmUser.submit();
			}	
		}
	}
	
	function exportData(date)
	{
		 var r = confirm('Download File Excel untuk Tanggal '+date+'?');
		 if(r == true)
		 {
			 window.location.href='../database/export_to_xls.php?date='+date;
		 }
	}
	
    function finish(id, end)
	{
		 var r = confirm('Tandai sudah dikerjakan?');
		 if(r == true)
		 {
			 document.frmUser.action = '../database/finish_task.php?id='+id+'&end='+end;
			 document.frmUser.submit();
		 }
	}
	//=======================================================================================================//
		
	// When the user clicks on the button, open the modal 
	function edit(id) {
		window.location.href='edit_penugasan.php?id='+id;
	}
	
	//select all checkboxes
	select_all.addEventListener("change", function(e){
		for (i = 0; i < checkboxes.length; i++) { 
			checkboxes[i].checked = select_all.checked;
		}
	});
	
	
	for (var i = 0; i < checkboxes.length; i++) {
		checkboxes[i].addEventListener('change', function(e){ //".checkbox" change 
			//uncheck "select all", if one of the listed checkbox item is unchecked
			if(this.checked == false){
				select_all.checked = false;
			}
			//check "select all" if all checkbox items are checked
			if(document.querySelectorAll('.checkbox:checked').length == checkboxes.length){
				select_all.checked = true;
			}
		});
	}
	
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
	
	var modal_im = document.getElementById('exportTask');
	
	// Get the button that opens the modal
	var btn_im = document.getElementById("exportData");
	
	// Get the <span> element that closes the modal
	var span_im = document.getElementsByClassName("closet")[0];
	
	// When the user clicks on the button, open the modal 
	btn_im.onclick = function() {
		modal_im.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span_im.onclick = function() {
		modal_im.style.display = "none";
	}
	</script>
</body>
</html>