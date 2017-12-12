<?php
	class database{
 
	var $host = "localhost";
	var $uname = "root";
	var $pass = "";
	var $db = "health_assistant";
 
	function __construct(){
		mysql_connect($this->host, $this->uname, $this->pass);
		mysql_select_db($this->db);
	}

	function input($level,$user,$pass,$email){
		$password=md5($pass);
		mysql_query("insert into vha_user values('','$level','$user','$password','$email')");
	}
	function tampil_data(){
		$data = mysql_query("select * from vha_user");
		while($d = mysql_fetch_array($data)){
			$hasil[] = $d;
		}
		return $hasil;
	}
    function hapus($id){
        mysql_query("delete from vha_user where id_user=$id");
    }
}

	// SINGKATAN INDEX
function body($a,$b,$c,$d,$e){
	echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>

        <title>Collapsible sidebar using Bootstrap 3</title>

         <!-- Bootstrap CSS CDN -->
        <link rel='stylesheet' href='../assets/css/bootstrap.min.css'>
        <!-- Our Custom CSS -->
        <link rel='stylesheet' href='../assets/css/style.css'>
    </head>
    <body>
        <div class='wrapper'>
            <!-- Sidebar Holder -->
            <nav id='sidebar'>
                <div class='sidebar-header'>
                    <h3>Vhealth Assistant</h3>
                </div>

                <ul class='list-unstyled components'>
                    <h4><p>Admin Dashboard</p></h4>
                    <li class='$a'>
                        <a href='index.php'>Home</a>
                    </li>
                    <li class='$b'>
                        <a href='user.php'>User</a>
                    </li>
                    <li class='$c'>
                        <a href='dokter.php'>Dokter</a>
                    </li>
                    <li class='$d'>
                        <a href='penyakit.php'>Penyakit</a>
                    </li>
                    <li class='$e'>
                        <a href='obat.php'>Obat</a>
                    </li>
                </ul>

                <ul class='list-unstyled CTAs'>
                    <li><a href='#' class='article'>Account </a></li>
                    <li><a href='#' class='article'>Change Password</a></li>
                    <li><a href='#' class='download'>Logout</a></li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id='content' style='width:1200px'>

                <nav class='navbar navbar-default'>
                    <div class='container-fluid'>

                        <div class='navbar-header'>
                            <button type='button' id='sidebarCollapse' class='navbar-btn'>
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div>

                        <div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>
                            <ul class='nav navbar-nav navbar-right'>
                                <li><a href='#'>Account</a></li>
                                <li><a href='#'>Change Password</a></li>
                                <li><a href='#'>Logout</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>        
		";
	} 
?>