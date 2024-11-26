<?php
session_start();

// Ensure order details are available
if (!isset($_SESSION['order_details'])) {
    header('Location: index.php');  // Redirect to homepage if no order details found
    exit();
}

$order_details = $_SESSION['order_details'];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Konfirmasi Pesanan Berhasil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h1 class="card-title text-center">Terima Kasih!</h1>
                <p class="card-text text-center">Pesanan Anda telah berhasil dibuat.</p>
                <p class="card-text text-center">Silahkan Klik Kirim pesan ke penjual untuk melakukan konfirmasi pesanan.</p>
                <hr>
                <h4 class="card-title">Detail Pesanan</h4>
                <table class="table table-bordered">
                    <tr>
                        <th>Tanggal</th>
                        <td><?php echo htmlspecialchars($order_details['tanggal']); ?></td>
                    </tr>
                    <tr>
                        <th>Via</th>
                        <td><?php echo htmlspecialchars($order_details['via']); ?></td>
                    </tr>
                    <tr>
                        <th>Nama</th>
                        <td><?php echo htmlspecialchars($order_details['nama']); ?></td>
                    </tr>
                    <tr>
                        <th>Nama Produk</th>
                        <td><?php echo htmlspecialchars($order_details['nama_produk']); ?></td>
                    </tr>
                    <tr>
                        <th>WhatsApp</th>
                        <td><?php echo htmlspecialchars($order_details['whatsapp']); ?></td>
                    </tr>
                    <tr>
                        <th>Alamat</th>
                        <td><?php echo htmlspecialchars($order_details['alamat']); ?></td>
                    </tr>
                    <tr>
                        <th>Metode Pembayaran</th>
                        <td><?php echo htmlspecialchars($order_details['metode_pembayaran']); ?></td>
                    </tr>
                    <tr>
                        <th>Total Belanja</th>
                        <td><?php echo htmlspecialchars($order_details['total_belanja']); ?></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td><?php echo htmlspecialchars($order_details['status']); ?></td>
                    </tr>
                </table>
                <div class="text-center">
                    <a href="index.php" class="btn btn-primary">Kembali ke Halaman Utama</a>
                    <a target="_blank" href="https://wa.me/628872588744?text=Pesanan%20Anda%20:%0A%0A%20Tanggal%3A%20<?php echo urlencode($order_details['tanggal']); ?>%0A%20Via%3A%20<?php echo urlencode($order_details['via']); ?>%0A%20Nama%3A%20<?php echo urlencode($order_details['nama']); ?>%0A%20Nama%20Produk%3A%20<?php echo urlencode($order_details['nama_produk']); ?>%0A%20WhatsApp%3A%20<?php echo urlencode($order_details['whatsapp']); ?>%0A%20Alamat%3A%20<?php echo urlencode($order_details['alamat']); ?>%0A%20Metode%20Pembayaran%3A%20<?php echo urlencode($order_details['metode_pembayaran']); ?>%0A%20Total%20Belanja%3A%20<?php echo urlencode($order_details['total_belanja']); ?>%0A%20Status%3A%20<?php echo urlencode($order_details['status']); ?>" class="btn btn-success" target="_blank">Kirim Pesan ke Penjual</a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"></script>


</body>

</html>