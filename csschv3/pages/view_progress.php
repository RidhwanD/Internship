<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="240">
    <title>View Progress - Penjadwalan Cleaning Service</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
	<?php
		function addTime($time, $minute){
			$hour = substr($time,0,2);
			$min = substr($time,3,2) + $minute;
			if ($min >= 60) {
				$min = $min - 60;
				$hour = $hour + 1;
			}
			return str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT);
		}
		
		function addHour($time,$num){
			$hour = substr($time,0,2) + $num;
			$min = substr($time,3,2);
			return str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT);
		}
		
		function subsHour($time,$num){
			$hour = substr($time,0,2) - $num;
			$min = substr($time,3,2);
			return str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT);
		}
	
		function isEarlier($timeChecked, $timeComp){
			if (substr($timeChecked,0,2)<substr($timeComp,0,2)) return true;
			else if (substr($timeChecked,0,2)==substr($timeComp,0,2)) {
				if (substr($timeChecked,3,2)<substr($timeComp,3,2)) return true;
			}
			return false;
		}
		
		function inBetween1($starttime, $endtime, $timeChecked){
			if (substr($starttime,0,2)<=substr($timeChecked,0,2) and substr($timeChecked,0,2) <= substr($endtime,0,2)) return true;
			else return false;
		}
		
		function inBetween2($starttime, $endtime, $timeChecked){
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
		
		date_default_timezone_set("Asia/Bangkok");
		$today = date('d-m-Y');
		$time = date('H:')."00";
		$area = "";
		require_once('../database/db.php');
                
	?>
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
        <a href="daftar_penugasan.php">Penugasan</a>
        <a href="daftar_pengawasan.php">Pengawasan</a>
        <a href="view_progress.php" class="active">View Progress</a>
	</div>
    
    <!-- =========================== KONTEN PAGE =================================== -->
    
    <?php
		if (isset($_POST['waktu'])){
			$date = $_POST['waktu'];
			$now = date('d-m-Y',strtotime($date));
		} else {
			$now = date('d-m-Y');
		}
		if (isset($_POST['start']) && isset($_POST['end'])){
			$start = $_POST['start'];
			$end = $_POST['end'];
		} else {
			$start = subsHour($time,2);
			$end = addHour($time,2);
		}
		$show = [];
		$jam = $start;
		while ($jam != addHour($end,1) && $jam != "21:00"){
			if (isEarlier($jam,"06:00")) {
				$jam = addHour($jam,1);
			} else {
				$show[] = $jam;
				$jam = addHour($jam,1);
			}
		}
		if (isset($_POST['area'])){
			$ar = $_POST['area'];
		} else {
			$ar = "";
		}
		$result = $conn->prepare("SELECT * FROM area WHERE id = '$ar'");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
			$area = $row['area'];
		}
		$time_now = date('H:i');
	?>
    
    <div class="content">
    
    	<div class="page-header">
        	<h3>View Progress <?php echo $area; ?></h3><br>
            <table>
            
            <tr>
                <td width="87%"><form action="view_progress.php" method="POST" >
                    <input type="date"  name="waktu" max="<?php echo date('Y-m-d') ?>" id = "x" value="<?php echo date('Y-m-d',strtotime($now)); ?>">
                    <select name="start" id="x" required >
                        <option selected disabled>Pilih Jam Mulai</option>
                        <?php for ($i = 6; $i <= 20; $i++){ ?>
                            <option value="<?php echo str_pad($i,2,"0",STR_PAD_LEFT).":00"; ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT).":00"; ?></option>
                        <?php } ?>
                    </select>
                    <select  name="end" id="x" required >
                        <option selected disabled>Pilih Jam Selesai</option>
                        <?php for ($i = 6; $i <= 20; $i++){ ?>
                            <option value="<?php echo str_pad($i,2,"0",STR_PAD_LEFT).":00"; ?>"><?php echo str_pad($i,2,"0",STR_PAD_LEFT).":00"; ?></option>
                        <?php } ?>
                    </select>
                    <select id="areav" name="area" >
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
						<option value="<?php echo $id;?>"<?php if ($row2['area']==$row['area']) echo "selected='selected'"; ?>><?php echo $row2['area'];?></option>
						<?php } 
						if (!$iterate2){ ?>
							<option disabled>Tidak Ada Data</option>
						<?php }?>
                    </select>
                    <input type="submit" class="sub2" id = "x">
                </form></td>
                <td width="13%"><p>Date: <?php echo $now; ?></p></td>
             </tr>
            </table>
            <table>
            <tr>
            	<td class="ket" colspan="2">Keterangan</td> 
            </tr>
            <tr>
            	<td class="ket" id="task_undone"></td> 
                <td class="ket">Existing Task</td> 
            </tr>
            <tr>
            	<td class="ket" id="task_onprg"></td> 
                <td class="ket">On Progress</td>
            </tr>
            <tr>
            	<td class="ket" id="task_done"></td> 
                <td class="ket">Completed On Time</td>
            </tr>
            <tr>
            	<td class="ket" id="task_done_late"></td> 
                <td class="ket">Completed Late</td>
            </tr>
            <tr>
            	<td class="ket" id="task_delay"></td> 
                <td class="ket">Delayed</td>
            </tr>
            </table>
        </div>
        <div class="data-table">
        	
        	
            
            <table id="cssss">
        	<tr>
                <th id="pengawasan" class="head">Ruangan</th>
                <th id="areas"  class="head">Area</th>
                <?php
				foreach ($show as $x){
				?>
                <th id="timer" colspan="60" class="head <?php if ($x == $time) echo "now"; ?>"> <?php echo $x; ?> </th>
                <?php
				}
				?>
            </tr>
            <?php
				$result = $conn->prepare("SELECT namaruangan, area, starttime FROM `actual` where exeDate = '$now' and area like '%$area%' GROUP BY namaruangan ORDER BY starttime");
				$result->execute(); 
				$iterate = false;
                for($i=0; $row = $result->fetch(); $i++){
				if (sizeof($row)>0){
					$iterate = true;
				}
			?>
            <tr>
            	<td id="pengawasan" > <?php echo $row['namaruangan']; ?> </td>
                <td id="areas" > <?php echo $row['area']; ?> </td>
                <?php
					$room = $row['namaruangan'];
					foreach ($show as $x){
						for ($j = 0; $j < 60; $j++){
							echo "<td class = \"minutess";
							if ($j == 59) echo " akhir_jam";
							if ($x == $time) echo " now";
							echo "\"";
				$result2 = $conn->prepare("SELECT starttime, endtime, actendtime, status, delay FROM `actual` where exeDate = '$now' and namaruangan = '$room' and area like '%$area%'");
                $result2->execute();
                for($k=0; $row2 = $result2->fetch(); $k++){
					$actend = $row2['endtime'];
					//if ($row2['delay'] == 1){
					//if ($row2['actendtime'] != "") $actend = $row2['actendtime'];
					//	else $actend = $time_now;
					//}
					if (inBetween2($row2['starttime'],$actend,addTime($x,$j))){
                        if (($row2['status'] == 1) && ($row2['delay'] == 0)) { 
                            echo "id=\"task_done\""; 
                        } else {
                            if ($today == $now){
                                if (isEarlier(date('H:i'),$row2 ['starttime'])) {
                                    echo "id=\"task_undone\"";
                                } else if (inBetween2($row2 ['starttime'],$row2 ['endtime'],date('H:i'))) {
                                    echo "id=\"task_onprg\"";
                                } else if (($row2['status'] == 1) && ($row2['delay'] == 1)) {
                                    echo "id=\"task_done_late\"";
                                } else {
                                    echo "id=\"task_delay\""; 
                                }
                            } else {
                                echo "id=\"task_notdone\"";
                            }
                        }
                    }
                }
            ?>
                >
                <?php
				$result2 = $conn->prepare("SELECT namapegawai, kontak, starttime, endtime, actendtime FROM `actual` where exeDate = '$now' and namaruangan = '$room' and area like '%$area%'");
                $result2->execute(); 
                for($k=0; $row2 = $result2->fetch(); $k++){
					//$actend = $row2['actendtime'];
					//if ($actend == "") $actend = $row2['endtime'];
					if (inBetween2($row2['starttime'],$row2['endtime'],addTime($x,$j))){
                    
				?>
                <div class="tooltip">
                &nbsp;
                <span class="tooltiptext">
                    PIC: <?php echo $row2['namapegawai']; ?>
                    Kontak: <?php echo $row2['kontak']; ?>
                </span>
                </div>
                <?php 
					}
				}
				?>
                </td>
                <?php
						}
					}
				?>
            </tr>
            <?php 
				} 
				if (!$iterate){ 
			?>
            <tr>
            <td colspan = 13>No data in table</td>
            </tr>
			<?php 
				}
			?>
            </table>
        </div>
        
    </div>
</body>