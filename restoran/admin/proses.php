<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<?php
require '../layout_function.php';

$no = $_POST['no'];
$nama = $_POST['nama'];
$no_meja = $_POST['no_meja'];
$bayar = $_POST['bayar'];
$tot = $_POST['total'];
$kembali = $_POST['kembali'];
$tgl = date('d/m/Y h:i:s');
$no_transaksi = $tgl.'-'.$no;

$queryNip = mysqli_query($link, "SELECT * FROM t_pegawai WHERE nama='$nama'");
$dataNip = mysqli_fetch_assoc($queryNip);
$nip = $dataNip['nip'];

$queryPesanan = mysqli_query($link, "SELECT * FROM pesan WHERE no_meja='$no_meja'");
while($dataPesanan = mysqli_fetch_assoc($queryPesanan)){
    $pesanan = $dataPesanan['kode'];

    $query = mysqli_query($link, "INSERT INTO transaksi VALUES ('','$no_transaksi','$nip','$no_meja','$pesanan','$tot','$bayar','$kembali','$tgl')");
    if($query){
        mysqli_query($link, "DELETE FROM pesan WHERE no_meja='$no_meja'");
        echo "
        <script type='text/javascript'>
            setTimeout(function () {
                swal({
                    title: 'Success',
                    text: 'Transaksi Selesai',
                    icon: 'success',
                    timer: 3000,
                    button: false,
                });
            }, 10);
            window.setTimeout(function () {
                window.location.replace('bayar.php');
            }, 3000); 
        </script>
        ";
    }else{
        echo "Transaksi Gagal";
    }
}