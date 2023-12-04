<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "recipes";

$handler = mysqli_connect($servername, $username, $password, $database);

if (!$handler) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if the recipeID is provided in the URL
if (isset($_GET['recipeID'])) {
    $recipeID = mysqli_real_escape_string($handler, $_GET['recipeID']);

    // Retrieve recipe details from the database
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
        exit; // Add exit to stop further execution if recipe is not found
    }

    // Retrieve ratings and comments for the recipe
    $ratingsQuery = "SELECT * FROM Ratings WHERE RecipeID = $recipeID";
    $ratingsResult = mysqli_query($handler, $ratingsQuery);
} else {
    echo "RecipeID not provided.";
    exit; // Add exit to stop further execution if recipeID is not provided
}

// Handle rating submission
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submitRating'])) {
    $rating = mysqli_real_escape_string($handler, $_POST['rating']);
    $comment = mysqli_real_escape_string($handler, $_POST['comment']);

    // Insert the rating into the Ratings table with an anonymous user
    $insertRatingQuery = "INSERT INTO Ratings (RecipeID, UserID, Rating, Comment) VALUES ($recipeID, NULL, $rating, '$comment')";
    $insertRatingResult = mysqli_query($handler, $insertRatingQuery);

    if ($insertRatingResult) {
        echo "Rating submitted successfully.";
        // You can redirect the user or display a success message here
    } else {
        echo "Error submitting rating: " . mysqli_error($handler);
    }
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
    <link rel="stylesheet" href="guestrecipedetail.css">
</head>

<body>

    <header>
        <h2>DaFood</h2>
    </header>

    <div class="back-icon" onclick="location.href='guestsearchresult.php'">
        <img src="icon/back.png" alt="Back to Home">
    </div>

    <div class="content-container">
        <div class="recipe-detail">
            <div class="recipe-info">
                <h2><?php echo $recipeName; ?></h2>
                <div class="recipe-img">
                    <img src="<?php echo $image; ?>" alt="<?php echo $recipeName; ?>">
                </div>
                <p class="flavor">Flavor: <?php echo $flavor; ?></p>
                <p class="description"><?php echo $description; ?></p>
                <h3>Ingredients</h3>
                <p><?php echo $ingredients; ?></p>
                <h3>Instructions</h3>
                <p><?php echo $instructions; ?></p>
            </div>
            
            <!-- Rating Section -->
            <div class="ratings-section">
                <h3 style="padding:100px 10px 20px 10px;">Rate this recipe</h3>
                <form method="post" action="">
                    <label for="rating">Rating:</label>
                    <input type="number" name="rating" min="1" max="5" required>
                    <br>
                    <label for="comment">Comment:</label>
                    <textarea name="comment" rows="4" cols="50" required></textarea>
                    <br>
                    <input type="submit" name="submitRating" value="Submit Rating">
                </form>
            </div>

            <!-- Ratings and Comments Section -->
            <div class="ratings-section">
                <h3>Ratings and Comments</h3>
                <?php
                if ($ratingsResult && mysqli_num_rows($ratingsResult) > 0) {
                    while ($ratingRow = mysqli_fetch_assoc($ratingsResult)) {
                        $rating = $ratingRow['Rating'];
                        $comment = $ratingRow['Comment'];

                        // Check if the 'Username' key exists in the $ratingRow array
                        $displayUsername = isset($ratingRow['Username']) ? $ratingRow['Username'] : 'Anonymous';

                        echo "<p><strong>$displayUsername:</strong> Rating: $rating, Comment: $comment</p>";
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
