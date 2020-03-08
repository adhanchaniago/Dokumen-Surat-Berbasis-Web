<?php
    ob_start();
    //cek session
    session_start();

    if(empty($_SESSION['admin'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {
?>

<!doctype html>
<html lang="en">
<head>
<!-- Include Head START -->
<link href="asset/css/animasi.css" rel="stylesheet" type="text/css">
<link href="asset/css/card.css" rel="stylesheet" type="text/css">
<link href="asset/js/card.js.css" rel="stylesheet" type="text/css">
<style type="text/css">
.container1 {                margin-top: -20px !important;
}
</style>
<?php include('include/head.php'); ?>
<!-- Include Head END -->
</head>
<!-- Body START -->
<body class="bg">

<!-- Header START -->
<header>

<!-- Include Navigation START -->
<?php include('include/menu.php'); ?>
<!-- Include Navigation END -->
</header>
<!-- Header END -->

<!-- Main START -->
<main>
            
    <!-- container START -->
    <div class="container">

    <?php
        if(isset($_REQUEST['page'])){
            $page = $_REQUEST['page'];
            switch ($page) {
                case 'tsm':
                    include "transaksi_surat_masuk.php";
                    break;
                case 'ctk':
                    include "cetak_disposisi.php";
                    break;
                case 'tsk':
                    include "transaksi_surat_keluar.php";
                    break;
                case 'asm':
                    include "agenda_surat_masuk.php";
                    break;
                case 'ask':
                    include "agenda_surat_keluar.php";
                    break;
                case 'ref':
                    include "referensi.php";
                    break;
                case 'pro':
                    include "profil.php";
                    break;
                case 'gsm':
                    include "galeri_sm.php";
                    break;
                case 'gsk':
                    include "galeri_sk.php";
                    break;
            }
        } else {
     ?>
        <!-- Row START -->
        <div class="row">

            <!-- Include Header START -->
            <?php include('include/animasi.php'); ?>
 
            
           <!-- Welcome Message START -->
            <!-- Welcome Message END -->

            <?php
                //menghitung jumlah surat masuk
                $count1 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_masuk"));

                //menghitung jumlah surat masuk
                $count2 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_keluar"));

                //menghitung jumlah surat masuk
                $count3 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_disposisi"));

                //menghitung jumlah klasifikasi
                $count4 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_klasifikasi"));

                //menghitung jumlah pengguna
                $count5 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_user"));
            ?>

			 <!-- Info card START -->
<br>
<br>
<br>
<figure class="snip1166">
  <img src="images/4.jpg" alt="sample74"/>
  <figcaption>
    <center><h4><i class="material-icons md-36">mail</i>
    <br>Jumlah Surat Masuk</h4></center>
    <div>
      <center><p><?php echo '<class="white-text link">'.$count2.' Surat Keluar'; ?></p></center>
    </div>
  </figcaption>
</figure>
<figure class="snip1166">
  <img src="images/5.jpg" alt="sample74"/>
  <figcaption>
    <center><h4><i class="material-icons md-36">drafts</i>
    <br>Jumlah Surat Keluar</h4></center>
    <div>
      <center><p><?php echo '<class="white-text link">'.$count2.' Surat Keluar'; ?></p></center>
    </div>
  </figcaption>
</figure>
<figure class="snip1166">
  <img src="images/9.jpg" alt="sample74"/>
  <figcaption>
    <center><h4><i class="material-icons md-36">description</i>
    <br>Jumlah Disposisi</h4></center>
    <div>
      <center><p><?php echo '<class="white-text link">'.$count3.' Disposisi'; ?></p></center>
    </div>
  </figcaption>
</figure>
<figure class="snip1166">
<img src="images/7.jpg" alt="sample74"/>
  <figcaption>
    <center><h4><i class="material-icons md-36">class</i>
    <br>Jumlah Klasifikasi Surat</h4></center>
    <div>
      <center><p><?php echo '<class="white-text link">'.$count4.' Klasifikasi Surat'; ?></p></center>
    </div>
</figcaption>
</figure>
<figure class="snip1166">
  <img src="images/8.jpg" alt="sample74"/>
  <figcaption>
    <center><h4><i class="material-icons md-36">people</i>
    <br>Jumlah Pengguna</h4></center>
    <div>
      <center><p><?php echo '<class="white-text link">'.$count5.' Pengguna'; ?></p></center>
    </div>
  </figcaption>
</figure>
              <!-- Info card END -->
        <?php
            }
        ?>

  </div>
        <!-- Row END -->
    <?php
        }
    ?>
</div>
    <!-- container END -->

</main>
<!-- Main END -->

<!-- Include Footer START -->
<?php include('include/footer.php'); ?>
<!-- Include Footer END -->
</body>
<!-- Body END -->

</html>

