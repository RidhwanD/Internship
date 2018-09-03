<?php
	header('Content-type: application/xls');
	header('Content-Disposition: attachment; filename="Format Daftar Penugasan.xls"');
	$url = "../format/Format Daftar Penugasan.xls";
	readfile($url);
?>