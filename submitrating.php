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

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $recipeID = mysqli_real_escape_string($handler, $_POST['recipeID']);
    $userID = $_SESSION['userID']; // Assuming you store the user ID in the session
    $rating = mysqli_real_escape_string($handler, $_POST['rating']);
    $comment = mysqli_real_escape_string($handler, $_POST['comment']);

    $insertRatingQuery = "INSERT INTO Ratings (RecipeID, UserID, Rating, Comment)
                         VALUES ('$recipeID', '$userID', '$rating', '$comment')";

    if (mysqli_query($handler, $insertRatingQuery)) {
        echo "Rating and comment submitted successfully.";
    } else {
        echo "Error submitting rating and comment: " . mysqli_error($handler);
    }
} else {
    echo "Invalid request.";
}

mysqli_close($handler);
?>
