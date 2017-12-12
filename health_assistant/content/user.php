<?php
    include '../assets/function/database.php';
    body('','active','','','');
    $db = new database();
?>
                <div class="well well-sm">/ <a href="user.php">User</a></div>
                <h2>User Terdaftar</h2>
                    <form class="form form-horizontal" style="margin-bottom: 10px">
                        <input type="submit" value="Tambah" class="btn btn-success">
                    </form>
                
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Hak Akses</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Opsi</th>
                    </tr>
                    </thead>
                    <?php
                    $no = 1;
                    foreach($db->tampil_data() as $x){
                    ?>
                    <tbody>
                    <tr>
                        <td><?php echo $no++; ?></td>
                        <td><?php if($x['level']==1)$usser = "Admin";else $usser = "Dokter";echo $usser; ?></td>
                        <td><?php echo $x['username']; ?></td>
                        <td><?php echo $x['email']; ?></td>
                        <td><?php 
                                if($x['level']==1){
                                //echo "<a href='edit.php?id=";echo $x['id_user']; echo "&aksi=edit'>Edit</a>";   
                                }
                                else
                                {
                                // echo "<a href='edit.php?id=";echo $x['id_user'];echo "&aksi=edit'>Edit</a>"; 
                                    echo " <a href='../assets/function/proses.php?id=";echo $x['id_user']; echo "&aksi=hapus'>Hapus</a>";  
                                }
                            ?>
                        </td>
                    </tr>
                    </tbody>
                    <?php 
                    }
                    ?>
                </table>                
        </div>
        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                     $(this).toggleClass('active');
                 });
             });
         </script>
    </body>
</html>
