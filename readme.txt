Test procedure for windows os:
Install XAMPP to root drive in folder 'XAMPP'
  Navigate to C:\XAMPP\htdocs\
  You can store web projects here. Download and move the 'Professional Leadership Program' folder containing web files here.

Run XAMPP:
  Start Apache.
  Start MySQL.

Database URL:
  localhost/phpmyadmin/

Download "127_0_0_1.sql" from the main branch.
  Manually import the .sql file above to server "127.0.0.1" in phpMyAdmin using the "Import" operation.

Upon successful import, you should see "plp database" under available databases with 4 tables.
The database is pre-populated with test data. The administrator is "testadmin" with password "password". If you want to change the password or create a new admin account, select "password_hash()PHP function" instead of "password" function. An administrator account is necessary to utilize Admin Console functionality.

Landing page for the website is "localhost/professional leadership program/pages and scripts/landing.php" with spaces included.

Any issues accessing or updating tables may be due to your XAMPP services config and phpMyAdmin passwords. These can be resolved quickly by following ONE of the numbered methods below:

  1) Changing "\XAMPP\mysql\bin\my.ini" line 19 to:
        #password=admin

     AND

     Changing "\XAMPP\phpmyadmin\config.inc.php" line 21 to:
        $cfg['Servers'][$i]['password'] = 'admin';

  2) Updating the following files located in "\XAMPP\htdocs\Professional Leadership Program\Pages and Scripts":
        AddMentorScript.php
        Login.php
        MatchDataScript.php
        MenteeApplication.php
        MenteeDataScript.php
        MentorDataScript.php

      Update the following lines:
        $username = "***";
        $password = "***";
      Where "***" is your own value. The default values are empty quotes. Example:  $username = "";
