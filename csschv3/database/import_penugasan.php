<?php
//koneksi ke database, username,password  dan namadatabase menyesuaikan 
//mysql_connect('localhost', 'root');
//mysql_select_db('csschedule');
require_once('db.php');
 
 
function addTime($time, $minute){
	$hour = substr($time,0,2);
	$min = substr($time,3,2) + $minute -1;
	if ($min >= 60) {
		$min = $min - 60;
		$hour = $hour + 1;
	}
	return str_pad($hour,2,"0",STR_PAD_LEFT).":".str_pad($min,2,"0",STR_PAD_LEFT);
}

//memanggil file excel_reader
require "excel_reader.php";
 
//jika tombol import ditekan
if(isset($_POST['submit'])){
 
    $target = basename($_FILES['filepenugasan']['name']) ;
    move_uploaded_file($_FILES['filepenugasan']['tmp_name'], $target);
 
// tambahkan baris berikut untuk mencegah error is not readable
    chmod($_FILES['filepenugasan']['name'],0777);
    
    $data = new Spreadsheet_Excel_Reader($_FILES['filepenugasan']['name'],false);
    
//    menghitung jumlah baris file xls
    $baris = $data->rowcount($sheet_index=0);
    
    $query = "truncate table detailtask";
	$hasil = mysql_query($query);
	$query = "delete from task";
	$hasil = mysql_query($query);
	
	
//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
    for ($i=2; $i<=$baris; $i++)
    {
//       membaca data (kolom ke-1 sd terakhir)
      $kode           = $data->val($i, 1);
      $shift 		  = $data->val($i, 3);
      $dur			  = $data->val($i, 4);
	  $occur = [];
	  for ($is = 1; $is <= 25; $is++){
		  $occur[] = $data->val($i, $is+4);
	  }
      if ($kode != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $query = "INSERT into task(kodeRuangan,shift,duration) values('$kode','$shift','$dur')";
		  $conn->exec($query);
		  $id = $conn->lastInsertId();
		  for ($is = 0; $is < sizeof($occur); $is++){
			  if ($occur[$is] != null){
				$end = addTime($occur[$is],$dur);
				$occ = $is + 1;
				$query = "INSERT into detailtask values('$id','$occur[$is]','$end',$occ)";
		  		$conn->exec($query);
			  }
		  }
	  }
    }
    
    if(!$hasil){
//          jika import gagal
          die(mysql_error());
      }else{
//          jika impor berhasil
          echo "<script>alert('Data Penugasan Berhasil Ditambahkan!'); window.location='../pages/daftar_penugasan.php'</script>";
    }
    
//    hapus file xls yang udah dibaca
    unlink($_FILES['filepenugasan']['name']);
}
 
?>
