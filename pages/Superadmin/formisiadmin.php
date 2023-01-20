<?php 
include ('../../asset/database/koneksi.php');

?>
                <form method="POST" enctype="multipart/form-data" class="form-horizontal">
                            <div class="rows">
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">ID</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="id_pengguna" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Nama</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="nama" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Email</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="email" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Password</label>
                                    <div class="col-sm-4">
                                    <input type="password" name="password" class="form-control" required=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNim" class="col-sm-4 control-label">Nomor Telp.</label>
                                    <div class="col-sm-4">
                                    <input type="text" name="no_telepon" class="form-control" required=""/>
                                    </div>
                                </div>
                        <div align="center"><button type="submit" name="kirim_admin" class="btn btn-default">Submit</button></div>
                    </div>
                </form>