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
    $mentee_result = $conn->query("    
    SELECT
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
    FROM
        `mentee_accounts`
    ");

    if ($mentee_result !== false) {
        $menteeArray = $mentee_result->fetch_all(MYSQLI_ASSOC);
        
        if (!empty($menteeArray)) {
            download_send_headers("Mentee_Applicant_Data_" . date("Y-m-d") . ".csv");
            $output = fopen("php://output", "w");

            // Output CSV header
            fputcsv($output, array_keys($menteeArray[0]));

            // Output data
            foreach ($menteeArray as $row) {
                fputcsv($output, $row);
            }

            fclose($output);
            exit;
        } else {
            echo "No mentee applicants found.";
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