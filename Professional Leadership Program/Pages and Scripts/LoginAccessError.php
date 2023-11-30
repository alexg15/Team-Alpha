<!DOCTYPE html>
<html>
    <head>
        <title>UNT Professional Leadership Program</title>
        <meta name="description" content="Professional Leadership Program">
        <meta name="keywords" content="Professional Leadership Program UNT">
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="../css/Main.css">
        <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>
    </head>

    <body>
        <h1>ERROR</h1>
        <p>Please utilize the login function from landing page. Redirecting to landing page in <span id="countdowntimer">10</span> seconds.</p>
        <script type="text/javascript">
            var timeleft = 10;
            var downloadTimer = setInterval(function(){
            timeleft--;
            document.getElementById("countdowntimer").textContent = timeleft;
            if(timeleft <= 0)
                clearInterval(downloadTimer);
            },1000);
        </script>
        <meta http-equiv="refresh" content="10;url=http://localhost/Professional Leadership Program/Pages and Scripts/Landing.php"/>

        <form action="http://localhost/Professional Leadership Program/Pages and Scripts/Landing.php" method="POST">
            <button type="submit" class="btn" name="redirect">Redirect Now</button>
        </form>
    </body>
</html>