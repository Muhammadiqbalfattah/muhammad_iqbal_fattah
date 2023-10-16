<?php
//API Tentang Kami
$conn = mysqli_connect("localhost", "root", "", "uts_api_pemweb");
$response = array();

if ($conn) {
  $sql = "SELECT * FROM tentang_kami";
  $result = mysqli_query($conn, $sql);

  if ($result) {
    $i = 0;
    while ($row = mysqli_fetch_assoc($result)) {
      $response['tentang_kami'][$i]['deskripsi'] = $row['deskripsi'];
      $response['tentang_kami'][$i]['daftar_gambar'] = $row['daftar_gambar'];
      $i++;
    }
  } else {
    $response['tentang_kami_error'] = "Error executing SQL query: " . mysqli_error($conn);
  }

  mysqli_close($conn); // Tutup koneksi database (tambahkan titik koma di sini)
}


//API layanan
$conn2 = mysqli_connect("localhost", "root", "", "uts_api_pemweb");

if ($conn2) {
  $sql = "SELECT * FROM layanan";
  $result = mysqli_query($conn2, $sql);

  if ($result) {
    $i = 0;
    while ($row = mysqli_fetch_assoc($result)) {
      $response['layanan'][$i]['nama_layanan'] = $row['nama_layanan'];
      $response['layanan'][$i]['deskripsi_layanan'] = $row['deskripsi_layanan'];
      $response['layanan'][$i]['gambar_layanan'] = $row['gambar_layanan'];
      $i++;
    }
  } else {
    $response['layanan_error'] = "Error executing SQL query: " . mysqli_error($conn2);
  }

  mysqli_close($conn2);
}

//API Resume
$conn3 = mysqli_connect("localhost", "root", "", "uts_api_pemweb");

if ($conn3) {
  $sql = "SELECT * FROM resume";
  $result = mysqli_query($conn3, $sql);

  if ($result) {
    $i = 0;
    while ($row = mysqli_fetch_assoc($result)) {
      $response['resume'][$i]['nama_lengkap'] = $row['nama_lengkap'];
      $response['resume'][$i]['deskripsi_diri'] = $row['deskripsi_diri'];
      $response['resume'][$i]['pengalaman_kerja'] = $row['pengalaman_kerja'];
      $response['resume'][$i]['pendidikan_formal'] = $row['pendidikan_formal'];
      $response['resume'][$i]['gambar_profile'] = $row['gambar_profile'];
      $i++;
    }
  } else {
    $response['resume'] = "Error executing SQL query: " . mysqli_error($conn3);
  }

  mysqli_close($conn3);
}

//API kontak person
$conn4 = mysqli_connect("localhost", "root", "", "uts_api_pemweb");

if ($conn4) {
  $sql = "SELECT * FROM kontak_person";
  $result = mysqli_query($conn4, $sql);

  if ($result) {
    $i = 0;
    while ($row = mysqli_fetch_assoc($result)) {
      $response['kontak_person'][$i]['nama_lengkapp'] = $row['nama_lengkapp'];
      $response['kontak_person'][$i]['nim'] = $row['nim'];
      $response['kontak_person'][$i]['nomor_seluler'] = $row['nomor_seluler'];
      $response['kontak_person'][$i]['jam_operasional'] = $row['jam_operasional'];
      $i++;
    }
  } else {
    $response['kontak_person'] = "Error executing SQL query: " . mysqli_error($conn4);
  }

  mysqli_close($conn4);
}

header("Content-Type: application/json");
echo json_encode($response, JSON_PRETTY_PRINT);
?>
