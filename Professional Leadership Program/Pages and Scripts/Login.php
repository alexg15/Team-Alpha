<?php
// Replace these variables with your actual database credentials
$servername = "localhost";
$username = "root";
$password = "";
$database = "plp database";

// Create a database connection
$conn = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Perform a SQL query to retrieve the user's information based on the username
    $sql = "SELECT adminID, username, password_hash FROM administrator_accounts WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        $hashed_password = $row["password_hash"];
        session_start();
        $_SESSION['username'] = $_POST['username'];

        // Verify the provided password against the stored hash
        if (password_verify($password, $hashed_password)) {
            // Password is correct, log in the user           
            header("Location: AdminConsole.php");
            exit;
        } else {
            // Incorrect password
            header("Location: LoginError.php");
            exit();
        }
    } else {
        // Incorrect username
        header("Location: LoginError.php");
        exit();
    }

    // Close the prepared statement and database connection
    $stmt->close();
}

// Close the database connection
$conn->close();
?>
