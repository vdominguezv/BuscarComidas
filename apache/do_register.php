
<?php


	$db = mysqli_connect('localhost','root','1234','BuscarComidas') or die ('Fail');



	$user_posted = $_POST['name'];
	$email_posted = $_POST['email'];
	$password_posted = $_POST['password'];


	$total = $mysqli_connect->query("SELECT * FROM tUsuario WHERE nombre = '.$user_posted.'");
	if (mysql_num_rows($total) != 0){
	echo "<p>Este usuario ya existe</p>";
}else{
	$query = "INSERT INTO tUsuario(nombre,email,contrasena) VALUES ('".$user_posted."','".$email_posted."','".$password_posted."')";

	mysqli_query($db, $query) or die('Error');

	echo "<p>Usuario ";
	echo mysql_insert_id($db);
	echo " creado</p>";
}


mysqli_close($db);

?>
