<?php 

?>
            <form method="POST" enctype="multipart/form-data" class="form-horizontal">
                            <div class="rows">
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">ID</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="id_supir" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Nama</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="nama_supir" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Nomor Telp.</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="no_telepon_supir" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Alamat Supir</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="alamat_supir" class="form-control" required=""/>
                                    </div>
                                </div>
                        <div align="center"><button type="submit" name="kirim_supir" class="btn btn-default">Submit</button></div>
                    </div>
                </form>