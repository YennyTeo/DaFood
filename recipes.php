<!-- not yet use -->
<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "recipes";

$handler = mysqli_connect($servername, $username, $password, $database);

if (!$handler) {
    die("Connection failed: " . mysqli_connect_error());
}

// Retrieve recipes from the database
$retrieveRecipesQuery = "SELECT * FROM Recipes";
$recipesResult = mysqli_query($handler, $retrieveRecipesQuery);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipes - DaFood</title>
    <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="recipes.css">
    <link rel="stylesheet" href="style.css">
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

    <div class="recipes-container">
        <h2>Recipes</h2>

        <?php
        // Check if there are recipes to display
        if (mysqli_num_rows($recipesResult) > 0) {
            while ($recipe = mysqli_fetch_assoc($recipesResult)) {
                echo "<div class='recipe'>";
                echo "<h3>" . $recipe['RecipeName'] . "</h3>";
                echo "<p><strong>Ingredients:</strong> " . $recipe['Ingredients'] . "</p>";
                echo "<p><strong>Instructions:</strong> " . $recipe['Instructions'] . "</p>";
                echo "</div>";
            }
        } else {
            echo "<p>No recipes found.</p>";
        }
        ?>

    </div>

</body>

</html>

<?php
mysqli_close($handler);
?>
