<?php
session_start();
include '../database/db.php';
 
if(!empty($_POST)){
     
    $username = $_POST['username'];
    $password = $_POST['password'];
 
    $sql = "select * from login where username='".$username."' and pass='".$password."'";
    #echo $sql."<br />";
    $query = mysql_query($sql) or die (mysql_error());
 
    // pengecekan query valid atau tidak
    if($query){
        $row = mysql_num_rows($query);
         
        // jika $row > 0 atau username dan password ditemukan
        if($row > 0){
            $_SESSION['isLoggedIn']=1;
            $_SESSION['username']=$username;
            header('Location: operator.php');
        }else{
            echo "username atau password salah";
        }
    }
}
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Penjadwalan Cleaning Service</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
	<div class="header">
    	<a href="../index.php"><img src="../img/tmmin.png" alt="companylogo" title="Logo"></a>
        <h1>Sistem Reminder Jadwal Cleaning Service</h1>
    </div>
    
    <div class="content">
   		<div class="page-header">
        	<h3 class="head_login">Login</h3>
            
        </div>
        <div class="login">
        	<form action="">
              	<div class="container">
                    <label><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="username" required>
            
                    <label><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="password" required>
                    
                    <input type="submit" name="submit" value="Login" class="submit">
              	</div>
            </form>
        </div>
    </div>
</body>
</html>