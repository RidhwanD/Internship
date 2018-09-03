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
		include('periksa.php');
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
		$pic2 = "Imas";
		$ww1 = " and namapegawai = '$pic2' ";
		
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
    
    <!-- =========================== KONTEN PAGE ===================================-->
    
    <div class="content">
    	<div class="page-header">
        	<h3>Tugas Cleaning Service</h3><br>
            <table>
            	<tr>
                	<td>PIC</td>
            		<td><input type="text" id="awas" value="<?php echo $pic2; ?>" disabled/></td>
                </tr>
            	<tr>
                    <td width="80%" colspan="4">
                    <form action="operator.php" method="POST" >
                        <input type="date" id="awas" name="waktu" max="<?php echo date('Y-m-d') ?>" value="<?php echo date('Y-m-d',strtotime($now)); ?>" >
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
                    <td width="20%"><p>Date: <?php echo $now; ?></p></td>
                </tr>
            </table>
        </div>
        <div class="data-table">
       <form name="frmUser" method="post" action="">
        <table>
        	<tr>
                <th width="5%">No</th>
                <th width="20%">Ruangan</th>
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
                <th width="5%">Action </th>
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
                        <button class="button btn-finish" onclick="finish('<?php echo $row['id']; ?>','<?php echo $row ['endTime']; ?>')" <?php if (($row ['status'] == 1) or ($today != $now) or (isEarlier($houre,$row ['startTime']))) echo "disabled"; ?>>
                        <img <img src="../img/complete.png" class="icon">
                        </button>
                    <span class="tooltiptext">Tandai Selesai</span>
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
	
    function finish(id, end)
	{
		 var r = confirm('Tandai sudah dikerjakan?');
		 if(r == true)
		 {
			 document.frmUser.action = '../database/finish_task_operator.php?id='+id+'&end='+end;
			 document.frmUser.submit();
		 }
	}
	
	</script>
</body>
</html>