<?php
include "../../asset/database/koneksi.php";
session_start();
if (!isset($_SESSION['user_session'])){
    header('Location:../Users/loginpage.php');
    }

    if(isset($_POST['kirim']))
  {
    $id_kendaraan=$_GET['idkendaraan'];
    $tanggal_servis=$_POST['tanggal_servis'];
    $keterangan=$_POST['keterangan'];
              
                if(!isset($errMSG))
                {
                        $stmt = $DB_con->prepare("INSERT INTO servis_kendaraan (id_servis, id_kendaraan, tanggal_servis, keterangan, ket) VALUES (NULL, :id_kendaraan, :tanggal_servis, :keterangan, 'active')");
                        $stmt->bindParam(':id_kendaraan',$id_kendaraan);
                        $stmt->bindParam(':tanggal_servis',$tanggal_servis);
                        $stmt->bindParam(':keterangan',$keterangan);
                       
                        if($stmt->execute())
                          {
                            echo "
                            <div class='alert alert-success fade in'>
                                <a href='#'' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                Silahkan click kembali!
                            </div> ";
                                }else{
                                    echo "
                            <div class='alert alert-success fade in'>
                                <a href='#'' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
                                Silahkan click kembali!
                            </div> ";
                                }
                   
                      
                    }
                  
    }
?>
<!DOCTYPE html>
<html>
<head>
<?php include ('../SuperAdmin/headeradmin.php');?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="homepageadmin.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Satpol</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Satuan Polisi pamong praja </b>Sumsel</span>

    </a>

   

    <!-- Header Navbar: style can be found in header.less -->
  <?php
    include ('navbaradmin.php') 
  ?>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../asset/pict/logosatpol.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Admin</p>
          <a href="#">Sistem Peminjaman Kendaraan</a>
        </div>
      </div>
      <!-- search form -->
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="<?php if(empty($_GET['page']) || $_GET['page']=="home"){
          echo "active";
    }else {
          echo "";
    }    ?> treeview">
          <a href="?page=home">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
            
          </a>
        </li>
        <li class="<?php if($_GET['page']=="kendaraan"){
          echo "active";
    }else {
          echo "";
    }    ?> treeview">
          <a name="kendaraan" href="?page=kendaraan">
            <i class="fa fa-car"></i>
            <span>Kendaraan</span>
           
          </a>
        </li>
         <li class="<?php if($_GET['page']=="user"){
          echo "active";
    }else {
          echo "";
    }    ?> treeview">
          <a href="?page=user">
            <i class="fa fa-users"></i> <span>Users</span>
            
          </a>
        </li>
         <li class="<?php if($_GET['page']=="supir"){
          echo "active";
    }else {
          echo "";
    }    ?> treeview">
          <a href="?page=supir">
            <i class="fa fa-user"></i> <span>Supir</span>
            
          </a>
        </li>
        <li class="<?php if($_GET['page']=="laporan"){
          echo "active";
    }else {
          echo "";
    }    ?> treeview">
          <a name="laporan" href="?page=laporan">
            <i class="fa fa-files-o"></i>
            <span>Cetak Laporan</span>
          </a>
        </li>


              
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Permintaan Peminjaman Kendaraan</small>
      </h1>
      <ol class="breadcrumb">
      <li>
       <?php if(empty($_GET['page']) || $_GET['page']=="home"){
          echo " 
 
        <form method='post' enctype='multipart/form-data' class='form-inline'>
      <div class='form-group'>
       <input  type='date' class='form-control' name='daritampil'> 
      </div>
      <div class='form-group'>
        <label class='control-label'>Sampai</label>   
      </div>
      <div class='form-group'>
       <input  type='date' class='form-control' name='sampaitampil'> 
      </div>
      <div class='form-group'>
       <button class='btn btn-primary' type ='submit'>Cari Tanggal</button>
      </div>
      </form>";
      }else{
        echo "";
      }
      ?>
      </li>
      </ol>
    </section>
    <br>
    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
    <?php
    if(empty($_GET['page']) || $_GET['page']=="home"){
          if (empty($_GET['rowidpermintaan'])) {
            include "../Superadmin/tablepermintaan.php";
          }else{
            if($_GET['status']=="Pending"){
              include "../Superadmin/formacc.php";
            }else{
              include "../Superadmin/formdetail.php";
            }
            
          }
    }else if($_GET['page']=="kendaraan"){
      if (empty($_GET['rowidkendaraan'])) {
        if (isset($_GET['tambahservis'])) {
          include "formisiservis.php";
        }else{
          include "../SuperAdmin/tablekendaraan.php";
        }
      }else{
          include "formdetailkendaraan.php";
      }
          
    }else if($_GET['page']=="user"){
          include "../Superadmin/tableuser.php";
    }else if ($_GET['page']=="admin") {
          include "../Superadmin/tableadmin.php"; 
    }else if ($_GET['page']=="supir") {
          include "../Superadmin/tablesupir.php"; 
    }else if ($_GET['page']=="laporan") {
          include "../Superadmin/laporan.php"; 
    }
?>
        </div>
    <!-- Modal -->
        </div>
     </section>
  </div>     
<footer class="main-footer">

</footer>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->
<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<script src="../../asset/css/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../asset/css/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../asset/css/dist/js/app.min.js"></script>
<!-- Sparkline -->
<!-- jvectormap -->
<script src="../../asset/css/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../../asset/css/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="../../asset/css/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="../../asset/css/plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../../asset/css/dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../asset/css/dist/js/demo.js"></script>
</body>
</html>
