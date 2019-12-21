<?php
$db_host = 'localhost'; // Nama Server
$db_user = 'root'; // User Server
$db_pass = ''; // Password Server
$db_name = 'count'; // Nama Database

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
	die ('Gagal terhubung dengan MySQL: ' . mysqli_connect_error());	
}

$result=mysql_query('USE count');
if (!$result)
{
   die("Database gagal digunakan");
}

$data=mysql_query('SELECT name, earn_vote FROM tb_caleg');

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Perolehan Suara Caleg</title>
</head>

<body>
  <table border="1">
  	<tr>
  		 	<td height="40" width="200">  </td>
  		 	<td rowspan="2" height="40" width="200"><center><input type="submit" name="button" id="button" value="Tombol Tambah" style="background-color: red; color: white !important;" /></center></td>
  	</tr>
  	<tr>
  		<td height="40" width="200"> Earn Vote:  </td>
  	</tr>
  	<?php
  		$data=mysql_query('SELECT name, earn_vote FROM tb_caleg');

while ($row=mysql_fetch_array($data)) {
	
}



  </table>
  	 <br> <br>
  <table border="1">
  	<tr>
  		 	<td height="40" width="200">Nama Calon</td>
  		 	<td rowspan="2" height="40" width="200"><center><input type="submit" name="button" id="button" value="Tombol Tambah" style="background-color: red; color: white !important;" /></center></td>
  	</tr>
  	<tr>
  		<td height="40" width="200"> Earn Vote:  </td>
  	</tr>
  </table>
  	 <br> <br>
  <table border="1">
  	<tr>
  		 	<td height="40" width="200">Nama Calon</td>
  		 	<td rowspan="2" height="40" width="200"><center><input type="submit" name="button" id="button" value="Tombol Tambah" style="background-color: red; color: white !important;" /></center></td>
  	</tr>
  	<tr>
  		<td height="40" width="200"> Earn Vote:  </td>
  	</tr>


  </table>
</body>
</html>
