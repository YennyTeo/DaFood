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

mysqli_close($handler);
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Profile - DaFood</title>
  <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="profile.css"> 
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
      <h2>Welcome, <?php echo $username; ?></h2>
      <p>Email: <?php echo $email; ?></p>
      <div class="edit-icon" onclick="location.href='editprofile.php'">
        <img src="icon/edit.png" alt="Edit Icon">
      </div>
      <button onclick="location.href='savedrecipe.php'">Saved Recipes</button>
      <br>
      <button onclick="location.href='myrecipe.php'">My Recipes</button>
    </div>
  </div>

</body>

</html>
