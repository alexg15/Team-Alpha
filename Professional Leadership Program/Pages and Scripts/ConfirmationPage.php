<!DOCTYPE html>
<html>
<head>
    <title>Form Submission Confirmation</title>
</head>
<body>
    <div style="text-align: center; padding: 20px;">
        <h1>Form Submitted</h1>
        <p>Thank you for submitting the form. You will hear back from UNT PLP personnel when any updates are available.</p>
        <button onclick="returnToLandingPage()">Return to Landing Page</button>
    </div>

    <script>
        function returnToLandingPage() {
            window.location.href = "Landing.php";
        }
    </script>
</body>
</html>