<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$confirm_password = $_POST['confirm_password'];

	// Check if the passwords match
	if ($password != $confirm_password) {
		header('Location: Registration.html');
		exit();
	}

	// Add the new user information to the array
	$user = array(
		'email' => $email,
		'firstname' => $firstname,
		'lastname' => $lastname,
		'password' => $password
	);

	// Convert the user array to a JSON string without escaped slashes
	$user_json = json_encode($user, JSON_UNESCAPED_SLASHES);

	// Append the new user information to the file
	$file = 'users.txt';
	$fh = fopen($file, 'a');
	fwrite($fh, $user_json . "\n");
	fclose($fh);

	// Redirect the user to a success page
	header('Location: Authorization.html');
	exit();
}
?>
