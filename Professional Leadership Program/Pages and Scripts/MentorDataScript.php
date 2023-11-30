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
    $mentor_result = $conn->query("    
    SELECT
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
    FROM
        `mentor_accounts`
    ");

    if ($mentor_result !== false) {
        $mentorArray = $mentor_result->fetch_all(MYSQLI_ASSOC);
        
        if (!empty($mentorArray)) {
            download_send_headers("Mentor_Applicant_Data_" . date("Y-m-d") . ".csv");
            $output = fopen("php://output", "w");

            // Output CSV header
            fputcsv($output, array_keys($mentorArray[0]));

            // Output data
            foreach ($mentorArray as $row) {
                fputcsv($output, $row);
            }

            fclose($output);
            exit;
        } else {
            echo "No mentor applicants found.";
        }
    } else {
        echo "Error in SQL query: " . $conn->error;
    }
}

function download_send_headers($filename) {
    // disable caching
    $now = gmdate("D, d M Y H:i:s");
    header("Expires: Tue, 03 Jul 2001 06:00:00 GMT");
    header("Cache-Control: max-age=0, no-cache, must-revalidate, proxy-revalidate");
    header("Last-Modified: {$now} GMT");

    // force download  
    header("Content-Type: application/force-download");
    header("Content-Type: application/octet-stream");
    header("Content-Type: application/download");

    // disposition / encoding on response body
    header("Content-Disposition: attachment;filename={$filename}");
    header("Content-Transfer-Encoding: binary");
}

$conn->close();
?>