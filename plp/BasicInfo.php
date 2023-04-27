<!DOCTYPE html>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $fname = $_POST['fname'];
    $prefname = $_POST['prefname'];
    $lname = $_POST['lname'];
    $student_id = $_POST['student_id'];
    $email = $_POST['email'];
    $date_of_birth = date('Y-m-d', strtotime($_POST['date_of_birth']));
    $class = $_POST['class'];
    $gpa = $_POST['gpa'];
    if (is_numeric($gpa)) {
        $gpa = floatval($gpa);
    } else {
        echo 'GPA is not numeric';
    }
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $zipcode = $_POST['zipcode'];
    


    //DATABASE CONNECTION CONFIG
    $host = "localhost";
    $username = "root";
    $password = "";
    $database = "plptest";

    $conn = mysqli_connect($host, $username, $password, $database);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    //echo "Connected successfully to database";

    // Sanitize and validate user input
    $fname = mysqli_real_escape_string($conn, $fname);
    $prefname = mysqli_real_escape_string($conn, $prefname);
    $lname = mysqli_real_escape_string($conn, $lname);
    $student_id = mysqli_real_escape_string($conn, $student_id);
    $email = mysqli_real_escape_string($conn, $email);
    $date_of_birth = mysqli_real_escape_string($conn, $date_of_birth);
    $phone = mysqli_real_escape_string($conn, $phone);
    $address = mysqli_real_escape_string($conn, $address);
    $city = mysqli_real_escape_string($conn, $city);
    $state = mysqli_real_escape_string($conn, $state);
    $zipcode = mysqli_real_escape_string($conn, $zipcode);

    // Construct an SQL query - very long I should try to multi line when more confident
    $sql = "INSERT INTO mentees (fname, prefname, lname, student_id, email, date_of_birth, class, gpa, phone, address, city, state, zipcode) 
    VALUES ('$fname', '$prefname', '$lname', '$student_id', '$email', '$date_of_birth', '$class', '$gpa', '$phone', '$address', '$city', '$state', '$zipcode')";
    // Execute the query
    if (mysqli_query($conn, $sql)) {
        echo "User record saved successfully";
    } else {
        echo "Error: " . mysqli_error($conn);
    }
    // Close the database connection
    mysqli_close($conn);

    exit();
}
?>

<!-- saved from url=(0036)https://untplp.com/basic%20info.html -->
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>UNT Professional Leadership program </title>
		<meta name="description" content="Professional Leadership program">
		<meta name="keywords" content="Professional Leadership Program UNT">
		
	  <link rel="stylesheet" type="text/css" href="./css/main.css">
      <link href="./css/css" rel="stylesheet" type="text/css">
		<style>

			

		</style>
		
	</head>
	<body>
		<div class="header">

			<ul class="tabs">
				<li><a class="button" href="index.php">Welcome</a></li>
			  <li><a class="button" href="Requirements.php">Requirements  </a> </li>
			  <li><b>Basic Info </b></li>
			  <li><a class="button" href="ExperienceEducation.php"> Professional Experience and Education </a></li>
			  <li><a class="button" href="Mentoring.php"> Mentoring Details </a></li>
			</ul>
		</div>
	
<h1> Basic Info </h1>
<div class="ferpa">
<form method="POST">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" required><br><br>
    
  <label for="prefname">Preferred first name:</label><br>
  <input type="text" id="prefname" name="prefname" required><br><br>
  
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" required><br><br>
  
  <label for="student_id">Student ID number:</label><br>
  <input type="text" id="student_id" name="student_id" required><br><br>
  
  <label for="email">UNT Email:</label><br>
  <input type="email" id="email" name="email" required><br><br>

  <label for="date_of_birth">Date of Birth:</label><br>
  <input type="date" name="date_of_birth" id="date_of_birth" required><br><br>

  <label for="class">Class (Senior, junior, sophmore, freshman):</label><br>
  <input type="text" id="class" name="class"  required><br><br>

  <label for="gpa">GPA:</label><br>
  <input type="text" id="gpa" name="gpa" step="any" required><br><br>

  <!--
  <label for="gender">Gender:</label><br>
  <input type="text" id="gender" name="gender" required><br><br>
  
  <label for="ethnicity">Ethnicity:</label><br>
  <input type="text" id="ethnicity" name="ethnicity"><br><br>

  <label for="intlstudent">Occasionally, we provide special programming and opportunities for various student populations. Are you classified as an international student? </label><br>
  <select id="intlstudent" name="intlstudent">
  <option value="yes">Yes</option>
  <option value="no">No</option> 
  </select> <br><br>
  
  <label for="lname"> Occasionally, we provide special programming and opportunities for various student populations. Are you a first generation college student? </label><br>
  <select id="yesno" name="yesno">
  <option value="yes">Yes</option>
  <option value="no">No</option> 
  </select> <br><br>
-->

  <label for="phone">Preferred Phone Number:</label><br>
  <input type="tel" id="phone" name="phone"  required><br><br>
  
  <label for="address">Permanent Street Address:</label><br>
  <input type="text" id="address" name="address"  required><br><br>
  
  <label for="city">City:</label><br>
  <input type="text" id="city" name="city"  required><br><br>
  
  <label for="state">State:</label><br>
  <input type="text" id="state" name="state"  required><br><br>
  
  <label for="zipcode">Zip Code:</label><br>
  <input type="text" id="zipcode" name="zipcode"  required><br><br>

  <!--
  <label for="languages">What languages do you speak?</label><br>
  <input type="text" id="languages" name="languages"  required><br><br>

  <label for="shirtsize">T-shirt size:</label><br>
  <input type="text" id="shirtsize" name="shirtsize"  required><br><br>
  
  <label for="polosize">Polo shirt size:</label><br>
  <input type="text" id="polosize" name="polosize"  required><br><br>
  
  <label for="sweatshirtsize">Sweatshirt size:</label><br>
  <input type="text" id="lname" name="lname"  required><br><br>
  
  <label for="lname">Please list any food allergies or dietary restrictions:</label><br>
  <input type="text" id="lname" name="lname"><br><br>
-->
  <input type="submit" value="Submit">
</form> 
</div>
					
		<div class="copyright">
		  <p> <span> © </span> 2023 University of North Texas. All Rights Reserved.</p>
		</div>
		
		<div class="footer">
			<ul class="bottomTabs">
				<li><a class="button2" href="https://speakout.unt.edu/">Mental Health Resources  </a> </li>
			  <li><a class="button2" href="https://idea.unt.edu/">Inclusion Diversity Equity and Access</a> </li>
			  <li><a class="button2" href="https://idea.unt.edu/title-ix">Title IX and Sexual Misconduct Policy</a></li>
			  <li><a class="button2" href="https://www.unt.edu/ada"> AA/EOE/ADA </a></li>
			  <li><a class="button2" href="https://www.unt.edu/disclaimer"> Disclaimer </a></li>
			  <li><a class="button2" href="https://sao.fraud.texas.gov/"> State Auditor's Office Fraud, Waste, or Abuse Hotline </a></li>
			  <li><a class="button2" href="https://policy.unt.edu/policy/04-002"> Requests for Public Information </a></li>
			  <li><a class="button2" href="https://cm.maxient.com/reportingform.php?UnivofNorthTexas&amp;layout_id=6"> Report Sexual Misconduct </a></li>
			  <li><a class="button2" href="https://studentaffairs.unt.edu/hazing"> Hazing Prevention and Response </a></li>
			  <li><a class="button2" href="https://secure.ethicspoint.com/domain/media/en/gui/56566/index.html"> Compliance Trust Line </a></li>
			  <li><a class="button2" href="https://gov.texas.gov/"> Texas Homeland Security </a></li>
			  <li><a class="button2" href="https://itss.untsystem.edu/divisions/mrs/it-standards/linking-notice.php"> Linking Notice </a></li>
			  <li><a class="button2" href="https://www.tsl.texas.gov/trail/index.html"> Statewide Search </a></li>
			  <li><a class="button2" href="https://veterans.portal.texas.gov/"> Texas Veterans Portal </a></li>
			  <li><a class="button2" href="https://www.unt.edu/compact-with-texans"> Compact With Texans </a></li>
			  <li><a class="button2" href="https://www.texas.gov/"> Texas Gov </a></li>
			  <li><a class="button2" href="https://www.unt.edu/required-links.html"> Required Links </a></li>
			</ul>
		
		</div>
	
</body>
</html>