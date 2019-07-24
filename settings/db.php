<?php
#mysql_ li ile veritabanına bağlantısı
$baglanti = mysql_connect("localhost","root","123456") or die ();
mysql_select_db("cybrbook", $baglanti) or die ( mysql_error() );
mysql_set_charset("utf8");

#PDO da veritabanı bağlantısı
try {
     $db = new PDO("mysql:host=localhost;dbname=cybrbook", "root", "123456");
} catch ( PDOException $e ){
     print $e->getMessage();
}
?>