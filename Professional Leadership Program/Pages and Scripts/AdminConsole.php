<?php
session_start();
if(!isset($_SESSION['username'])){
  header("Location: LoginAccessError.php");
}
?>

<html><head>
    <title>UNT Professional Leadership Program</title>
    <meta name="description" content="Professional Leadership Program">
    <meta name="keywords" content="Professional Leadership Program UNT">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../css/Main.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" type="text/css">
  </head>
    
  <body>
    <h1 id="AdminConsole"> Admin Console </h1><br><br>
    <form action="MentorDataScript.php" method="POST">
      <button type="submit" class="btn" name="mentorData">Download Mentor Applicant Data</button>
      <label for="mentorData">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Selecting this option will download mentor applicant data in a .csv format.</label><br>
      <br><br>
    </form>
      
    <form action="MenteeDataScript.php" method="POST">
      <button type="submit" class="btn" name="menteeData">Download Mentee Applicant Data</button>
      <label for="menteeData">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Selecting this option will download both mentee applicant data in a .csv format.</label><br>
      <br><br>
    </form>

    <form action="MatchDataScript.php" method="POST">
      <button type="submit" class="btn" name="matchButton">Download Recommended Matches</button>    
      <label for="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Selecting this option will download mentee and mentor recommended matches in a .csv format.</label><br><br><br><br><br><br><br><br><br><br>
    </form>
    
    <form action="Logout.php" method="POST">
      <button type="submit" class="btn" name="logout">Logout</button>
    </form>
    
</body></html>