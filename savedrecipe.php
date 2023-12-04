<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Saved Recipes - DaFood</title>
  <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="savedrecipe.css">
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

  <div class="back-icon" onclick="location.href='profile.php'">
    <img src="icon/back.png" alt="Back to Home">
  </div>

  <div class="content-container">
    <h2>Saved Recipes</h2>

    <?php
    // Assuming you have the userID stored in the session
    $userID = $_SESSION['userID'];

    // Connect to the database
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $database = "recipes";

    $handler = mysqli_connect($servername, $username, $password, $database);

    if (!$handler) {
      die("Connection failed: " . mysqli_connect_error());
    }

    // Retrieve saved recipes for the current user
    $query = "SELECT R.* FROM Recipes R
              INNER JOIN UserFavorites UF ON R.RecipeID = UF.RecipeID
              WHERE UF.UserID = $userID";
    $result = mysqli_query($handler, $query);

    // Display saved recipes
    if ($result && mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $recipeID = $row['RecipeID'];
        $recipeName = $row['RecipeName'];
        $recipeDescription = $row['Description'];
        $flavor = $row['Flavor'];
        $image = $row['Image'];

        // Include the recipe component
        include 'recipecomponent.php';
        displayRecipeComponent($recipeID, $recipeName, $recipeDescription, $flavor, $image);
      }
    } else {
      echo "<p>No saved recipes yet.</p>";
    }

    // Close the database connection
    mysqli_close($handler);
    ?>

  </div>

</body>

</html>
