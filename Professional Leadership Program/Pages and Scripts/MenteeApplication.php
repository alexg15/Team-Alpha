<!doctype html>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  //DATABASE CONNECTION CONFIG
  $host = "localhost";
  $username = "root";
  $password = "";
  $database = "plp database";

  $conn = mysqli_connect($host, $username, $password, $database);

  if (!$conn) {
    echo "Error: " . mysqli_error($conn);
  }

  //Basic Info
  $fName = $_POST["fName"];
  $prefName = $_POST["prefName"];
  $lName = $_POST["lName"];
  $studID = $_POST["studID"];
  $DOB = date('Y-m-d', strtotime($_POST['DOB']));
  $gender = isset($_POST["gender"]) ? $_POST["gender"] : "genderDefault";
  $genderOptions = array("Male", "Female", "Agender", "GenderQueer", "GenderNonConforming", "Nonbinary", "Transgender", "Transman", "Transwoman", "Other", "PreferNotDisclose");
  if (!in_array($gender, $genderOptions)) {
    $gender = "genderDefault";
  }
  $ethnicity = $_POST["ethnicity"];
  $intStatus = isset($_POST["intStatus"]) ? ($_POST["intStatus"] == "intYes" ? "Yes" : "No") : "intDefault";
  $firstGen = isset($_POST["firstGen"]) ? ($_POST["firstGen"] == "firstYes" ? "Yes" : "No") : "firstDefault";
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
  $signatureDate = date('Y-m-d', strtotime($_POST['signatureDate']));

  //Education and Experience
  $major = $_POST["major"];
  $concentration = $_POST["concentration"];
  $minor = $_POST["minor"];
  $college = $_POST["college"];
  $honors = isset($_POST["honors"]) ? ($_POST["honors"] == "honYes" ? "Yes" : "No") : "honDefault";
  $GPA = $_POST["GPA"];
  if (is_numeric($GPA)) {
    $GPA = floatval($GPA);
  } else {
    echo 'GPA is not numeric';
  }
  $classification = isset($_POST["classification"]) ? ($_POST["classification"] == "classSophomore" ? "Sophomore" : ($_POST["classification"] == "classJunior" ? "Junior" : ($_POST["classification"] == "classSenior" ? "Senior" : "classDefault"))) : "classDefault";
  $gradDate = date('Y-m-d', strtotime($_POST['gradDate']));
  $enrolledHours = $_POST["enrolledHours"];

  //Employment
  $employmentStatus = isset($_POST["employmentStatus"]) ? ($_POST["employmentStatus"] == "empYes" ? "Yes" : "No") : "empDefault";
  $employerName = $_POST["employerName"];
  $workHours = $_POST["workHours"];
  $clubs = $_POST["clubs"];
  $clubHours = $_POST["clubHours"];
  $discovery = isset($_POST["discovery"]) ? ($_POST["discovery"] == "current" ? "current" : ($_POST["discovery"] == "poster" ? "poster" : ($_POST["discovery"] == "professor" ? "professor" : ($_POST["discovery"] == "staff" ? "staff" : ($_POST["discovery"] == "emailRecruit" ? "emailRecruit" : ($_POST["discovery"] == "word" ? "word" : ($_POST["discovery"] == "article" ? "article" : ($_POST["discovery"] == "alumni" ? "alumni" : ($_POST["discovery"] == "professional" ? "professional" : ($_POST["discovery"] == "org" ? "org" : "notListed")))))))))) : "disDefault";
  $contact = $_POST["contact"];

  //Program Info
  $travel = isset($_POST["travel"]) ? ($_POST["travel"] == "travYes" ? "Yes" : "No") : "travDefault";
  $trans = isset($_POST["trans"]) ? ($_POST["trans"] == "transYes" ? "Yes" : "No") : "transDefault";
  $mentorPref = $_POST["mentorPref"];
  $goals = $_POST["goals"];
  $interests = $_POST["interests"];
  $industryPref = $_POST["industryPref"];
  $mentorGenPrefCheck = isset($_POST["mentorGenPrefCheck"]) ? ($_POST["mentorGenPrefCheck"] == "prefYes" ? "Yes" : "No") : "prefDefault";
  $mentorGenderPref = $_POST["mentorGenderPref"];
  $meetingCheck = $_POST["meetingCheck"];
  $matchCheck = $_POST["matchCheck"];

  $uniqueID = $conn->query("SELECT COUNT(*) FROM mentee_accounts WHERE student_id = '$studID'");
  $row = mysqli_fetch_row($uniqueID);
  $check = $row[0];

  if ($check > 0) {
    header("Location: RedundantApplicationError.php");
    exit();
  }

  $fName = mysqli_real_escape_string($conn, $fName);
  $prefName = mysqli_real_escape_string($conn, $prefName);
  $lName = mysqli_real_escape_string($conn, $lName);
  $studID = mysqli_real_escape_string($conn, $studID);
  $gender = mysqli_real_escape_string($conn, $gender);
  $ethnicity = mysqli_real_escape_string($conn, $ethnicity);
  $intStatus = mysqli_real_escape_string($conn, $intStatus);
  $firstGen = mysqli_real_escape_string($conn, $firstGen);
  $prefPhone = mysqli_real_escape_string($conn, $prefPhone);
  $street = mysqli_real_escape_string($conn, $street);
  $city = mysqli_real_escape_string($conn, $city);
  $state = mysqli_real_escape_string($conn, $state);
  $zipCode = mysqli_real_escape_string($conn, $zipCode);
  $languages = mysqli_real_escape_string($conn, $languages);
  $allergies = mysqli_real_escape_string($conn, $allergies);

  //FERPA
  $personalemail = mysqli_real_escape_string($conn, $personalemail);
  $UNTemail = mysqli_real_escape_string($conn, $UNTemail);
  $disclosureCheck = mysqli_real_escape_string($conn, $disclosureCheck);
  $releaseCheck = mysqli_real_escape_string($conn, $releaseCheck);
  $specificCheck = mysqli_real_escape_string($conn, $specificCheck);
  $informCheck = mysqli_real_escape_string($conn, $informCheck);
  $revokeCheck = mysqli_real_escape_string($conn, $revokeCheck);
  $signature = mysqli_real_escape_string($conn, $signature);
  $signatureDate = mysqli_real_escape_string($conn, $signatureDate);

  //Education and Experience
  $major = mysqli_real_escape_string($conn, $major);
  $concentration = mysqli_real_escape_string($conn, $concentration);
  $minor = mysqli_real_escape_string($conn, $minor);
  $college = mysqli_real_escape_string($conn, $college);
  $honors = mysqli_real_escape_string($conn, $honors);
  $GPA = mysqli_real_escape_string($conn, $GPA);
  $classification = mysqli_real_escape_string($conn, $classification);
  $gradDate = mysqli_real_escape_string($conn, $gradDate);
  $enrolledHours = mysqli_real_escape_string($conn, $enrolledHours);


  //Employment
  $employmentStatus = mysqli_real_escape_string($conn, $employmentStatus);
  $employerName = mysqli_real_escape_string($conn, $employerName);
  $workHours = mysqli_real_escape_string($conn, $workHours);
  $clubs = mysqli_real_escape_string($conn, $clubs);
  $clubHours = mysqli_real_escape_string($conn, $clubHours);
  $discovery = mysqli_real_escape_string($conn, $discovery);
  $contact = mysqli_real_escape_string($conn, $contact);

  //Travel and Accommodations
  $travel = mysqli_real_escape_string($conn, $travel);
  $trans = mysqli_real_escape_string($conn, $trans);
  $mentorPref = mysqli_real_escape_string($conn, $mentorPref);
  $goals = mysqli_real_escape_string($conn, $goals);
  $interests = mysqli_real_escape_string($conn, $interests);
  $industryPref = mysqli_real_escape_string($conn, $industryPref);
  $mentorGenPrefCheck = mysqli_real_escape_string($conn, $mentorGenPrefCheck);
  $mentorGenderPref = mysqli_real_escape_string($conn, $mentorGenderPref);
  $meetingCheck = mysqli_real_escape_string($conn, $meetingCheck);
  $matchCheck = mysqli_real_escape_string($conn, $matchCheck);

  

  $sql = "INSERT INTO `mentee_accounts`(
    `mentee_id`,
    `mentee_first_name`,
    `preferred_name`,
    `mentee_last_name`,
    `student_id`,
    `date_of_birth`,
    `gender`,
    `ethnicity`,
    `intl_student`,
    `first_gen_student`,
    `phone_number`,
    `street_address`,
    `city`,
    `state`,
    `zip_code`,
    `spoken_langs`,
    `food_allergies`,
    `personal_email`,
    `unt_email`,
    `disclosure_check`,
    `release_check`,
    `specific_check`,
    `inform_check`,
    `revoke_check`,
    `signature`,
    `signature_date`,
    `major`,
    `concentrations`,
    `minor`,
    `college`,
    `honors`,
    `gpa`,
    `class_level`,
    `graduation_date`,
    `semester_hours`,
    `employment_status`,
    `employer_name`,
    `work_hours`,
    `clubs`,
    `club_hours`,
    `plp_discovery_method`,
    `plp_contact`,
    `travel`,
    `transportation`,
    `mentor_pref`,
    `goals`,
    `interests`,
    `industry_pref`,
    `gender_pref_check`,
    `gender_pref`,
    `meeting_check`,
    `match_check`
) VALUES(
    'NULL',
    '$fName',
    '$prefName',
    '$lName',
    '$studID',
    '$DOB',
    '$gender',
    '$ethnicity',
    '$intStatus',
    '$firstGen',
    '$prefPhone',
    '$street',
    '$city',
    '$state',
    '$zipCode',
    '$languages',
    '$allergies',
    '$personalemail',
    '$UNTemail',
    '$disclosureCheck',
    '$releaseCheck',
    '$specificCheck',
    '$informCheck',
    '$revokeCheck',
    '$signature',
    '$signatureDate',
    '$major',
    '$concentration',
    '$minor',
    '$college',
    '$honors',
    '$GPA',
    '$classification',
    '$gradDate',
    '$enrolledHours',
    '$employmentStatus',
    '$employerName',
    '$workHours',
    '$clubs',
    '$clubHours',
    '$discovery',
    '$contact',
    '$travel',
    '$trans',
    '$mentorPref',
    '$goals',
    '$interests',
    '$industryPref',
    '$mentorGenPrefCheck',
    '$mentorGenderPref',
    '$meetingCheck',
    '$matchCheck'
)";
  // Execute the query
  if (mysqli_query($conn, $sql)) {
    header("Location: ConfirmationPage.php");
    exit();
  } 
  // Close the database connection
  mysqli_close($conn);

  exit();
}
?>

<html>

  <head>
    <title>UNT Professional Leadership Program</title>
    <meta name="description" content="Professional Leadership Program">
    <meta name="keywords" content="Professional Leadership Program UNT">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/Main.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" type="text/css">
  </head>

  <body>
    <h1> Basic Info </h1>
      <div class = "ferpa">
        <form method="POST">
          <p>* Indicates a required field.</p>
          <label for="fName">First Name:*</label><br>
          <input type="text" id="fName" name="fName" value="" required><br><br>
          <label for="prefName">Preferred First Name:</label><br>
          <input type="text" id="prefName" name="prefName" value=""><br><br>
          <label for="lName">Last name:*</label><br>
          <input type="text" id="lName" name="lName" value="" required><br><br>
          <label for="studID">Student ID Number:*</label><br>
          <input type="number" id="studID" name="studID" value="" required><br><br>
          <label for="DOB">Date of Birth:*</label><br>
          <input type="date" id="DOB" name="DOB" value="" required><br><br>
          <label for="gender">Gender:*</label><br>
          <select id="gender" name="gender" required>
            <option value="" default></option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Agender">Agender</option>
            <option value="GenderQueer">GenderQueer</option>
            <option value="GenderNonConforming">Gender Non-Conforming</option>
            <option value="Nonbinary">Non-Binary</option>
            <option value="Transgender">Transgender</option>
            <option value="Transman">Transman</option>
            <option value="Transwoman">Transwoman</option>
            <option value="Other">Other</option>
            <option value="PreferNotDisclose">Prefer not to disclose</option>
          </select><br><br>
          <label for="ethnicity">Ethnicity:*</label><br>
          <input type="text" id="ethnicity" name="ethnicity" value="" required><br><br>
          <p>--Occasionally, we provide special programming and opportunities for various student populations.--</p>
          <label for="intStatus">Are you classified as an international student?* </label><br>
          <select id="intStatus" name="intStatus" required>
            <option value="intDefault"></option>
            <option value="intYes">Yes</option>
            <option value="intNo">No</option>
          </select><br><br>
          <label for="firstGen"> Are you a first generation college student?* </label><br>
          <select id="firstGen" name="firstGen" required>
            <option value="firstDefault"></option>
            <option value="firstYes">Yes</option>
            <option value="firstNo">No</option>
          </select> <br><br><br>
          <label for="prefPhone">Preferred Phone Number:*</label><br>
          <input type="tel" id="prefPhone" name="prefPhone" value="" required><br><br>
          <label for="street">Permanent Street Address:*</label><br>
          <input type="text" id="street" name="street" value="" required><br><br>
          <label for="city">City:*</label><br>
          <input type="text" id="city" name="city" value="" required><br><br>
          <label for="state">State:*</label><br>
          <input type="text" id="state" name="state" value="" required><br><br>
          <label for="zipCode">Zip Code:*</label><br>
          <input type="text" id="zipCode" name="zipCode" value="" required><br><br>
          <label for="diffadd">Does your mailing address differ from your permanent address?*</label><br>
          <select id="diffadd" name="diffadd" required>
            <option value="">--Select--</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
          </select><br><br>
          <label for="diffmail">Mailing Street Address </label><br>
          <input type="text" id="diffmail" name="diffmail" value=""><br><br> 
          <label for="diffcity">Mailing City </label><br>
          <input type="text" id="diffcity" name="diffcity" value=""><br><br> 
          <label for="diffstate">Mailing State</label><br>
          <input type="text" id="diffstate" name="diffstate" value=""><br><br>
          <label for="diffzip">Mailing Zip Code</label><br>
          <input type="text" id="diffzip "name="diffzip" value=""><br><br><br>
          <label for="languages">What languages do you speak?*</label><br>
          <input type="text" id="languages" name="languages" value="" required><br><br>
          <label for="allergies">Please list any food allergies or dietary restrictions:</label><br>
          <input type="text" id="allergies" name="allergies" value=""><br><br>

          <h1> FERPA </h1>
          <label for="personalemail">Email Address:*</label><br>
          <input type="email" id="personalemail" name="personalemail" value="" required><br><br>
          <label for="UNTemail">UNT Student Email Address:*</label><br>
          <input type="email" id="UNTemail" name="UNTemail" value="" required><br><br>
          <input type="checkbox" id="disclosureCheck" name="disclosureCheck" value="1" required label for="disclosureCheck">I hereby voluntarily authorize the University of North Texas department(s) identified
            below to disclose personally identifiable information from my educational records: UNT Professional Leadership
            Program</label><br><br>
          <input type="checkbox" id="releaseCheck" name="releaseCheck" value="1" required label for="releaseCheck">I understand that the following information is considered directory information under
            FERPA and may be released:</label><br>
          <ul>
            <li><a>Name, address, major field of study, participation in officially recognized activities and sports, weight
            and height for members of athletic teams, dates of attendance, enrollment status, classification, degrees, awards
            and honors received, expected graduation date, dissertation and thesis titles, most recent school attended, and
            photograph</a></li>
          </ul>
          <input type="checkbox" id="specificCheck" name="specificCheck" value="1" required label for="specificCheck">Specifically, I authorize release of the following non-directory information:
            University-assigned email addresses, Date of birth, GPA, resume </label><br><br>
          <input type="checkbox" id="informCheck" name="informCheck" value="1" required label for="informCheck">This information may be released to the general public, media, PLP mentors, and PLP board
            members for the purpose of informing:</label><br>
          <ul>
            <li><a> Prospective Employers/Partner Companies for recruitment purposes, event coordination purposes </a> </li>
            <li><a> PLP-assigned mentor of PLP student mentee's information </a> </li>
            <li><a>Public/Media notification of Scholarship, Honor, or Award </a> </li>
            <li><a> Notifying the general public of PLP membership and academic or university-related accomplishments </a>
            </li>
            <li><a> Informing PLP mentors and PLP board members of student participation and class makeup </a> </li>
            <li><a> PLP Student Directors for the purpose of maintaining attendance records and performing peer mentoring </a>
            </li>
            <li><a> General public through social media to showcase PLP events, experiences, and student accomplishments </a>
            </li>
          </ul>
          <input type="checkbox" id="revokeCheck" name="revokeCheck" value="1" required label for="revokeCheck">This authorization will remain in effect from the date it is executed until revoked by me,
            in writing, and delivered to the department(s) identified above. </label><br><br>
          <label for="signature">Electronic Signature (Full Name):*</label><br>
          <input type="text" id="signature" name="signature" value="" required><br><br>
          <label for="signatureDate">Electronic Signature Date:*</label><br>
          <input type="date" id="signatureDate" name="signatureDate" value="" required><br><br>

          <h1> Education and Experience </h1>
          <label for="major">Major:*</label><br>
          <input type="text" id="major" name="major" value="" required><br><br>
          <label for="concentration">Please list your concentration(s):</label><br>
          <input type="text" id="concentration" name="concentration" value=""><br><br>
          <label for="minor">Minor:</label><br>
          <input type="text" id="minor" name="minor" value=""><br><br>
          <label for="college">In what college is your major:*</label><br>
          <input type="text" id="college" name="college" value=""  required><br><br>
          <label for="honors">Are you an active member of the UNT Honors College?*</label><br>
          <select id="honors" name="honors" required>
            <option value="honDefault"></option>
            <option value="honYes">Yes</option>
            <option value="honNo">No</option>
          </select><br><br>
          <label for="GPA">Cumulative GPA:* </label><br>
          <input type="number" id="GPA" name="GPA" value="" min="3.25" step="0.001" required><br><br>
          <label for="classification">What will your classification be in TBA?*</label><br>
          <select id="classification" name="classification" required>
            <option value="classDefault"></option>
            <option value="classSophomore">Sophomore</option>
            <option value="classJunior">Junior</option>
            <option value="classSenior">Senior</option>
          </select><br><br>
          <label for="gradDate">Anticipated Graduation Date:*</label><br>
          <input type="date" id="gradDate" name="gradDate" value="" required><br><br>
          <label for="enrolledHours">How many hours will you be enrolled in for TBA?* </label><br>
          <input type="text" id="enrolledHours" name="enrolledHours" value="" required><br><br>

          <h1> Employment </h1>
          <label for="employmentStatus">Do you anticipate being employed during the TBA semester?*</label><br>
          <select id="employmentStatus" name="employmentStatus" required>
            <option value="empDefault"></option>
            <option value="empYes">Yes</option>
            <option value="empNo">No</option>
          </select><br><br>
          <label for="employerName"> Company/Employer Name:</label><br>
          <input type="text" id="employerName" name="employerName" value=""><br><br>
          <label for="workHours"> How many hours do you anticipate working per week?</label><br>
          <input type="text" id="workHours" name="workHours" value=""><br><br>
          <label for="clubs">Which clubs or organizations will you be involved in during the TBA semester? </label><br>
          <input type="text" id="clubs" name="clubs" value=""><br><br>
          <label for="clubHours">Approximately how many total hours do you anticipate your clubs or organizations will require
            each week? </label><br>
          <input type="text" id="clubHours" name="clubHours" value=""><br><br>
          <label for="discovery"> How did you hear about PLP? </label><br>
          <select id="discovery" name="discovery">
            <option value="disDefault"></option>
            <option value="current">Current PLP member</option>
            <option value="poster">Signage (banners, flyers, handouts, etc) </option>
            <option value="professor">UNT Professor</option>
            <option value="staff">UNT Staff member</option>
            <option value="emailRecruit">E-mail</option>
            <option value="word">Word of Mouth</option>
            <option value="article">Newspaper or Radio</option>
            <option value="alumni">UNT or PLP Alumni</option>
            <option value="professional">Business Executive or Professional</option>
            <option value="org">Class organization Presentation</option>
            <option value="notListed">Other</option>
          </select> <br><br>
          <label for="contact">Specific name of contact or source:</label><br>
          <input type="text" id="contact" name="contact" value=""><br><br>

          <h1> Program Info </h1>
          <h2> Transportation </h2>
          <label for="travel"> Some mentors will require that their mentee have transportation to meetings. Are you able to
            travel outside of Denton to meet your mentor?* </label><br>
          <select id="travel" name="travel" required>
            <option value="travDefault"></option>
            <option value="travYes">Yes</option>
            <option value="travNo">No</option>
          </select><br><br>
          <label for="trans">Do you have reliable transportation?*</label><br>
          <select id="trans" name="trans" required>
            <option value="transDefault"></option>
            <option value="transYes">Yes</option>
            <option value="transNo">No</option>
          </select><br>


          <h2> Mentor </h2>
          <label for="mentorPref"> List the characteristics you are seeking in a mentor: </label><br>
          <input type="text" id="mentorPref" name="mentorPref" value=""><br><br>
          <label for="goals">What are your goals/expectations for the mentoring relationship?</label><br>
          <input type="text" id="goals" name="goals" value=""><br><br>
          <label for="interests">What are your hobbies, interests, and specialties?</label><br>
          <input type="text" id="interests" name="interests" value=""><br><br>
          <label for="industryPref">From which industries would you prefer to have a mentor? *Not all match preferences will
            be honored, but we do our best to consider your requests.*</label><br>
          <input type="text" id="industryPref" name="industryPref" value=""><br><br>
          <label for="mentorGenPrefCheck">Do you have a mentor gender preference?*</label><br>
          <select id="mentorGenPrefCheck" name="mentorGenPrefCheck" required>
            <option value="prefDefault"></option>
            <option value="prefYes">Yes</option>
            <option value="prefNo">No</option>
          </select><br><br>
          <label for="mentorGenderPref">Gender preferred?</label><br>
          <select id="mentorGenderPref" name="mentorGenderPref"><br>
            <option value="No" selected></option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Agender">Agender</option>
            <option value="GenderQueer">GenderQueer</option>
            <option value="GenderNonConforming">Gender Non-Conforming</option>
            <option value="Nonbinary">Non-Binary</option>
            <option value="Transgender">Transgender</option>
            <option value="Transman">Transman</option>
            <option value="Transwoman">Transwoman</option>
            <option value="Other">Other</option>
            <option value="PreferNotDisclose">Prefer not to disclose</option>
          </select><br>
          <h2> Member Requirements </h2>
          <p> If selected as a member of the UNT Professional Leadership Program, I can commit to the following for the full
            TBA semester: </p>
          <ul>
            <li> Mandatory weekly attendence every TBA</li>
            <li> Enrolled in BUSI 4980 course. </li>
            <li> Completion of required community engagement hours each semester </li>
            <li> Attendance at PLP-sponsored networking events and student programs</li>
            <li> Professionalism at all times including via social media</li>
            <li> Compliance with UNT code of student conduct</li>
          </ul>
          <input type="checkbox" id="meetingCheck" name="meetingCheck" value="1" required label for="meetingCheck">I agree to meet with my mentor at least once per month to cultivate a professional
            learning relationship, if selected as a PLP member. </label><br><br>
          <input type="checkbox" id="matchCheck" name="matchCheck" value="1" required label for="matchCheck">I understand that my mentor may not be the perfect match and believe that I can still learn
            from their experience. </label><br><br>
          <input type="submit" value="Submit">
        </form>
      </div>
    <div class="copyright">
      <p> <span> © </span>University of North Texas. All Rights Reserved.</p>
    </div>
  </body>

</html>