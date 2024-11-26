<?php
session_start();
require 'koneksi/koneksi.php';

// Hitung jumlah item dalam keranjang
$jumlah_keranjang = isset($_SESSION['keranjang']) ? count($_SESSION['keranjang']) : 0;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title><?= $info_web->title; ?></title>
    <link rel="shortcut icon" href="assets/img/logo/<?= $info_web->logo; ?>">
    <meta content="Dapur Kynan" name="descriptison">
    <meta content="Dapur Kynan" name="keywords">
    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome-4.7.0/css/font-awesome-animation.min.css">
    <!-- Sweetalert -->
    <link rel="stylesheet" type="text/css" href="assets/plugins/swal/sweetalert.css">
    <script type="text/javascript" src="assets/plugins/swal/sweetalert.min.js"></script>
    <script src="assets/js/jquery-2.2.1.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    <script src="ajax/js/jquery-1.10.2.min.js"></script>
    <link href="ajax/css/jquery-ui.css" rel="stylesheet">
    <script src="ajax/js/jquery-ui.js"></script>
    <!--  <script src="ajax/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="ajax/css/bootstrap.min.css"> -->
    <!-- Custom CSS -->
    <link href="ajax/css/style.css" rel="stylesheet">
    <style type="text/css">
        .gambarsorot img {
            -webkit-transform: scale(0.9);
            -moz-transform: scale(0.9);
            -o-transform: scale(0.9);
            -webkit-transition-duration: 0.3s;
            -moz-transition-duration: 0.3;
            -o-transition-duration: 0.3s;
            opacity: 0.8;
            margin: 0 5px 5px 0;
        }

        .gambarsorot img:hover {
            -webkit-transform: scale(1.0);
            -moz-transform: scale(1.0);
            -o-transform: scale(1.0);
            box-shadow: 0px 0px 5px #32a852;
            -webkit-box-shadow: 0px 0px 5px #32a852;
            -moz-box-shadow: 0px 0px 5px #32a852;
            opacity: 1;
        }

        .hover-effect {
            transition: all 0.3s ease;
            border-radius: 5px;
        }

        .hover-effect:hover {
            background-color: #f8f9fa;
            transform: scale(1.05);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .nav-link {
            font-weight: 500;
            position: relative;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: 0;
            left: 0;
            background-color: #32a852;
            transition: width 0.3s;
        }

        .nav-link:hover::after {
            width: 100%;
        }

        html,
        body {
            padding: 0;
        }
    </style>
    <!-- Data Table -->
    <link rel="stylesheet" href="assets/plugins/datatables/dataTables.bootstrap.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
   folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="assets/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/diva.css" rel="stylesheet">

    <!-- Sweetalert -->
    <link rel="stylesheet" type="text/css" href="assets/swal/sweetalert.css">
    <script type="text/javascript" src="assets/swal/sweetalert.min.js"></script>
    <script src="assets/js/jquery-2.2.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
    <link rel="stylesheet" href="sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top bg-white ">
        <div class="container-fluid pb-4 py-2">
            <div class="d-flex align-items-center justify-content-between">
                <!-- Logo and Title Section -->
                <div class="logo d-flex align-items-center">
                    <a href="./" class="d-flex align-items-center text-decoration-none">
                        <img src="assets/img/logo/<?= $info_web->logo; ?>"
                            alt="<?= $info_web->title; ?> Logo"
                            class="img-fluid mr-3"
                            style="max-height: 60px;">
                        <div>
                            <h1 class="h4 mb-0 text-primary"><?= $info_web->title; ?></h1>
                            <small class="text-muted d-block">Cemilan Halal, Homemade, dan Tanpa Pengawet</small>
                        </div>
                    </a>
                </div>

                <!-- Navigation Menu -->
                <nav class="nav-menu d-none d-lg-block">
                    <ul class="nav nav-pills">
                        <li class="nav-item">
                            <a href="./" class="nav-link text-dark hover-effect">
                                <i class="fa fa-home mr-2 text-primary"></i> Beranda
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="produk.php" class="nav-link text-dark hover-effect">
                                <i class="fa fa-bars mr-2 text-primary"></i> Produk
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="./#kontak" class="nav-link text-dark hover-effect">
                                <i class="fa fa-phone-square mr-2 text-primary"></i> Kontak
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="keranjang.php" class="nav-link text-dark hover-effect position-relative">
                                <span class="badge badge-primary badge-pill position-absolute" style="top: -8px; right: -8px;">
                                    <?= $jumlah_keranjang; ?>
                                </span>
                                <i class="fa fa-opencart mr-2 text-primary"></i> Keranjang
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>


    <script>
        jQuery(document).ready(function($) {
            $('.keluar').on('click', function() {
                var getLink = $(this).attr('href');
                swal({
                    title: 'Anda Yakin Akan Keluar?',
                    text: 'Aplikasi <?= $info_web->title; ?>',
                    html: true,
                    type: 'warning',
                    confirmButtonColor: '#dc3545',
                    confirmButtonText: 'Ya, Keluar!',
                    showCancelButton: true,
                    cancelButtonColor: "#dc3545",
                    cancelButtonText: 'Batal',
                }, function() {
                    window.location.href = getLink
                });
                return false;
            });
        });
    </script>