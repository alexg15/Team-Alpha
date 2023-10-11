<?php
//*Mentee Application Page*

//Variable declarations for PHP

//*Mentee Application Page*

//Basic Info
$fName = $_POST["fName"];
$prefName = $_POST["prefName"];
$lName = $_POST["lName"];
$studID = $_POST["studID"];
$DOB = $_POST["DOB"];
$gender = $_POST["gender"];
$ethnicity = $_POST["ethnicity"];
$intStatus = $_POST["intStatus"];
$firstGen = $_POST["firstGen"];
$prefPhone = $_POST["prefPhone"];
$street = $_POST["street"];
$city = $_POST["city"];
$state = $_POST["state"];
$zipCode = $_POST["zipCode"];
$languages = $_POST["languages"];
$allergies = $_POST["allergies"];

//FERPA
$personalemail = $_POST["personalemail"];
$UNTemail = $_POST["UNTemail"];
$disclosureCheck = $_POST["disclosureCheck"];
$releaseCheck = $_POST["releaseCheck"];
$specificCheck = $_POST["specificCheck"];
$informCheck = $_POST["informCheck"];
$revokeCheck = $_POST["revokeCheck"];
$signature = $_POST["signature"];
$signatureDate = $_POST["signatureDate"];

//Education and Experience
$major = $_POST["major"];
$concentration = $_POST["concentration"];
$minor = $_POST["minor"];
$college = $_POST["college"];
$honors = $_POST["honors"];
$GPA = $_POST["GPA"];
$classification = $_POST["classification"];
$gradDate = $_POST["gradDate"];
$enrolledHours = $_POST["enrolledHours"];

//Employment
$employmentStatus = $_POST["employmentStatus"];
$employerName = $_POST["employerName"];
$workHours = $_POST["workHours"];
$clubs = $_POST["clubs"];
$clubHours = $_POST["clubHours"];
$discovery = $_POST["discovery"];
$contact = $_POST["contact"];

//Program Info
$travel = $_POST["travel"];
$trans = $_POST["trans"];
$mentorPref = $_POST["mentorPref"];
$goals = $_POST["goals"];
$interests = $_POST["interests"];
$industryPref = $_POST["industryPref"];
$mentorGenPrefCheck = $_POST["mentorGenPrefCheck"];
$mentorGenderPref = $_POST["mentorGenderPref"];
$meetingCheck = $_POST["meetingCheck"];
$matchCheck = $_POST["matchCheck"];
$stmt->execute();

//*Mentee Welcome Page*

$understandCheck = $_POST["understandCheck"];
$stmt->execute();
?>