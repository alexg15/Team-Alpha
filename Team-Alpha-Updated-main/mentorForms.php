<?php


// Set parameters and execute statement
 //Basic Info
$fname = $_POST['fname'];
$pname = $_POST['pname'];
$lname = $_POST['lname'];
$gender = $_POST['gender'];
$ethnicity = $_POST['ethnicity'];
$untalumni = $_POST['untalumni'];
$plpalumni = $_POST['plpalumni'];
$served = $_POST['served'];
$yearsserved = $_POST['yearsserved'];
$phnumber = $_POST['phnumber'];
$streetadd = $_POST['streetadd'];
$city = $_POST['city'];
$state = $_POST['state'];
$zip = $_POST['zip'];
$differadd = $_POST['differadd'];
$diffmail = $_POST['diffmail'];
$diffcity = $_POST['diffcity'];
$diffstate = $_POST['diffstate'];
$diffzip = $_POST['diffzip'];
$citizen = $_POST['citizen'];
$lang = $_POST['lang'];

  //Mentoring Details
$mentorDescr = $_POST["mentorDescr"];
$mentorGoals = $_POST["mentorGoals"];
$genderp = $_POST["genderp"];
$genderpref = $_POST["genderpref"];
$prefstudmaj = $_POST["prefstudmaj"];
$transport = $_POST["transport"];


  // Mentor Requirements
$yearsExp = $_POST["yearsExp"];
$reference = $_POST["reference"];
$refEmail = $_POST["refEmaill"];
$refAfill = $_POST["refAffil"];

 //Program Expectations
$acknMatch = isset($_POST["acknMatch"]) ? "Yes" : "No";
$acknMeet = isset($_POST["acknMeet"]) ? "Yes" : "No";
$acknShare = isset($_POST["acknShare"]) ? "Yes" : "No";

  // Education and Experience
$summary = $_POST["summary"];
$indExp = $_POST["indExp"];
$uniName = $_POST["uniName"];
$degree = $_POST["degree"];
$major = $_POST["major"];
$minor = $_POST["minor"];
$gradYear = $_POST["gradYear"];
$certs = $_POST["certs"];
$acadAffill = $_POST["acadAffil"];

  // Current Job Info
$compName = $_POST["compName"];
$jobTitle = $_POST["jobTitle"];
$jobDescr = $_POST["jobDescr"];
$career = $_POST["career"];


  // Previous Work Experience
$fCompName = $_POST["fCompName"];
$fJobTitle = $_POST["fJobTitle"];
$fJobDescr = $_POST["fJobDescr"];
$startEmploy= $_POST["startEmploy"];
$endEmploy = $_POST["endEmploy"];
$stmt->execute();
?>