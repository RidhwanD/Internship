<?php
//koneksi ke database, username,password  dan namadatabase menyesuaikan 
//mysql_connect('localhost', 'root');
//mysql_select_db('csschedule');
 require_once('db.php');
//memanggil file excel_reader
require "excel_reader.php";
 
//jika tombol import ditekan
if(isset($_POST['submit'])){
 
    $target = basename($_FILES['fileruangan']['name']) ;
    move_uploaded_file($_FILES['fileruangan']['tmp_name'], $target);
 
// tambahkan baris berikut untuk mencegah error is not readable
    chmod($_FILES['fileruangan']['name'],0777);
    
    $data = new Spreadsheet_Excel_Reader($_FILES['fileruangan']['name'],false);
    
//    menghitung jumlah baris file xls
    $baris = $data->rowcount($sheet_index=0);
    $query = "delete from ruangan";
		  $hasil = mysql_query($query);
		  
      
    
//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
    for ($i=2; $i<=$baris; $i++)
    {
//       membaca data (kolom ke-1 sd terakhir)
      $kode           = $data->val($i, 1);
      $nama 		  = $data->val($i, 2);
      $area			  = $data->val($i, 3);
	  if ($kode != null){
//      setelah data dibaca, masukkan ke tabel pegawai sql
		  $query = "INSERT into ruangan values('$kode','$nama','$area')";
		  $hasil = mysql_query($query);
	  }
    }
    
    if(!$hasil){
//          jika import gagal
          die(mysql_error());
      }else{
//          jika impor berhasil
          echo "<script>alert('Data Ruangan Berhasil Ditambahkan!'); window.location='../pages/daftar_ruangan.php'</script>";
    }
    
//    hapus file xls yang udah dibaca
    unlink($_FILES['fileruangan']['name']);
}
 
?>
