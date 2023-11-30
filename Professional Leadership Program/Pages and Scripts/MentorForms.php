<!doctype html>
<html>
	<head>
		<title>UNT Professional Leadership Program </title>
		<meta name="description" content="Professional Leadership Program">
		<meta name="keywords" content="Professional Leadership Program UNT">
		<meta charset="utf-8">
		  <link rel="stylesheet" type="text/css" href="../css/Main.css">
      <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
	</head>
	
  <body>	
    <h1>Basic Info</h1>
    <div class = "ferpa">      
        <form action="AddMentorScript.php" method="POST">
          <p>* Indicates a required field.</p>
          <label for="fname">First Name:*</label><br>
          <input type="text" id="fname" name="fname" value="" required><br><br>
          <label for="pname">Preferred First Name:</label><br>
          <input type="text" id="pname" name="pname" value=""><br><br>
          <label for="lname">Last Name:*</label><br>
          <input type="text" id="lname" name="lname" value="" required><br><br>
          <label for="gender">Gender:*</label><br>
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
          <label for="ethnicity">Ethnicity:*</label><br>
          <input type="text" id="ethnicity" name="ethnicity" value="" required><br><br>
          <label for="untalumni">Are you an alumni of UNT?*</label><br>
          <select id="untalumni" name="untalumni" required>
            <option value="">--Select--</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
          </select><br><br>
          <label for="plpalumni">Are you an alumni of PLP?:* </label><br>
          <select id="plpalumni" name="plpalumni" required>
            <option value="">--Select--</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
          </select><br><br>
          <label for="served">Have you previously served as a PLP mentor?*</label><br>
          <select id="served" name="served" required>
            <option value="">--Select--</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
          </select><br><br>
          <label for="yearsserved">For how many consecutive years have you served as PLP mentor?</label><br>
          <input type="text" id="yearsserved" name="yearsserved" value=""><br><br>
          <label for="phnumber">Preferred Phone Number:*</label><br>
          <input type="tel" id="phnumber" name="phnumber" value="" required><br><br>
          <label for="streetadd">Permanent Street Address:*</label><br>
          <input type="text" id="streetadd" name="streetadd" value="" required><br><br>
          <label for="city">City:*</label><br>
          <input type="text" id="city" name="city" value="" required><br><br>
          <label for="state">State:*</label><br>
          <input type="text" id="state" name="state" value="" required><br><br>
          <label for="zip">Zip Code:*</label><br>
          <input type="text" id="zip" name="zip" value="" required><br><br>
          <label for="diffadd">Does your mailing address differ from your permanent address?*</label><br>
          <select id="diffadd" name="diffadd" required>
            <option value="">--Select--</option>
            <option value="Yes">Yes</option>
            <option value="No">No</option>
          </select><br><br>
          <label for="diffmail">Mailing Street Address:</label><br>
          <input type="text" id="diffmail" name="diffmail" value=""><br><br> 
          <label for="diffcity">Mailing City:</label><br>
          <input type="text" id="diffcity" name="diffcity" value=""><br><br> 
          <label for="diffstate">Mailing State:</label><br>
          <input type="text" id="diffstate" name="diffstate" value=""><br><br>
          <label for="diffzip">Mailing Zip Code:</label><br>
          <input type="text" id="diffzip "name="diffzip" value=""><br><br><br>
          <label for="citizen">Country of Citizenship:*</label><br>
          <input type="text" id="citizen" name="citizen" value="" required><br><br> 
          <label for="lang">What languages do you speak?*</label><br>
          <input type="text" id="lang" name="lang" value="" required><br><br> 



      <h1> Mentoring Details</h1>
        <label for="mentorDescr"> Why do you want to be a PLP mentor?* </label><br>
        <input type="text" id="mentorDescr" name="mentorDescr" value="" required><br><br>
        <label for="mentorGoals"> What are your goals/expectations for the mentoring relationship?* </label><br>
        <input type="text" id="mentorGoals" name="mentorGoals" value="" required><br><br>
        <!--dropdown textbox for this data-->
        <label for="genderp"> Do you have a mentee gender preference?*</label><br>
        <select id="genderp" name="genderp" required>
          <option value="">--Select--</option>
          <option value="Yes">Yes</option>
          <option value="No">No</option>
        </select><br><br>
        <!--dropdown textbox for this data-->
        <label for="genderpref">Gender Preferred:</label><br>
        <select id="genderpref" name="genderpref">
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
            </select><br><br>
        <!--dropdown textbox for this data (take from mentee dropdown options))-->
        <label for="prefstudmaj"> Taking into account your education and professional experience, which student majors would you prefer to mentor?*</label><br>
        <input type="text" id="prefstudmaj" name="prefstudmaj" value="" required><br><br>
        <label for="transport">Some students do not have access to transportation. Based on your willingness and ability to travel, should we pair you with a mentee that has a car?*</label><br>
        <select id="transport" name="transport" required>
        <option value="">--Select--</option>
        <option value="true">Yes</option>
        <option value="false">No</option>
        </select><br><br> 

      <h1> Mentor Requirements </h1>
        <label for="yearsExp" >How many years of professional experience do you have?*</label><br>
        <input type="number" id="yearsExp" name="yearsExp" value="" min="5"  step="0.25" required><br><br>
        <label for="reference">Who referred you to mentor with PLP?</label><br>
        <input type="text" id="reference" name="reference" value=""><br><br>
        <label for="refEmail">Provide their email address: </label><br>
        <input type="text" id="refEmail" name="refEmail" value=""><br><br>
        <label for="refAffil">What is their affiliation with PLP?</label><br>
        <input type="text" id="refAffil" name="refAffil" value=""><br><br>
        
      <h1> Program Expectations </h1>
        <input type="checkbox" id="acknMatch" name="acknMatch" value="" label for="acknMatch" required>Matching is completed during the summer based on program needs.I understand that I may not be paired with a student this year. </label><br><br>
        <input type="checkbox" id="acknMeet" name="acknMeet" value="" label for="acknMeet" required>I will be able to meet with my mentee for the full academic year. </label><br><br>
        <input type="checkbox" id="acknShare" name="acknShare" value="" label for="acknShare" required>By checking this box, I understand that as a mentor, my email address, employer name, and job title will be shared with the PLP community (students and mentors). </label><br><br>

      <h1 > Education and Experience </h1>
        <label for="summary">Provide brief professional summary.*</label><br>
        <input type="text" id="summary" name="summary" value="" required><br><br>
        <label for="indExp">In order to complete the matching process, we consider your industry experience. In which industry/industries do you have experience?* </label><br>
        <input type="text" id="indExp" name="indExp" value="" required><br><br>
        <label for="uniName"> College Name:*</label><br>
        <input type="text" id="uniName" name="uniName" value="" required><br><br>
        <label for="degree"> Degree:*</label><br>
        <input type="text" id="degree" name="degree" value="" required><br><br>
        <label for="major">Major:*</label><br>
        <input type="major" id="major" name="major" required><br><br>
        <label for="minor"> Minor:</label><br>
        <input type="text" id="minor" name="minor" value=""><br><br>
        <label for="gradYear"> Graduation Year:*</label><br>
        <input type="text" id="gradYear" name="gradYear" value="" required><br><br>
        <label for="certs"> Professional Certifications:</label><br>
        <input type="text" id="certs" name="certs" value=""><br><br>
        <label for="acadAffil"> Professional Academic Affiliations:</label><br>
        <input type="text" id="acadAffil" name="acadAffil" value=""><br><br>
        
      <h1> Current Job Info</h1>
        <label for="compName">Company Name:*</label><br>
        <input type="text" id="compName" name="compName" value="" required><br><br>
        <label for="jobTitle">Job Title:*</label><br>
        <input type="text" id="jobTitle" name="jobTitle" value="" required><br><br>
        <label for="jobDescr">Briefly describe this position.*</label><br>
        <input type="text" id="jobDescr" name="jobDescr" value="" required><br><br>
        <!--dropdown textbox for this data-->
        <label for="career">Career Field:*</label><br>
        <select id="career" name="career" required>
          <option value=""></option>
          <option value="Accounting and auditing services">Accounting and auditing services</option>
          <option value="Advertising and marketing">Advertising and marketing</option>
          <option value="Aerospace and defense">Aerospace and defense</option>
          <option value="Agriculture and farming">Agriculture and farming</option>
          <option value="Architecture and engineering">Architecture and engineering</option>
          <option value="Art and design">Art and design</option>
          <option value="Automotive and transportation">Automotive and transportation</option>
          <option value="Biotechnology and pharmaceuticals">Biotechnology and pharmaceuticals</option>
          <option value="Business consulting and management">Business consulting and management</option>
          <option value="Chemicals and plastics">Chemicals and plastics</option>
          <option value="Civil and environmental engineering">Civil and environmental engineering</option>
          <option value="Communications and media">Communications and media</option>
          <option value="Computer hardware and software">Computer hardware and software</option>
          <option value="Construction and building materials">Construction and building materials</option>
          <option value="Consumer goods and services">Consumer goods and services</option>
          <option value="Education and training">Education and training</option>
          <option value="Energy and utilities">Energy and utilities</option>
          <option value="Entertainment and leisure">Entertainment and leisure</option>
          <option value="Environmental services">Environmental services</option>
          <option value="Finance and banking">Finance and banking</option>
          <option value="Food and beverage">Food and beverage</option>
          <option value="Government and public administration">Government and public administration</option>
          <option value="Healthcare and medical services">Healthcare and medical services</option>
          <option value="Hospitality and tourism">Hospitality and tourism</option>
          <option value="Human resources and staffing">Human resources and staffing</option>
          <option value="Information technology and services">Information technology and services</option>
          <option value="Insurance">Insurance</option>
          <option value="Internet and e-commerce">Internet and e-commerce</option>
          <option value="Investment banking and securities">Investment banking and securities</option>
          <option value="Legal services">Legal services</option>
          <option value="Logistics and supply chain management">Logistics and supply chain management</option>
          <option value="Manufacturing and production">Manufacturing and production</option>
          <option value="Military and defense">Military and defense</option>
          <option value="Mining and metals">Mining and metals</option>
          <option value="Nonprofit and social services">Nonprofit and social services</option>
          <option value="Oil and gas">Oil and gas</option>
          <option value="Pharmaceuticals and medical devices">Pharmaceuticals and medical devices</option>
          <option value="Professional services">Professional services</option>
          <option value="Real estate and property management">Real estate and property management</option>
          <option value="Retail and consumer goods">Retail and consumer goods</option>
          <option value="Scientific research and development">Scientific research and development</option>
          <option value="Sports and fitness">Sports and fitness</option>
          <option value="Telecommunications">Telecommunications</option>
          <option value="Transportation and logistics">Transportation and logistics</option>
          <option value="Travel and hospitality">Travel and hospitality</option>
          <option value="Utilities and renewable energy">Utilities and renewable energy</option>
          <option value="Venture capital and private equity">Venture capital and private equity</option>
          <option value="Waste management and recycling">Waste management and recycling</option>
          <option value="Web development and design">Web development and design</option>
          <option value="Writing and publishing">Writing and publishing</option>
        </select><br><br>
        <label for="hireDate">Date of hire:* </label><br>
        <input type="date" id="hireDate" name="hireDate" value="" required><br><br>


      <h1> Previous Work Experience</h1> 
        <label for="fCompName">Former Company Name:</label><br>
        <input type="text" id="fCompName" name="fCompName" value=""><br><br>
        <label for="fJobTitle">Former Job Title:</label><br>
        <input type="text" id="fJobTitle" name="fJobTitle" value=""><br><br>
        <label for="fJobDescr"> Briefly describe this position.</label><br>
        <input type="text" id="fJobDescr" name="fJobDescr" value=""><br><br>
        <label for="startEmploy"> Start of Employment:</label><br>
        <input type="date" id="startEmploy" name="startEmploy" value=""><br><br>
        <label for="endEmploy"> End of Employment:</label><br>
        <input type="date" id="endEmploy" name="endEmploy" value=""><br><br>

        <input type="submit" value="Submit">
      </form> 
    </div>			
		<div class = "copyright">
		  <p> <span> &#169; </span>2023 University of North Texas. All Rights Reserved.</p>
		</div>
	</body>
</html>