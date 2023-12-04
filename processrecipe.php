<?php
session_start();

$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "recipes";

// Create connection
$handler = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$handler) {
    die("Connection failed: " . mysqli_connect_error());
}

// Function to sanitize input data
function sanitizeInput($data) {
    global $handler;
    return mysqli_real_escape_string($handler, $data);
}

$baseUrl = "/fyp/food/";

// Check if the form is submitted
if (isset($_POST['submit'])) {
    // Get user ID from the session
    $userID = $_SESSION['userID'];

    // Upload recipe image
    $targetDir = $_SERVER['DOCUMENT_ROOT'] . $baseUrl;
    $targetFile = $targetDir . basename($_FILES["recipe-image"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));

    // Check if the file is an image
    $check = getimagesize($_FILES["recipe-image"]["tmp_name"]);
    if ($check !== false) {
        $uploadOk = 1;
    } else {
        $_SESSION['errorMessage'] = "Error: File is not an image.";
        $uploadOk = 0;
    }

    // Check file size (adjust as needed)
    if ($_FILES["recipe-image"]["size"] > 500000) {
        $_SESSION['errorMessage'] = "Error: Sorry, your file is too large.";
        $uploadOk = 0;
    }

    // Allow only certain file formats including WebP
    $allowedFormats = ["jpg", "jpeg", "png", "gif", "webp"];
    if (!in_array($imageFileType, $allowedFormats)) {
        $_SESSION['errorMessage'] = "Error: Sorry, only JPG, JPEG, PNG, GIF, and WebP files are allowed.";
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        // Do nothing here as we set the error message in the previous checks
    } else {
        // If everything is OK, try to upload the file
        if (move_uploaded_file($_FILES["recipe-image"]["tmp_name"], $targetFile)) {
            // Retrieve and sanitize form data
            $recipeName = sanitizeInput($_POST['recipe-name']);
            $description = sanitizeInput($_POST['description']);
            $flavor = implode(",", $_POST['flavor']); // Convert array to comma-separated string
            $ingredients = sanitizeInput($_POST['ingredients']);
            $instructions = sanitizeInput($_POST['instructions']);

            // Insert recipe data into the database with UserAdded set to true
            $insertQuery = "INSERT INTO Recipes (UserID, Image, RecipeName, Description, Flavor, Ingredients, Instructions, UserAdded) 
                VALUES ('$userID', '$baseUrl" . basename($_FILES["recipe-image"]["name"]) . "', '$recipeName', '$description', '$flavor', '$ingredients', '$instructions', true)";

            if (mysqli_query($handler, $insertQuery)) {
                $_SESSION['successMessage'] = "Recipe shared successfully!";
            } else {
                $_SESSION['errorMessage'] = "Error inserting recipe: " . mysqli_error($handler);
            }
        } else {
            $_SESSION['errorMessage'] = "Error: There was an error uploading your file. Error code: " . $_FILES["recipe-image"]["error"];
        }
    }

    // Redirect back to insertrecipe.php
    header("Location: insertrecipe.php");
    exit();
}

// Close the database connection
mysqli_close($handler);
?>
