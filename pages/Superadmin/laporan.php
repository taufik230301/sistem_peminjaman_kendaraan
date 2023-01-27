<?php
    if (isset($_POST['preview'])) {
        echo "<div class='alert alert-success'>Proses Berhasil Silahkan Tekan Cetak!</div> ";
    }
?>
<div class="header">
    <!-- <h4 class="modal-title">Cetak Laporan</h4> -->
</div>
<form method='POST' enctype='multipart/form-data' class='form-inline'>
    <div class="body">
        <div class='rows'>
            <div class='form-group col-sm-12'>
                <?php
                        if (empty($_GET['cetak'])) {
                    ?>
                <label for='' class='col-sm-4 control-label'>Tipe Laporan</label>
                <select name="tipe_laporan">
                    <option value="detail" <?php
                            if (isset($_POST['tipe_laporan'])) {
                                 if ($_POST['tipe_laporan']=="detail") {
                                     echo "selected";
                                 }
                             } 
                         ?>>Detail</option>
                    <option value="list" <?php
                            if (isset($_POST['tipe_laporan'])) {
                                 if ($_POST['tipe_laporan']=="list") {
                                     echo "selected";
                                 }
                             } 
                         ?>>List</option>
                </select>
                <button type="submit">Pilih</button>
                <?php
                        }
                    ?>
            </div>
            <?php
                            if (isset($_POST['tipe_laporan'])) {
                                if ($_POST['tipe_laporan']=="detail") {
                        ?>
            <div class='form-group col-sm-12'>
                <label for='' class='col-sm-4 control-label'>Dari</label>
                <select name="dari">
                    <option value="peminjaman" <?php
                            if (isset($_POST['dari'])) {
                                 if ($_POST['dari']=="peminjaman") {
                                     echo "selected";
                                 }
                             } 
                         ?>>Peminjaman</option>
                    <option value="kendaraan" <?php
                            if (isset($_POST['dari'])) {
                                 if ($_POST['dari']=="kendaraan") {
                                     echo "selected";
                                 }
                             } 
                         ?>>Kendaraan</option>
                </select>
                <button type="submit">Pilih</button>
            </div>
            <?php
                                    if (isset($_POST['dari'])) {
                                        if ($_POST['dari']=="peminjaman") {
                        ?>
            <div class='form-group col-sm-12'>
                <label for='' class='col-sm-4 control-label'>Id Peminjaman</label>
                <input type="text" name="id_peminjaman" required="" />
                <button type="submit" name="preview">Check</button>
            </div>
            <?php
                                        }elseif ($_POST['dari']=="kendaraan") {
                        ?>
            <div class='form-group col-sm-12'>
                <label for='' class='col-sm-4 control-label'>Id Kendaraan</label>
                <input type="text" name="id_kendaraan" required="" />
            </div>
            <div class='form-group col-sm-12'>
                <label for='' class='col-sm-4 control-label'>Periode Servis</label>
                <input type="date" class="form-control" name="dari_servis" required="" />
                <label for=''>Sampai</label>
                <input type="date" class="form-control" name="sampai_servis" required="" />
                <button type="submit" name="preview">Check</button>
            </div>
            <?php
                                        }
                                    }
                                }elseif ($_POST['tipe_laporan']=="list") {
                        ?>
            <div class='form-group col-sm-12'>
                <label for='' class='col-sm-4 control-label'>Periode Peminjaman</label>
                <input type="date" class="form-control" name="dari_peminjaman" />
                <label for=''>Sampai</label>
                <input type="date" class="form-control" name="sampai_peminjaman" />
                <button type="submit" name="preview">Check</button>
            </div>
            <?php
                                }
                            }
                            if (isset($_GET['cetak'])) {
                                if ($_GET['tipe_laporan']=="detail") {
                                    if (isset($_GET['id_peminjaman'])) {
                                        include "cetakdetailpeminjaman.php";
                                    }elseif (isset($_GET['id_kendaraan'])) {
                                        include "cetakdetailkendaraan.php";
                                    }
                                    
                                }elseif ($_GET['tipe_laporan']=="list") {
                                    include "cetaklist.php";
                                }
                            }
                        ?>
</form>
</div>
<div class="modal-footer">
    <?php
        if (isset($_POST['preview'])) {
            
            if ($_POST['tipe_laporan']=="detail") {
                if ($_POST['dari']=="peminjaman") {
    ?>
    <a href="?page=laporan&cetak=1&tipe_laporan=detail&id_peminjaman=<?php echo $_POST['id_peminjaman'];?>"
        class="btn btn-primary">Cetak</a>
    <?php
                }elseif ($_POST['dari']=="kendaraan") {
     ?>
    <a href="?page=laporan&cetak=1&tipe_laporan=detail&id_kendaraan=<?php echo $_POST['id_kendaraan']; ?>&dari_servis=<?php echo $_POST['dari_servis']; ?>&sampai_servis=<?php echo $_POST['sampai_servis']; ?>"
        class="btn btn-primary">Cetak</a>
    <?php
                }
            }elseif ($_POST['tipe_laporan']=="list") {
    ?>
    <a href="?page=laporan&cetak=1&tipe_laporan=list&dari_peminjaman=<?php echo $_POST['dari_peminjaman']; ?>&sampai_peminjaman=<?php echo $_POST['sampai_peminjaman']; ?>"
        class="btn btn-primary">Cetak</a>
    <?php
            }
    ?>

    <?php
        }
    ?>


</div>

<?php if(isset($_POST['dari_peminjaman'])){ ?>
<form method='POST' enctype='multipart/form-data' class='form-inline'>
    <div class="header">
        <h2 class="title">Laporan Peminjaman Kendaraan</h2>
    </div>
    <div class="body">
        <table class="table table-striped table-bordered data">
            <thead>
                <!--DWLayoutTable-->
                <tr>
                    <th>Id Peminjam</th>
                    <th>Nama Peminjam</th>
                    <th>Tujuan</th>
                    <th>Jumlah Kendaran</th>
                    <th>Tanggal Peminjaman</th>
                    <th>Kendaraan</th>
                    <th>Supir</th>
                    <th>Keterangan</th>
                    <!--<td width="134" align="center" valign="middle" >Foto</td>-->
                </tr>
            </thead>
            <tbody>
                <?php
                    if(isset($_POST['dari_peminjaman'])){
                        $dari = $_POST['dari_peminjaman'];
                    }else{
                        $dari = '';
                        
                    }

                    if(isset($_POST['sampai_peminjaman'])){
                        $sampai = $_POST['sampai_peminjaman'];
                    }else{
                        $sampai = '';
                    }
                   


                    $stmt = $DB_con->prepare("SELECT * from user RIGHT JOIN peminjaman ON user.id_pengguna=peminjaman.id_peminjam WHERE peminjaman.waktu_pinjam BETWEEN  '$dari' AND '$sampai'");

                    $stmt->execute();
                   
                     while($hasil = $stmt->fetch()){
                        if (!empty($_POST['dari_peminjaman']) && !empty($_POST['sampai_peminjaman'])) {
                          
                            if ($dari <= $hasil['waktu_pinjam'] && $hasil['waktu_pinjam']<=$sampai) {
                            $id_peminjaman = $hasil['id_peminjaman'];
                           
                            $stmtlist = $DB_con->prepare("SELECT * from plot_kendaraan LEFT JOIN kendaraan ON plot_kendaraan.id_kendaraan=kendaraan.id_kendaraan LEFT JOIN supir ON plot_kendaraan.id_supir=supir.id_supir LEFT JOIN peminjaman ON plot_kendaraan.id_peminjaman=peminjaman.id_peminjaman WHERE plot_kendaraan.id_peminjaman= $id_peminjaman AND peminjaman.status_peminjaman <> 'Canceled'");
                        }else{
                            $id_peminjaman = $hasil['id_peminjaman'];
                           
                            $stmtlist = $DB_con->prepare("SELECT * from plot_kendaraan LEFT JOIN kendaraan ON plot_kendaraan.id_kendaraan=kendaraan.id_kendaraan LEFT JOIN supir ON plot_kendaraan.id_supir=supir.id_supir LEFT JOIN peminjaman ON plot_kendaraan.id_peminjaman=peminjaman.id_peminjaman WHERE plot_kendaraan.id_peminjaman= $id_peminjaman AND peminjaman.status_peminjaman <> 'Canceled'");
                        }
                        }else{
                          
                            $id_peminjaman = $hasil['id_peminjaman'];
                            $stmtlist = $DB_con->prepare("SELECT * from plot_kendaraan LEFT JOIN kendaraan ON plot_kendaraan.id_kendaraan=kendaraan.id_kendaraan LEFT JOIN supir ON plot_kendaraan.id_supir=supir.id_supir LEFT JOIN peminjaman ON plot_kendaraan.id_peminjaman=peminjaman.id_peminjaman WHERE plot_kendaraan.id_peminjaman= $id_peminjaman AND peminjaman.status_peminjaman <> 'Canceled'");
                        }
                      
                        
                        $stmtlist->execute();
                        $datalist = $stmtlist->fetchall();
            ?>
                <tr>
                    <td><?php echo $hasil['id_peminjaman'];?></td>
                    <td><?php echo $hasil['nama'];?></td>
                    <td><?php echo $hasil['tujuan_peminjaman'];?></td>
                    <td><?php echo $hasil['jumlah_kendaraan'];?></td>
                    <td><?php
                $date = strtotime($hasil['waktu_pinjam']);
                $cetakdate = date("j-M-Y",$date);
                 echo $cetakdate ?></td>
                    <td><?php for ($i=0; $i < $stmtlist->rowCount() ; $i++) { 
                     echo "<p>- ".$datalist[$i]['nama_kendaraan']."</p>";
                 } ?></td>
                    <td><?php for ($i=0; $i < $stmtlist->rowCount() ; $i++) { 
                     echo "<p>- ".$datalist[$i]['nama_supir']."</p>";
                 } ?></td>
                    <td><?php echo $hasil['keterangan_peminjaman'];?></td>

                    <?php } ?>
                </tr>
            </tbody>
        </table>
    </div>
</form>

<?php } ?>

</div>