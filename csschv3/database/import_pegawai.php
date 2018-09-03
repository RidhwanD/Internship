<?php
//koneksi ke database, username,password  dan namadatabase menyesuaikan 
//mysql_connect('localhost', 'root');
//mysql_select_db('csschedule');
require_once('db.php');
 
//memanggil file excel_reader
require "excel_reader.php";
 
//jika tombol import ditekan
if(isset($_POST['submit'])){
 
    $target = basename($_FILES['filepegawai']['name']) ;
    move_uploaded_file($_FILES['filepegawai']['tmp_name'], $target);
 
// tambahkan baris berikut untuk mencegah error is not readable
    chmod($_FILES['filepegawai']['name'],0777);
    
    $data = new Spreadsheet_Excel_Reader($_FILES['filepegawai']['name'],false);
    
//    menghitung jumlah baris file xls
    $baris = $data->rowcount($sheet_index=0);
    
    $query = "truncate table shiftpegawai";
	$hasil = mysql_query($query);
	$query = "delete from pegawai";
	$hasil = mysql_query($query);
	
	
//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
    for ($i=2; $i<=$baris; $i++)
    {
//       membaca data (kolom ke-1 sd terakhir)
      $nama           = $data->val($i, 1);
      $kontak 		  = $data->val($i, 2);
      $gender		  = $data->val($i, 3);
	  $shift1		  = $data->val($i, 4);
	  $shift2		  = $data->val($i, 5);
	  $shift3_1		  = $data->val($i, 6);
	  $shift3_2		  = $data->val($i, 7);
	  $sabtu_1		  = $data->val($i, 8);
	  $sabtu_2		  = $data->val($i, 9);
	  $minggu_1		  = $data->val($i, 10);
	  $minggu_2		  = $data->val($i, 11);
      if ($nama != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  if (substr($kontak,0,1) != "0"){
				$kontak = "0".$kontak;  
		  }
		  $query = "INSERT into pegawai(namapegawai,kontak,jeniskelamin) values('$nama','$kontak','$gender')";
		  $conn->exec($query);
		  $id = $conn->lastInsertId();
	  }
	  if ($shift1 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Shift 1(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$shift1')";
		  $conn->exec($query);
	  }
	  if ($shift2 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Shift 2(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$shift2')";
		  $conn->exec($query);
	  }
	  if ($shift3_1 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Shift 3(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$shift3_1')";
		  $conn->exec($query);
	  }
	  if ($shift3_2 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Shift 3(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$shift3_2')";
		  $conn->exec($query);
	  }
	  if ($sabtu_1 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Sabtu(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$sabtu_1')";
		  $conn->exec($query);
	  }
	  if ($sabtu_2 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Sabtu(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$sabtu_2')";
		  $conn->exec($query);
	  }
	  if ($minggu_1 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Minggu(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$minggu_1')";
		  $conn->exec($query);
	  }
	  if ($minggu_2 != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $shift = "Minggu(".$gender.")";
		  $query = "INSERT into shiftpegawai values('$id','$shift','$minggu_2')";
		  $conn->exec($query);
	  }
    }
    
    if(!$hasil){
//          jika import gagal
          die(mysql_error());
      }else{
//          jika impor berhasil
          echo "<script>alert('Data Pegawai Berhasil Ditambahkan!'); window.location='../pages/daftar_pegawai.php'</script>";
    }
    
//    hapus file xls yang udah dibaca
    unlink($_FILES['filepegawai']['name']);
}
 
?>
