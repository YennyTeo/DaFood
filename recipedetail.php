<?php
session_start();

$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "recipes";

$handler = mysqli_connect($servername, $username, $password, $database);

if (!$handler) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_GET['recipeID'])) {
    $recipeID = mysqli_real_escape_string($handler, $_GET['recipeID']);

    $query = "SELECT * FROM Recipes WHERE RecipeID = $recipeID";
    $result = mysqli_query($handler, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);

        $recipeName = $row['RecipeName'];
        $description = $row['Description'];
        $flavor = $row['Flavor'];
        $ingredients = $row['Ingredients'];
        $instructions = $row['Instructions'];
        $image = $row['Image'];
    } else {
        echo "Recipe not found.";
        exit;
    }
} else {
    echo "RecipeID not provided.";
    exit;
}

// Retrieve ratings and comments for the recipe
$ratingsQuery = "SELECT Ratings.Rating, Ratings.Comment, Users.Username
                FROM Ratings
                INNER JOIN Users ON Ratings.UserID = Users.UserID
                WHERE Ratings.RecipeID = $recipeID";
$ratingsResult = mysqli_query($handler, $ratingsQuery);

// Check for the session variable indicating success
if (isset($_SESSION['recipeSaved']) && $_SESSION['recipeSaved']) {
    // Show the success message
    echo "<script>alert('Recipe saved successfully!');</script>";

    // Unset the session variable to avoid showing the message again on page refresh
    unset($_SESSION['recipeSaved']);
}

mysqli_close($handler);
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $recipeName; ?> - DaFood</title>
    <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="recipedetail.css">
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

    <div class="back-icon" onclick="location.href='searchresult.php'">
        <img src="icon/back.png" alt="Back to Home">
    </div>

    <div class="content-container">
        <div class="recipe-detail">
            <div class="recipe-header">
                <div class="love-icon" onclick="document.getElementById('saveRecipeForm').submit()">
                    <img src="icon/love.png" alt="Love Icon">
                </div>
                <h2><?php echo $recipeName; ?></h2>
            </div>
            <div class="recipe-img">
                <img src="<?php echo $image; ?>" alt="<?php echo $recipeName; ?>">
            </div>
            <p class="flavor">Flavor: <?php echo $flavor; ?></p>
            <p class="description"><?php echo $description; ?></p>
            <h3>Ingredients</h3>
            <p><?php echo nl2br($ingredients); ?></p>
            <h3>Instructions</h3>
            <p><?php echo nl2br($instructions); ?></p>

            <!-- Rating and Comment Form -->
            <div class="rate-comment-form">
                <h3>Rate and Comment</h3>
                <!-- Add a form to submit ratings and comments -->
                <form method="post" action="submitrating.php">
                    <label for="rating">Rating:</label>
                    <input type="number" name="rating" min="1" max="5" required>
                    <br>
                    <label for="comment">Comment:</label>
                    <textarea name="comment" rows="4" required></textarea>
                    <input type="hidden" name="recipeID" value="<?php echo $recipeID; ?>">
                    <br>
                    <input type="submit" value="Submit">
                </form>
            </div>

            <!-- Add a form with a hidden input to submit the save action -->
            <form id="saveRecipeForm" method="post" action="saverecipe.php?recipeID=<?php echo $recipeID; ?>">
                <input type="hidden" name="saveRecipe" value="1">
            </form>

            <!-- Ratings and Comments Section -->
            <div class="ratings-section">
                <h3>Ratings and Comments</h3>
                <?php
                if ($ratingsResult && mysqli_num_rows($ratingsResult) > 0) {
                    while ($ratingRow = mysqli_fetch_assoc($ratingsResult)) {
                        $rating = $ratingRow['Rating'];
                        $comment = $ratingRow['Comment'];
                        $username = $ratingRow['Username'];

                        echo "<p><strong>$username:</strong> Rating: $rating, Comment: $comment</p>";
                    }
                } else {
                    echo "<p>No ratings and comments yet.</p>";
                }
                ?>
            </div>
            
        </div>
    </div>

</body>

</html>
