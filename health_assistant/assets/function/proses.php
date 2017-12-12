<?php 
include 'database.php';
$db = new database();
 
$aksi = $_GET['aksi'];
	 if($aksi == "tambah"){
	 	if($_POST['password']==$_POST['repassword']){	
		$level=2;
		$db->input($level,$_POST['username'],$_POST['password'],$_POST['email']);
	 	header("location:../../content/index.php");	
		 }
	 }
	 else if($aksi == "hapus"){
	 	$db->hapus($_GET['id']);
	 	header("location:../../content/user.php");	
	 }
?>
