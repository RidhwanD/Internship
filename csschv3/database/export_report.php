<?php
	$pil = $_POST['download'];
	date_default_timezone_set("Asia/Bangkok");
	$today = date('d-m-Y');	
	if ($pil == "sumary"){
		if (isset($_POST['bulan']) && isset($_POST['tahun']))
			$date = $_POST['bulan']."-".$_POST['tahun'];
		else $date = substr($today,3);
	} else {
		$inp = $_POST['waktu_report'];
		$date = date('d-m-Y',strtotime($inp));
	}
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename = Report_CS_$date.xls");
	header("Pragma: no-cache");
	header("Expires: 0");
	
	require_once('db.php');
	if ($pil == "sumary"){
		$setSql = "select exedate, count(*) as tasks, sum(delay) as late, (select count(*) from actual as a where a.exeDate = b.exeDate and status = 0) as outs from actual as b where exeDate like '%$date' group by exeDate";
		$setRec = mysqli_query($conns,$setSql);
?>
<table>
    <tr>
        <th>Tanggal</th>
        <th>Jumlah Task</th>
        <th>Jumlah Delay</th>
        <th>Jumlah Out</th>
    </tr>
<?php
	$i = 0;
	while ($rec = mysqli_fetch_assoc($setRec)) {
		$i++;
?>
	<tr>
    	<td><?php echo date('d-m-Y',strtotime($rec['exedate'])); ?></td>
		<td><?php echo $rec['tasks']; ?></td>
        <td><?php echo $rec['late']; ?></td>
        <td><?php echo $rec['outs']; ?></td>
    </tr>
<?php } ?>
	<tr>
    	<td>Total</td>
        <td> <?php $i++; echo "=sum(B2:B$i)"; ?> </td>
        <td> <?php echo "=sum(C2:C$i)"; ?> </td>
        <td> <?php echo "=sum(D2:D$i)"; ?> </td>
    </tr>
    <tr>
    	<td>Report per Tanggal</td>
        <td></td>
        <td></td>
        <td><?php echo $today; ?></td>
    </tr>
</table>
<?php
		
	} else {
	$setSql = "SELECT `exeDate`, `namaRuangan`, area, `shift`, `namaPegawai`, `kontak`, `duration`, `occurence`, `startTime`, `endTime`, `actEndTime`, `status`, `delay` FROM `actual` where exeDate = '$date' order by startTime";
	$setRec = mysqli_query($conns,$setSql);
?>
<table>
    <tr>
        <th>Tanggal</th>
        <th>Ruangan</th>
        <th>Area</th>
        <th>Shift</th>
        <th>PIC</th>
        <th>Durasi</th>
        <th>Occurence</th>
        <th>Waktu Mulai</th>
        <th>Waktu Selesai (Ideal)</th>
        <th>Waktu Selesai (Actual)</th>
        <th>Status</th>
        <th>Delay</th>
        <th>Out</th>
    </tr>
<?php
	$i = 0;
	while ($rec = mysqli_fetch_assoc($setRec)) {
		$i++;
?>
    <tr>
    	<td> <?php echo $rec['exeDate']; ?> </td>
        <td> <?php echo $rec['namaRuangan']; ?> </td>
        <td> <?php echo $rec['area']; ?> </td>
        <td> <?php echo $rec['shift']; ?> </td>
        <td> <?php echo $rec['namaPegawai']; ?> </td>
        <td> <?php echo $rec['duration']; ?> </td>
        <td> <?php echo $rec['occurence']; ?> </td>
        <td> <?php echo $rec['startTime']; ?> </td>
        <td> <?php echo $rec['endTime']; ?> </td>
        <td> <?php echo $rec['actEndTime']; ?> </td>
        <td> <?php if ($rec ['status'] == 1) 
						echo "Done"; 
					else {
						echo "Not Done";
					} ?> </td>
        <td> <?php if ($rec ['delay'] == 1) 
						echo "Late"; 
					else {
						if ($rec ['status'] == 1)
							echo "On Time";
						else if ($rec['status'] == 0 && $rec['exeDate'] != $today)
							echo "Late"; 
						else echo "";
					} ?> </td>
        <td> <?php if ($rec['status'] == 0 && $rec['exeDate'] != $today){
							echo "Out"; 
					} ?> </td>
	</tr>
    
<?php } ?>
	<tr>
    	<td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Total</td>
        <td><?php $i++; echo "=countif(K2:K$i,\"=Late\")" ?></td>
        <td><?php echo "=countif(L2:L$i,\"=Out\")" ?></td>
	</tr>
    <tr>
    	<td>Report per Tanggal</td>
        <td></td>
        <td></td>
        <td><?php echo $today; ?></td>
        <td><?php $houre = date('H:i:s'); echo $houre; ?></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
<?php } ?>