<?php
session_start();

if (isset($_POST['saveRecipe'])) {
    $recipeID = $_GET['recipeID']; // Assuming you get the recipeID from the URL

    // Add the recipeID to the user's saved recipes (you need to have userID in the session)
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

        // Insert the record into the UserFavorites table
        $insertQuery = "INSERT INTO UserFavorites (UserID, RecipeID) VALUES ($userID, $recipeID)";

        if (mysqli_query($handler, $insertQuery)) {
            // Set a session variable indicating success
            $_SESSION['recipeSaved'] = true;
        } else {
            echo "Error saving recipe: " . mysqli_error($handler);
        }

        // Close the database connection
        mysqli_close($handler);

        // Redirect back to recipedetail.php
        header("Location: recipedetail.php?recipeID=$recipeID");
        exit();
    } else {
        echo "User not logged in.";
    }
} else {
    echo "Invalid request.";
}
?>
