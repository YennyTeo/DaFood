<?php
session_start();

// Assuming you've stored user ID in the session during sign-in
if (!isset($_SESSION['userID'])) {
    // Redirect to the signin page or handle the case when the user is not signed in
    header("Location: signin.php");
    exit();
}

$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "recipes";

$handler = mysqli_connect($servername, $username, $password, $database);

if (!$handler) {
    die("Connection failed: " . mysqli_connect_error());
}

// Retrieve user information from the database
$userID = $_SESSION['userID'];
$query = "SELECT * FROM Users WHERE UserID = $userID";
$result = mysqli_query($handler, $query);

if (!$result) {
    die("Query failed: " . mysqli_error($handler));
}

if (mysqli_num_rows($result) > 0) {
    $user = mysqli_fetch_assoc($result);
    $username = $user['Username'];
    $email = $user['Email'];
} else {
    // Handle the case when user information is not found
    $username = "Guest";
    $email = "guest@example.com";
}

// Handle form submission to update user information
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $newUsername = mysqli_real_escape_string($handler, $_POST['new-username']);
    $newEmail = mysqli_real_escape_string($handler, $_POST['new-email']);
    $currentPassword = mysqli_real_escape_string($handler, $_POST['current-password']);
    $newPassword = mysqli_real_escape_string($handler, $_POST['new-password']);
    $confirmPassword = mysqli_real_escape_string($handler, $_POST['confirm-password']);

    // Check if the current password matches the stored password, only if a current password is provided
    if (!empty($currentPassword)) {
        $storedPassword = $user['Password']; // Assuming the password is stored in the 'Password' field
        if (!password_verify($currentPassword, $storedPassword)) {
            $_SESSION['errorMessage'] = "Incorrect current password.";
            mysqli_close($handler);
            header("Location: editprofile.php"); // Redirect back to the editprofile.php page
            exit();
        }
    }

    // Check if the new password and confirm password match, only if a new password is provided
    if (!empty($newPassword) && $newPassword != $confirmPassword) {
        $_SESSION['errorMessage'] = "New password and confirm password do not match.";
    } else {
        // Hash the new password if provided
        $hashedPassword = !empty($newPassword) ? password_hash($newPassword, PASSWORD_DEFAULT) : $storedPassword;

        // Update the user information in the database
        $updateQuery = "UPDATE Users SET Username='$newUsername', Email='$newEmail', Password='$hashedPassword' WHERE UserID=$userID";
        if (mysqli_query($handler, $updateQuery)) {
            $_SESSION['successMessage'] = "Profile updated successfully!";
            // Redirect to the profile page after successful update
            header("Location: profile.php");
            exit();
        } else {
            $_SESSION['errorMessage'] = "Error updating profile: " . mysqli_error($handler);
        }
    }
}

mysqli_close($handler);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile - DaFood</title>
    <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="editprofile.css">
</head>

<body>

    <header>
        <div class="dafood-logo" onclick="location.href='home.php'">DaFood</div>
        <form action="searchresult.php" method="GET" class="search-bar">
            <input type="text" name="search" placeholder="Search..." />
        </form>
        <div class="profile-icon" onclick="location.href='profile.php'">
            <img src="icon/profile.png" alt="Profile Icon">
        </div>
    </header>

    <div class="content-container">
        <!-- Profile Content -->
        <div class="profile-content">
            <h2>Edit Profile, <?php echo $username; ?></h2>
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <label for="new-username">New Username:</label>
                <input type="text" id="new-username" name="new-username" value="<?php echo $username; ?>">

                <label for="new-email">New Email:</label>
                <input type="email" id="new-email" name="new-email" value="<?php echo $email; ?>">

                <label for="current-password">Current Password:</label>
                <input type="password" id="current-password" name="current-password">

                <label for="new-password">New Password:</label>
                <input type="password" id="new-password" name="new-password">

                <label for="confirm-password">Confirm Password:</label>
                <input type="password" id="confirm-password" name="confirm-password">

                <button type="submit">Update Profile</button>
            </form>

            <?php
            // Display success or error messages
            if (isset($_SESSION['successMessage'])) {
                echo "<p class='success-message'>{$_SESSION['successMessage']}</p>";
                unset($_SESSION['successMessage']); // Clear the success message after displaying it
            }

            if (isset($_SESSION['errorMessage'])) {
                echo "<p class='error-message'>{$_SESSION['errorMessage']}</p>";
                unset($_SESSION['errorMessage']); // Clear the error message after displaying it
            }
            ?>

            <br>
            <!-- Back to Profile Link -->
            <div class="signup-link">
                <a href="profile.php">Back to Profile</a>
            </div>
        </div>
    </div>

</body>

</html>
