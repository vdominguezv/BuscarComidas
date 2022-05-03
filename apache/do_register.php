//do_register

<?php
	$db = mysqli_connect('localhost','root','1234','BuscarComidas') or die ('Fail');

	$user_posted = $_POST['name'];
	$email_posted = $_POST['email'];
	$password_posted = $_POST['password'];

	$query = "INSERT INTO tUsuario(nombre,email,contrasena) VALUES ('".$user_posted."',".$email_posted.",".$password_posted.")";

	$result = mysqli_query($db, $query) or die('Error');
	if (mysql_num_rows($result) > 0){
	$p_hashed = password_hash($password_posted, PASSWORD_BCRYPT);
	echo "<meta http-equiv='refresh' content='0'; url=login.html>"
}else{
	echo "<p>Usuario ya creado</p>"
}
?>
