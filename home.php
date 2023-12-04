<?php
session_start();

// Check if the user is not signed in, redirect to signin.php
if (!isset($_SESSION['userID'])) {
    header("Location: signin.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home - DaFood</title>
  <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="home.css"> 
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
    <div class="content-text">Please input your ingredients</div>
      <form action="searchresult.php" method="GET" class="ingredient-input">
          <input style="width: 500px; border-radius: 15px;" type="text" name="search" placeholder="Enter your ingredients" />
          <div class="flavor-options">
              <label><input type="checkbox" name="flavor[]" value="sweet">Sweet</label>
              <label><input type="checkbox" name="flavor[]" value="sour">Sour</label>
              <label><input type="checkbox" name="flavor[]" value="spicy">Spicy</label>
              <label><input type="checkbox" name="flavor[]" value="savory">Savory</label>
          </div>
          <button type="submit" class="search-button">Search</button>
      </form>
  </div>


</body>

</html>
