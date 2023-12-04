<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Process the form data when the form is submitted

    // Include your database connection logic here
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $database = "recipes";

    $handler = mysqli_connect($servername, $username, $password, $database);

    if (!$handler) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Get form data
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Validate user credentials
    $validateUserQuery = "SELECT * FROM Users WHERE Email = '$email'";
    $result = mysqli_query($handler, $validateUserQuery);

    if ($result) {
        $user = mysqli_fetch_assoc($result);
        if ($user && $password === $user['Password']) {
            // Password is correct, set userID session variable and redirect to home.php
            $_SESSION['userID'] = $user['UserID'];
            header("Location: home.php");
            exit();
        } else {
            // Incorrect email or password, set error message for JavaScript
            // echo "<script>var errorMessage = 'Incorrect email or password';</script>";
            echo "<script>alert('Incorrect email or password');</script>";
        }
    } else {
        // Error in the query, handle accordingly
        echo "Error: " . mysqli_error($handler);
    }

    mysqli_close($handler);
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="signin.css">
    <script>
        // Display the error message as a popup
        window.onload = function () {
            if (typeof errorMessage !== 'undefined') {
                alert(errorMessage);
            }
        };
    </script>
</head>

<body>

<header>
    <h1>DaFood</h1>
</header>

<div class="signin-container">
    <div class="signin-text">Sign in to your account</div>

    <!-- Email Input -->
    <form id="signin-form" method="post" action="signin.php">
        <input type="email" id="email" name="email" placeholder="Enter your email" class="signin-input" />

        <!-- Password Input -->
        <input type="text" id="password" name="password" placeholder="Enter your password" class="signin-input" />
        <br>
        <!-- Submit Button -->
        <button type="submit" class="signin-button">Sign In</button>
    </form>

    <!-- New to DaFood? Sign Up Here -->
    <div class="signup-link">
        <span>New to DaFood?</span>
        <a href="signup.php">Sign Up Here</a>
    </div>
</div>

</body>

</html>
