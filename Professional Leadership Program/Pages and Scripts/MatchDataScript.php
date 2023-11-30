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
    $result = $conn->query("
        SELECT 
            MentorRank.mentor_id, MentorRank.mentee_id, MentorRank.first_name, MentorRank.last_name, 
            MentorRank.plp_ref_email, MentorRank.mentee_first_name, MentorRank.mentee_last_name, MentorRank.personal_email
        FROM (
            SELECT
                mentor_accounts.mentor_id, mentor_accounts.first_name, mentor_accounts.last_name, mentor_accounts.plp_ref_email,
                mentee_accounts.mentee_id, mentee_accounts.mentee_first_name, mentee_accounts.mentee_last_name, mentee_accounts.personal_email,
                ROW_NUMBER() OVER (PARTITION BY mentor_accounts.mentor_id ORDER BY mentor_accounts.mentor_id) AS MentorRank,
                ROW_NUMBER() OVER (PARTITION BY mentee_accounts.mentee_id ORDER BY mentee_accounts.mentee_id) AS MenteeRank
            FROM mentor_accounts
            JOIN mentee_accounts ON mentor_accounts.mentor_majors = mentee_accounts.major
        ) AS MentorRank
        WHERE MentorRank = 1 AND MenteeRank = 1
        AND (MentorRank.mentor_id, MentorRank.mentee_id) NOT IN (
            SELECT mentor_id, mentee_id FROM matched_data_temp
        );
    ");

    if ($result !== false) {
        $matchArray = $result->fetch_all(MYSQLI_ASSOC);
        
        if (!empty($matchArray)) {
            download_send_headers("Applicant_Pairings_Data_" . date("Y-m-d") . ".csv");
            $output = fopen("php://output", "w");

            // Output CSV header
            fputcsv($output, array_keys($matchArray[0]));

            // Output data
            foreach ($matchArray as $row) {
                fputcsv($output, $row);
            }

            fclose($output);
            exit;
        } else {
            echo "No matched data found.";
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