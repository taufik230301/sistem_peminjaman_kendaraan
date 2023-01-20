<?php 
include ('../../asset/database/koneksi.php');

?>

            <form method="POST" enctype="multipart/form-data" class="form-horizontal">
                            <div class="rows">
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">ID</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="id_kendaraan" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Nama Kendaraan</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="nama_kendaraan" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Merk</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="merk_kendaraan" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Tahun Produksi</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="tahun_produksi" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">No Rangka</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="bpkb_kendaraan" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">NoPol</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="nomor_polisi_merah" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group" hidden >
                                    <label for="inputNim" class="col-sm-4 control-label">no Mesin</label>
                                    <div class="col-sm-4">
                                    <input type="hidden" value="-" name="nomor_polisi_hitam" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">no Mesin</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="nomor_mesin" class="form-control" required=""/>
                                    </div>
                                </div>
                            <div align="center"><button type="submit" name="kirim_kendaraan" class="btn btn-default">Submit</button></div>
                    </div>
                </form>