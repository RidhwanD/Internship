<?php 
	$conn = new PDO('mysql:host=localhost; dbname=csschedule','root', '');
	
	// mysql_connect('localhost', 'root');
	// mysql_select_db('csschedule');		
	
	$conns = new mysqli('localhost','root','');
	mysqli_select_db($conns,'csschedule');
 ?>