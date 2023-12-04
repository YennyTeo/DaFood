<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Recipes - DaFood</title>
    <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="myrecipe.css">
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
        <div class="my-recipes-content">
            <h2>My Recipes</h2>

            <!-- Button to Add New Recipe -->
            <button class="newrecipe" onclick="location.href='insertrecipe.php'">Add New Recipe</button>

            <?php
            // Include the recipe component function
            include 'recipecomponent.php';

            // Assuming you have the userID stored in the session
            if (isset($_SESSION['userID'])) {
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

                // Retrieve user-added recipes for the current user
                $query = "SELECT * FROM Recipes WHERE UserAdded = TRUE AND UserID = $userID";
                $result = mysqli_query($handler, $query);

                if ($result && mysqli_num_rows($result) > 0) {
                    // Display user-added recipes using the recipe component function
                    while ($row = mysqli_fetch_assoc($result)) {
                        displayRecipeComponent($row['RecipeID'], $row['RecipeName'], $row['Description'], $row['Flavor'], $row['Image']);
                    }
                } else {
                    echo "<p>No recipes yet.</p>";
                }

                // Close the database connection
                mysqli_close($handler);
            } else {
                echo "User not logged in.";
            }
            ?>
        </div>
    </div>

</body>

</html>
