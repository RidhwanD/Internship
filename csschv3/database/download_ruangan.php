<?php
	header('Content-type: application/xls');
	header('Content-Disposition: attachment; filename="Format Daftar Ruangan.xls"');
	$url = "../format/Format Daftar Ruangan.xls";
	readfile($url);
?>