<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
	<link rel="stylesheet" type="text/css" href="../css/MentorRegister.css">
	<script>
		function loginFunction() {
			var firstname = document.getElementById("firstname").value;
			var lastname = document.getElementById("lastname").value;
			var email = document.getElementById("email").value;

			if (firstname.trim() === "" || lastname.trim() === "" || !isValidEmail(email)) {
				alert("Please fill out the required fields correctly.");
			} else {
				alert("Successfully Registered");
				//window.location.href = 'mentorRegister.css';
			}
		}

		function isValidEmail(email) {
			// Regular expression for email validation
			var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			return emailPattern.test(email);
		}
	</script>
</head>
<body>
	<div class="login-box">
		<h2>Register</h2>
		<form method="POST" action="MentorWelcome.php">
			<label for="firstname">First Name:</label><br>
			<input type="text" id="firstname" name="firstname" required><br>
			<label for="lastname">Last Name:</label><br>
			<input type="text" id="lastname" name="lastname" required><br>
			<label for="email">Email:</label><br>
			<input type="email" id="email" name="email" required><br>
			<button type="submit" class="btn">Register as mentor</button>
		</form>
	</div>
</body>
</html>




  