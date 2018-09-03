<?php
	header('Content-type: application/xls');
	header('Content-Disposition: attachment; filename="Format Daftar Area.xls"');
	$url = "../format/Format Daftar Area.xls";
	readfile($url);
?>