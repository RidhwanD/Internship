<?php
	header('Content-type: application/xls');
	header('Content-Disposition: attachment; filename="Format Daftar Pegawai.xls"');
	$url = "../format/Format Daftar Pegawai.xls";
	readfile($url);
?>