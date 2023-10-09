<!doctype html>
<html>
	<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>UNT Professional Leadership program </title>
		<meta name="description" content="Professional Leadership program">
		<meta name="keywords" content="Professional Leadership Program UNT">
		<link rel="stylesheet" type="text/css" href="./css/main.css">
    <link href="./css/css" rel="stylesheet" type="text/css">
		<style></style>
	</head>

<body>

<h1> Basic Info </h1>
<div class = "ferpa">
    <form action="/action_pagebasic.php">
    <label for="fname">First Name:</label><br>
    <input type="text" id="fname" name="fname" value=""><br>
    <label for="pname">Preferred First Name:</label><br>
    <input type="text" id="pname" name="pname" value=""><br>
    <label for="lname">Last Name:</label><br>
    <input type="text" id="lname" name="lname" value=""><br><br>
    <label for="gender">Gender:</label><br>
      <select id="gender" name="gender">
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
    <select id="untalumni" name="untalumni">
      <option value="">--Select--</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select><br><br>
    <label for="plpalumni">Are you an alumni of PLP?: </label><br>
    <select id="plpalumni" name="plpalumni">
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
    <input type="text" id="phnumber" name="phnumber" value=""><br><br>
    <label for="streetadd">Permanent Street Address:</label><br>
    <input type="text" id="streetadd" name="streetadd" value=""><br><br>
    <label for="city">City:</label><br>
    <input type="text" id="city" name="city" value=""><br><br>
    <label for="state">State</label><br>
    <input type="text" id="state" name="state" value=""><br><br>
    <label for="zip">Zip Code</label><br>
    <input type="text" id="zip" name="zip" value=""><br><br>
    <!--y/n question -->
    <label for="diffadd">Does your mailing address differ from your permanent address?</label><br>
    <select id="diffadd" name="differadd">
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
    <input type="text" id="diffzip "name="differadd" value=""><br><br>
    <label for="citizen">Country of Citizenship:</label><br>
    <input type="text" id="citizen" name="citizen" value=""><br><br> 
    <label for="lang">What Languages do you Speak?</label><br>
    <input type="text" id="lang" name="lang" value=""><br><br>
    </form> 
</div>


<h1> Mentoring Details</h1>
<div class = "ferpa">
  <form action="/action_pagebasic.php">
  <label for="mentorDescr"> Why do you want to be a PLP mentor? </label><br>
  <input type="text" id="mentorDescr" name="mentorDescr" value=""><br>
  <label for="mentorGoals"> What are your goals / expectations for the mentoring relationship? </label><br>
  <input type="text" id="mentorGoals" name="mentorGoals" value=""><br>
  <!--dropdown textbox for this data-->
  <label for="genderp"> Do you have a mentee gender preference?</label><br>
  <select id="genderp" name="genderp">
    <option value="">--Select--</option>
    <option value="Yes">Yes</option>
    <option value="No">No</option>
  </select><br><br>
  <!--dropdown textbox for this data-->
  <label for="genderpref"> Gender Prefered</label><br>
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
  <label for="prefstudmaj"> Taking into account your education and professional experience, which student majors would you prefer to mentor?</label><br>
  <input type="text" id="prefstudmaj" name="prefstudmaj" value=""><br><br>
  <!--y/n question -->
  <label for="transport">Some students do not have access to transportation. Based on your willingness and ability to travel, should we pair you with a mentee that has a car?</label><br>
  <select id="transport" name="transport">
  <option value="">--Select--</option>
  <option value="true">Yes</option>
  <option value="false">No</option>
  </select><br><br> 
  </form> 
</div>



<h1> Mentor Requirements </h1>
<div class = "ferpa">
  <form action="/action_pagebasic.php">
  <label for="yearsExp">How many years of professional experience do you have?</label><br>
  <input type="text" id="yearsExp" name="yearsExp" value=""><br>
  <label for="reference">Who referred you to mentor with PLP</label><br>
  <input type="text" id="reference" name="reference" value=""><br>
  <label for="refEmail">Provide their email address: </label><br>
  <input type="text" id="refEmail" name="refEmail" value=""><br><br>
  <label for="refAffil">What is their affiliation with PLP?</label><br>
  <input type="text" id="refAffil" name="refAffil" value=""><br><br>
  
  <h1> Program expectations </h1>
  <label for="acknMatch">Matching is completed during the summer based on program needs.I understand that I may not be paired with a student this year. </label><br>
  <input type="checkbox" id="" name="acknMatch" value=""><br><br>
  <label for="acknMeet"> I will be able to meet with my mentee for the full academic year. </label><br>
  <input type="checkbox" id="" name="acknMeet" value=""><br><br>
  <label for="acknShare">By checking this box, I understand that as a mentor, my email address, employer name, and job title will be shared with the PLP community (students and mentors). </label><br>
  <input type="checkbox" id="" name="acknShare" value=""><br><br>
  </form> 
</div>



<h1> Education and Experience </h1>
  <div class = "ferpa">
  <form action="/action_pagebasic.php">
  <label for="summary">Provide brief professional summary.</label><br>
  <input type="text" id="summary" name="summary" value=""><br>
  <label for="indExp">In order to complete the matching process, we consider your industry experience. In which industry/industries do you have experience? </label><br>
  <input type="text" id="indExp" name="indExp" value=""><br>
  
  <h1> Current Job Info</h1>
  <label for="compName">Company Name</label><br>
  <input type="text" id="compName" name="compName" value=""><br><br>
  <label for="jobTitle">Job Title</label><br>
  <input type="text" id="jobTitle" name="jobTitle" value=""><br><br>
  <label for="jobDescr">Briefly describe this position</label><br>
  <input type="text" id="jobDescr" name="jobDescr" value=""><br><br>
  <!--dropdown textbox for this data-->
  <label for="career">Career Field </label><br>
  <input list="career-options" name="career" id="career">
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
  <label for="fCompName">Former Company Name</label><br>
  <input type="text" id="fCompName" name="fCompName" value=""><br><br>
  <label for="fJobTitle">Former job title </label><br>
  <input type="text" id="fJobTitle" name="fJobTitle" value=""><br><br>
  <label for="fJobDescr"> briefly describe this position</label><br>
  <input type="text" id="fJobDescr" name="fJobDescr" value=""><br><br>
  <label for="stateEmploy"> State of employment</label><br>
  <input type="text" id="stateEmploy" name="stateEmploy" value=""><br><br>
  <label for="endEmploy"> End of employment</label><br>
  <input type="text" id="endEmploy" name="endEmploy" value=""><br><br>

  <h1> Education </h1>
  <label for="uniName"> Institution Name</label><br>
  <input type="text" id="uniName" name="uniName" value=""><br><br>
  <label for="degree"> Degree</label><br>
  <input type="text" id="degree" name="degree" value=""><br><br>
  <label for="major">Major:</label><br>
  <input list="major-options" id="major" name="major"><br><br>
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
  <input type="text" id="gradYear" name="gradYear" value=""><br><br>
  <label for="certs"> Professional Certifactions </label><br>
  <input type="text" id="certs" name="certs" value=""><br><br>
  <label for="acadAffil"> Professional academic Affiliations</label><br>
  <input type="text" id="acadAffil" name="acadAffil" value=""><br><br>

  <input type="submit" value="Submit">
  </form> 
</div>
</body>
</html>
