<!doctype html>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  //DATABASE CONNECTION CONFIG
  $host = "localhost";
  $username = "root";
  $password = "";
  $database = "plp_prod";

  $conn = mysqli_connect($host, $username, $password, $database);

  if (!$conn) {
    echo "Error: " . mysqli_error($conn);
  }
  //echo "Connected successfully to database";    

  $fname = $_POST['fname'];
  $pname = $_POST['pname'];
  $lname = $_POST['lname'];
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

  $mentor_goals = $_POST["mentor_goals"];
  $mentee_gender_pref = $_POST["mentee_gender_pref"];
  $gender_preferred = $_POST["gender_preferred"];
  $pref_stud_majors = $_POST["pref_stud_majors"];
  $transport_preference = $_POST["transport"];
  // $topics_preference = $_POST["topics_preference"];

  // Mentor Requirements
  $years_of_exp = $_POST["years_of_exp"];
  $mentor_referral = $_POST["mentor_referral"];
  $referral_email = $_POST["referral_email"];
  $referral_affiliation = $_POST["referral_affiliation"];
  $ackn_match = isset($_POST["ackn_match"]) ? "Yes" : "No";
  $ackn_meet = isset($_POST["ackn_meet"]) ? "Yes" : "No";
  $ackn_share = isset($_POST["ackn_share"]) ? "Yes" : "No";

  // Education and Experience
  $professional_summary = $_POST["professional_summary"];
  $industry_experience = $_POST["industry_experience"];

  // Current Job Info
  $company_name = $_POST["company_name"];
  $job_title = $_POST["job_title"];
  $job_description = $_POST["job_description"];
  $career_field = $_POST["career_field"];
  $start_of_employment = $_POST["start_of_employment"];

  // Previous Work Experience
  $former_company_name = $_POST["former_company_name"];
  $former_job_title = $_POST["former_job_title"];
  $former_job_description = $_POST["former_job_description"];
  $former_career_field = $_POST["former_career_field"];
  $former_start_of_employment = $_POST["former_start_of_employment"];
  $former_end_of_employment = $_POST["former_end_of_employment"];

  $uniName = $_POST["uniName"];
  $degree = $_POST["degree"];
  $major = $_POST["major"];
  $minor = $_POST["minor"];
  $gradYear = $_POST["gradYear"];
  $certs = $_POST["certs"];
  $acadAffil = $_POST["acadAffil"];

  // Sanitize and validate user input
  $fname = mysqli_real_escape_string($conn, $fname);
  $prefname = mysqli_real_escape_string($conn, $prefname);
  $lname = mysqli_real_escape_string($conn, $lname);
  $ethnicity = mysqli_real_escape_string($conn, $ethnicity);
  $untalumni = mysqli_real_escape_string($conn, $untalumni);
  $plpalumni = mysqli_real_escape_string($conn, $plpalumni);
  $served = mysqli_real_escape_string($conn, $served);
  $yearsserved = mysqli_real_escape_string($conn, $yearsserved);
  $phnumber = mysqli_real_escape_string($conn, $phnumber);
  $streetadd = mysqli_real_escape_string($conn, $streetadd);
  $city = mysqli_real_escape_string($conn, $city);
  $state = mysqli_real_escape_string($conn, $state);
  $zip = mysqli_real_escape_string($conn, $zip);
  $differadd = mysqli_real_escape_string($conn, $differadd);
  $diffmail = mysqli_real_escape_string($conn, $diffmail);
  $diffcity = mysqli_real_escape_string($conn, $diffcity);
  $diffstate = mysqli_real_escape_string($conn, $diffstate);
  $diffzip = mysqli_real_escape_string($conn, $diffzip);
  $citizen = mysqli_real_escape_string($conn, $citizen);
  $lang = mysqli_real_escape_string($conn, $lang);
  $mentor_goals = mysqli_real_escape_string($conn, $mentor_goals);
  $mentee_gender_pref = mysqli_real_escape_string($conn, $mentee_gender_pref);
  $gender_preferred = mysqli_real_escape_string($conn, $gender_preferred);
  $pref_stud_majors = mysqli_real_escape_string($conn, $pref_stud_majors);
  $transport_preference = mysqli_real_escape_string($conn, $transport_preference);
  $topics_preference = mysqli_real_escape_string($conn, $topics_preference);
  $years_of_exp = mysqli_real_escape_string($conn, $years_of_exp);
  $mentor_referral = mysqli_real_escape_string($conn, $mentor_referral);
  $referral_email = mysqli_real_escape_string($conn, $referral_email);
  $referral_affiliation = mysqli_real_escape_string($conn, $referral_affiliation);

  // Education and Experience
  $professional_summary = mysqli_real_escape_string($conn, $professional_summary);
  $industry_experience = mysqli_real_escape_string($conn, $industry_experience);

  // Current Job Info
  $company_name = mysqli_real_escape_string($conn, $company_name);
  $job_title = mysqli_real_escape_string($conn, $job_title);
  $job_description = mysqli_real_escape_string($conn, $job_description);
  $career_field = mysqli_real_escape_string($conn, $career_field);
  $start_of_employment = mysqli_real_escape_string($conn, $start_of_employment);

  // Previous Work Experience
  $former_company_name = mysqli_real_escape_string($conn, $former_company_name);
  $former_job_title = mysqli_real_escape_string($conn, $former_job_title);
  $former_job_description = mysqli_real_escape_string($conn, $former_job_description);
  $former_career_field = mysqli_real_escape_string($conn, $former_career_field);
  $former_start_of_employment = mysqli_real_escape_string($conn, $former_start_of_employment);
  $former_end_of_employment = mysqli_real_escape_string($conn, $former_end_of_employment);

  $uniName = mysqli_real_escape_string($conn, $uniName);
  $degree = mysqli_real_escape_string($conn, $degree);
  $major = mysqli_real_escape_string($conn, $major);
  $minor = mysqli_real_escape_string($conn, $minor);
  $gradYear = mysqli_real_escape_string($conn, $gradYear);
  $certs = mysqli_real_escape_string($conn, $certs);
  $acadAffil = mysqli_real_escape_string($conn, $acadAffil);

  $sql = "INSERT INTO mentors (first_name, preferred_name, last_name, gender, ethnicity, unt_alumni_check, plp_alumni_check, mentor_exp_check, mentor_exp_yrs, phone_number, street_address, city, state, zip_code, mailing_check, mailing_address, mailing_city, mailing_state, mailing_zip_code, citizenship_country, spoken_langs, motivation, goals, gender_pref_check, gender_pref, mentor_majors, transportation, professional_exp, plp_ref, plp_ref_email, plp_ref_affil, matching_check, meeting_check, pii_share_check, prof_summary, industries, company, job, job_desc, career_field, hire_date, former_company, former_job, former_job_desc, former_hire_date, former_leave_date, college, degree, major, minor, graduation_year, certifications, academic_affils) 
    VALUES ('$fname', '$prefname', '$lname', '$ethnicity', '$untalumni', '$plpalumni', '$served', '$yearsserved', '$phnumber', '$streetadd', '$city', '$state', '$zip', '$differadd', '$diffmail', $diffcity, '$diffstate', '$diffzip', '$citizen', '$lang', '$mentor_goals', '$mentee_gender_pref', '$gender_preferred', '$pref_stud_majors', '$transport_preference', '$topics_preference', '$years_of_exp', '$mentor_referral', '$referral_email', '$referral_affiliation', '$ackn_match', '$ackn_meet', '$ackn_share', '$professional_summary', '$industry_experience', '$company_name', '$job_title', '$job_description', '$career_field', '$start_of_employment', '$former_company_name', '$former_job_title', '$former_job_description', '$former_career_field', '$former_start_of_employment', '$former_end_of_employment','$uniName','$degree','$major','$minor','$gradYear','$certs','$acadAffil')";

  echo $sql;
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

<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>UNT Professional Leadership program </title>
  <meta name="description" content="Professional Leadership program">
  <meta name="keywords" content="Professional Leadership Program UNT">
  <link rel="stylesheet" type="text/css" href="./css/main.css">
  <link href="./css/css" rel="stylesheet" type="text/css">
  <style></style>
</head>

<body>

  <h1> Basic Info </h1>
  <form method="POST">
    <label for="fname">First Name:</label><br>
    <input type="text" id="fname" name="fname" value="" required><br>
    <label for="pname">Preferred First Name:</label><br>
    <input type="text" id="pname" name="pname" value=""><br>
    <label for="lname">Last Name:</label><br>
    <input type="text" id="lname" name="lname" value="" required><br><br>
    <label for="gender">Gender:</label><br>
    <select id="gender" name="gender" required>
      <option value="default"></option>
      <option value="male">Male</option>
      <option value="female">Female</option>
      <option value="agender">Agender</option>
      <option value="genderQueer">GenderQueer</option>
      <option value="genderNonConforming">Gender Non-Conforming</option>
      <option value="nonbinary">Non-Binary</option>
      <option value="transgender">Transgender</option>
      <option value="transman">Transman</option>
      <option value="transwoman">Transwoman</option>
      <option value="other">Other</option>
      <option value="preferNotDisclose">Prefer not to disclose</option>
    </select><br><br>
    <label for="ethnicity">Ethnicity:</label><br>
    <input type="text" id="ethnicity" name="ethnicity" value=""><br><br>
    <label for="untalumni">Are you an alumni of UNT?</label><br>
    <select id="untalumni" name="untalumni" required>
      <option value="">--Select--</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select><br><br>
    <label for="plpalumni">Are you an alumni of PLP?: </label><br>
    <select id="plpalumni" name="plpalumni" required>
      <option value="">--Select--</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select><br><br>
    <label for="served">Have you previously served as a PLP mentor?</label><br>
    <select id="served" name="served">
      <option value="">--Select--</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select><br><br>
    <label for="yearsserved">For how many consecutive years have you served as PLP mentor?</label><br>
    <input type="text" id="yearsserved" name="yearsserved" value=""><br><br>
    <label for="phnumber">Preferred Phone Number </label><br>
    <input type="text" id="phnumber" name="phnumber" value="" required><br><br>
    <label for="streetadd">Permanent Street Address:</label><br>
    <input type="text" id="streetadd" name="streetadd" value="" required><br><br>
    <label for="city">City:</label><br>
    <input type="text" id="city" name="city" value="" required><br><br>
    <label for="state">State</label><br>
    <input type="text" id="state" name="state" value="" required><br><br>
    <label for="zip">Zip Code</label><br>
    <input type="text" id="zip" name="zip" value="" required><br><br>
    <!--y/n question -->
    <label for="diffadd">Does your mailing address differ from your permanent address?</label><br>
    <select id="diffadd" name="differadd" required>
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
    <input type="text" id="diffzip " name="diffzip" value=""><br><br>
    <label for="citizen">Country of Citizenship:</label><br>
    <input type="text" id="citizen" name="citizen" value=""><br><br>
    <label for="lang">What Languages do you Speak?</label><br>
    <input type="text" id="lang" name="lang" value="" required><br><br>


    <h1> Mentoring Details</h1>
    <label for="mentorDescr"> Why do you want to be a PLP mentor? </label><br>
    <input type="text" id="mentorDescr" name="mentorDescr" value=""><br>
    <label for="mentor_goals"> What are your goals / expectations for the mentoring relationship? </label><br>
    <input type="text" id="mentor_goals" name="mentor_goals" value=""><br>
    <!--dropdown textbox for this data-->
    <label for="mentee_gender_pref"> Do you have a mentee gender preference?</label><br>
    <select id="mentee_gender_pref" name="mentee_gender_pref">
      <option value="">--Select--</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select><br><br>
    <!--dropdown textbox for this data-->
    <label for="gender_preferred"> Gender Prefered</label><br>
    <select id="gender_preferred" name="gender_preferred" required>
      <option value="default"></option>
      <option value="male">Male</option>
      <option value="female">Female</option>
      <option value="agender">Agender</option>
      <option value="genderQueer">GenderQueer</option>
      <option value="genderNonConforming">Gender Non-Conforming</option>
      <option value="nonbinary">Non-Binary</option>
      <option value="transgender">Transgender</option>
      <option value="transman">Transman</option>
      <option value="transwoman">Transwoman</option>
      <option value="other">Other</option>
      <option value="preferNotDisclose" selected>Prefer not to disclose</option>
    </select><br><br>
    <!--dropdown textbox for this data (take from mentee dropdown options))-->
    <label for="pref_stud_majors"> Taking into account your education and professional experience, which student majors
      would you prefer to mentor?</label><br>
    <input type="text" id="pref_stud_majors" name="pref_stud_majors" value="" required><br><br>
    <!--y/n question -->
    <label for="transport">Some students do not have access to transportation. Based on your willingness and ability to
      travel, should we pair you with a mentee that has a car?</label><br>
    <select id="transport" name="transport" required>
      <option value="">--Select--</option>
      <option value="true">Yes</option>
      <option value="false">No</option>
    </select><br><br>



    <h1> Mentor Requirements </h1>
    <label for="years_of_exp">How many years of professional experience do you have?</label><br>
    <input type="text" id="years_of_exp" name="years_of_exp" value=""><br>
    <label for="mentor_referral">Who referred you to mentor with PLP</label><br>
    <input type="text" id="mentor_referral" name="mentor_referral" value=""><br>
    <label for="referral_email">Provide their email address: </label><br>
    <input type="text" id="referral_email" name="referral_email" value=""><br><br>
    <label for="referral_affiliation">What is their affiliation with PLP?</label><br>
    <input type="text" id="referral_affiliation" name="referral_affiliation" value=""><br><br>

    <h1> Program expectations </h1>
    <label for="acknMatch">Matching is completed during the summer based on program needs.I understand that I may not be
      paired with a student this year. </label><br>
    <input type="checkbox" id="" name="acknMatch" value="" required><br><br>
    <label for="acknMeet"> I will be able to meet with my mentee for the full academic year. </label><br>
    <input type="checkbox" id="" name="acknMeet" value="" required><br><br>
    <label for="acknShare">By checking this box, I understand that as a mentor, my email address, employer name, and job
      title will be shared with the PLP community (students and mentors). </label><br>
    <input type="checkbox" id="" name="acknShare" value="" required><br><br>




    <h1> Education and Experience </h1>
    <label for="professional_summary">Provide brief professional summary.</label><br>
    <input type="text" id="professional_summary" name="professional_summary" value=""><br>
    <label for="industry_experience">In order to complete the matching process, we consider your industry experience. In
      which
      industry/industries do you have experience? </label><br>
    <input type="text" id="industry_experience" name="industry_experience" value=""><br>

    <h1> Current Job Info</h1>
    <label for="company_name">Company Name</label><br>
    <input type="text" id="company_name" name="company_name" value="" required><br><br>
    <label for="job_title">Job Title</label><br>
    <input type="text" id="job_title" name="job_title" value="" required><br><br>
    <label for="job_description">Briefly describe this position</label><br>
    <input type="text" id="job_description" name="job_description" value=""><br><br>
    <!--dropdown textbox for this data-->
    <label for="career_field">Career Field </label><br>
    <input list="career-options" name="career_field" id="career_field" required>
    <datalist id="career-options">
      <option value="Accounting and auditing services">
      <option value="Advertising and marketing">
      <option value="Aerospace and defense">
      <option value="Agriculture and farming">
      <option value="Architecture and engineering">
      <option value="Art and design">
      <option value="Automotive and transportation">
      <option value="Biotechnology and pharmaceuticals">
      <option value="Business consulting and management">
      <option value="Chemicals and plastics">
      <option value="Civil and environmental engineering">
      <option value="Communications and media">
      <option value="Computer hardware and software">
      <option value="Construction and building materials">
      <option value="Consumer goods and services">
      <option value="Education and training">
      <option value="Energy and utilities">
      <option value="Entertainment and leisure">
      <option value="Environmental services">
      <option value="Finance and banking">
      <option value="Food and beverage">
      <option value="Government and public administration">
      <option value="Healthcare and medical services">
      <option value="Hospitality and tourism">
      <option value="Human resources and staffing">
      <option value="Information technology and services">
      <option value="Insurance">
      <option value="Internet and e-commerce">
      <option value="Investment banking and securities">
      <option value="Legal services">
      <option value="Logistics and supply chain management">
      <option value="Manufacturing and production">
      <option value="Military and defense">
      <option value="Mining and metals">
      <option value="Nonprofit and social services">
      <option value="Oil and gas">
      <option value="Pharmaceuticals and medical devices">
      <option value="Professional services">
      <option value="Real estate and property management">
      <option value="Retail and consumer goods">
      <option value="Scientific research and development">
      <option value="Sports and fitness">
      <option value="Telecommunications">
      <option value="Transportation and logistics">
      <option value="Travel and hospitality">
      <option value="Utilities and renewable energy">
      <option value="Venture capital and private equity">
      <option value="Waste management and recycling">
      <option value="Web development and design">
      <option value="Writing and publishing">
    </datalist>


    <h1> Previous Work Experience </h1>
    <label for="former_company_name">Former Company Name</label><br>
    <input type="text" id="former_company_name" name="former_company_name" value=""><br><br>
    <label for="former_job_title">Former job title </label><br>
    <input type="text" id="former_job_title" name="former_job_title" value=""><br><br>
    <label for="former_job_description"> briefly describe this position</label><br>
    <input type="text" id="former_job_description" name="former_job_description" value=""><br><br>
    <label for="former_start_of_employment"> Start of employment</label><br>
    <input type="text" id="former_start_of_employment" name="former_start_of_employment" value=""><br><br>
    <label for="former_end_of_employment"> End of employment</label><br>
    <input type="text" id="former_end_of_employment" name="former_end_of_employment" value=""><br><br>

    <h1> Education </h1>
    <label for="uniName"> Institution Name</label><br>
    <input type="text" id="uniName" name="uniName" value="" required><br><br>
    <label for="degree"> Degree</label><br>
    <input type="text" id="degree" name="degree" value="" required><br><br>
    <label for="major">Major:</label><br>
    <input list="major-options" id="major" name="major" required><br><br>
    <datalist id="major-options">
      <option value="Accounting">
      <option value="Aviation Logistics">
      <option value="Business">
      <option value="Business Analytics">
      <option value="Business Computer Information Systems">
      <option value="Business Integrated Studies">
      <option value="Consumer Experience Management">
      <option value="Digital Retailing">
      <option value="Economics">
      <option value="Entrepreneurship">
      <option value="Event Design and Experience Management">
      <option value="Finance">
      <option value="General Business">
      <option value="Home Furnishings Merchandising">
      <option value="Hospitality Management">
      <option value="Information Technology and Decision Sciences">
      <option value="International Sustainable Tourism">
      <option value="Logistics and Supply Chain Management">
      <option value="Management">
      <option value="Marketing">
      <option value="Marketing and Logistics">
      <option value="Marketing, Logistics and Supply Chain Management">
      <option value="Merchandising">
      <option value="Music Business">
      <option value="Operations and Supply Management">
      <option value="Organizational Behavior and Human Resource Management">
      <option value="Real Estate">
      <option value="Retailing">
      <option value="Risk, Insurance, and Financial Services">
      <option value="Sport Entertainment Management">
    </datalist>

    <label for="minor"> Minor</label><br>
    <input type="text" id="minor" name="minor" value=""><br><br>
    <label for="gradYear"> Graduation Year</label><br>
    <input type="text" id="gradYear" name="gradYear" value="" required><br><br>
    <label for="certs"> Professional Certifactions </label><br>
    <input type="text" id="certs" name="certs" value=""><br><br>
    <label for="acadAffil"> Professional academic Affiliations</label><br>
    <input type="text" id="acadAffil" name="acadAffil" value=""><br><br>

    <input type="submit" value="Submit">
  </form>
</body>

</html>