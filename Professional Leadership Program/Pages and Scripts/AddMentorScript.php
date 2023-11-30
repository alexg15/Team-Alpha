<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "plp database";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
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
    $diffadd = $_POST['diffadd'];
    $diffmail = $_POST['diffmail'];
    $diffcity = $_POST['diffcity'];
    $diffstate = $_POST['diffstate'];
    $diffzip = $_POST['diffzip'];
    $citizen = $_POST['citizen'];
    $lang = $_POST['lang'];
    $mentorDescr = $_POST['mentorDescr'];
    $mentorGoals = $_POST['mentorGoals'];
    $genderp = $_POST['genderp'];
    $genderpref = $_POST['genderpref'];
    $prefstudmaj = $_POST['prefstudmaj'];
    $transport = $_POST['transport'];
    $yearsExp = $_POST['yearsExp'];
    $reference = $_POST['reference'];
    $refEmail = $_POST['refEmail'];
    $refAffil = $_POST['refAffil'];
    $acknMatch = $_POST['acknMatch'];
    $acknMeet = $_POST['acknMeet'];
    $acknShare = $_POST['acknShare'];
    $summary = $_POST['summary'];
    $indExp = $_POST['indExp'];
    $uniName = $_POST['uniName'];
    $degree = $_POST['degree'];
    $major = $_POST['major'];
    $minor = $_POST['minor'];
    $gradYear = $_POST['gradYear'];
    $certs = $_POST['certs'];
    $acadAffil = $_POST['acadAffil'];
    $compName = $_POST['compName'];
    $jobTitle = $_POST['jobTitle'];
    $jobDescr = $_POST['jobDescr'];
    $career = $_POST['career'];
    $hireDate = $_POST['hireDate'];
    $fCompName = $_POST['fCompName'];
    $fJobTitle = $_POST['fJobTitle'];
    $fJobDescr = $_POST['fJobDescr'];
    $startEmploy = $_POST['startEmploy'];
    $endEmploy = $_POST['endEmploy'];

    $uniqueFirst = $conn->query("SELECT COUNT(*) FROM mentor_accounts WHERE first_name = '$fname'");
    $uniqueLast = $conn->query("SELECT COUNT(*) FROM mentor_accounts WHERE last_name = '$lname'");
    $uniquePhone = $conn->query("SELECT COUNT(*) FROM mentor_accounts WHERE phone_number = '$phnumber'");
    $row1 = mysqli_fetch_row($uniqueFirst);
    $row2 = mysqli_fetch_row($uniqueLast);
    $row3 = mysqli_fetch_row($uniquePhone);
    $check1 = $row1[0];
    $check2 = $row2[0];
    $check3 = $row3[0];

    if ($check1 > 0) {
        if ($check2 > 0) {
            if ($check3 > 0) {
                header("Location: RedundantApplicationError.php");
                exit();
            }
        }
    }
    $sql = "INSERT INTO mentor_accounts(
        `mentor_id`,
        `first_name`,
        `preferred_name`,
        `last_name`,
        `gender`,
        `ethnicity`,
        `unt_alumni_check`,
        `plp_alumni_check`,
        `mentor_exp_check`,
        `mentor_exp_yrs`,
        `phone_number`,
        `street_address`,
        `city`,
        `state`,
        `zip_code`,
        `mailing_check`,
        `mailing_address`,
        `mailing_city`,
        `mailing_state`,
        `mailing_zip_code`,
        `citizenship_country`,
        `spoken_langs`,
        `motivation`,
        `goals`,
        `gender_pref_check`,
        `gender_pref`,
        `mentor_majors`,
        `transportation`,
        `prof_exp_yrs`,
        `plp_ref`,
        `plp_ref_email`,
        `plp_ref_affil`,
        `matching_check`,
        `meeting_check`,
        `pii_share_check`,
        `prof_summary`,
        `industries`,
        `company`,
        `job`,
        `job_desc`,
        `career_field`,
        `hire_date`,
        `former_company`,
        `former_job`,
        `former_job_desc`,
        `former_hire_date`,
        `former_leave_date`,
        `college`,
        `degree`,
        `major`,
        `minor`,
        `graduation_year`,
        `certifications`,
        `academic_affils`
    )
    VALUES(
        'NULL',
        '$fname',
        '$pname',
        '$lname',
        '$gender',
        '$ethnicity',
        '$untalumni',
        '$plpalumni',
        '$served',
        '$yearsserved',
        '$phnumber',
        '$streetadd',
        '$city',
        '$state',
        '$zip',
        '$diffadd',
        '$diffmail',
        '$diffcity',
        '$diffstate',
        '$diffzip',
        '$citizen',
        '$lang',
        '$mentorDescr',
        '$mentorGoals',
        '$genderp',
        '$genderpref',
        '$prefstudmaj',
        '$transport',
        '$yearsExp',
        '$reference',
        '$refEmail',
        '$refAffil',
        '$acknMatch',
        '$acknMeet',
        '$acknShare',
        '$summary',
        '$indExp',
        '$compName',
        '$jobTitle',
        '$jobDescr',
        '$career',
        '$hireDate',
        '$fCompName',
        '$fJobTitle',
        '$fJobDescr',
        '$startEmploy',
        '$endEmploy',
        '$uniName',
        '$degree',
        '$major',
        '$minor',
        '$gradYear',
        '$certs',
        '$acadAffil'
    )";
        
    if ($conn->query($sql)) {
            header("Location: ConfirmationPage.php");
            exit();
    } 
}

$conn->close();

exit();
?>