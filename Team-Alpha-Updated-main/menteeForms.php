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
$gender = isset(_POST["gender"]) ? "genderDefault" : "male" : "female" : "agender" : "genderQueer" : "genderNonConforming" : "nonbinary" : "transgender" : "transman" : "transwoman" : "other" : "preferNotDisclose" ;
$ethnicity = $_POST["ethnicity"];
$intStatus = isset(_POST["intStatus"]) ? "intDefault" : "intYes" : "intNo" ;
$firstGen = isset(_POST["firstGen"]) ? "firstDefault" : "firstYes" : "firstNo" ;
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
$honors = isset(_POST["honors"]) ? "honDefault" : "honYes" : "honNo" ;
$GPA = $_POST["GPA"];
$classification = isset(_POST["classification"]) ? "classDefault" : "classSophomore" : "classJunior" : "classSenior" ;
$gradDate = $_POST["gradDate"];
$enrolledHours = $_POST["enrolledHours"];

//Employment
$employmentStatus = isset(_POST["employmentStatus"]) ? "empDefault" : "empYes" : "empNo" ;
$employerName = $_POST["employerName"];
$workHours = $_POST["workHours"];
$clubs = $_POST["clubs"];
$clubHours = $_POST["clubHours"];
$discovery = isset(_POST["discovery"]) ? "disDefault" : "current" : "poster" : "professor" : "staff" : "emailRecruit" : "word" : "article" : "alumni" : "professional" : "org" : "notListed" ;
$contact = $_POST["contact"];

//Program Info
$travel = isset(_POST["travel"]) ? "travDefault" : "travYes" : "travNo" ;
$trans = isset(_POST["trans"]) ? "transDefault" : "transYes" : "transNo" ;
$mentorPref = $_POST["mentorPref"];
$goals = $_POST["goals"];
$interests = $_POST["interests"];
$industryPref = $_POST["industryPref"];
$mentorGenPrefCheck = isset(_POST["mentorGenPrefCheck"]) ? "prefDefault" : "prefYes" : "prefNo" ;
$mentorGenderPref = $_POST["mentorGenderPref"];
$meetingCheck = $_POST["meetingCheck"];
$matchCheck = $_POST["matchCheck"];
$stmt->execute();

//*Mentee Welcome Page*

$understandCheck = $_POST["understandCheck"];
$stmt->execute();
?>