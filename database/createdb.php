<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "recipes";

$handler = mysqli_connect($servername, $username, $password);

if (!$handler) {
    die("Connection failed: " . mysqli_connect_error());
} else {
    echo "Connected successfully";
}

// Create the main database for the recipe system
if (mysqli_query($handler, "CREATE DATABASE IF NOT EXISTS $database")) {
    echo "Database $database created successfully";
} else {
    echo "Error creating database: " . mysqli_error($handler);
}

// Select the created database
mysqli_select_db($handler, $database);

// Create the Recipes table
$createRecipesTable = "
CREATE TABLE IF NOT EXISTS Recipes (
    RecipeID INT AUTO_INCREMENT PRIMARY KEY,
    RecipeName VARCHAR(255) NOT NULL UNIQUE,
    Image TEXT,
    Description TEXT,
    Ingredients TEXT,
    Instructions TEXT,
    Flavor VARCHAR(50) NOT NULL,
    UserAdded BOOLEAN DEFAULT TRUE,
    UserID INT
)";
if (mysqli_query($handler, $createRecipesTable)) {
    echo "Table Recipes created successfully";
} else {
    echo "Error creating table: " . mysqli_error($handler);
}

// Create the Users table
$createUsersTable = "
CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
)";
if (mysqli_query($handler, $createUsersTable)) {
    echo "Table Users created successfully";
} else {
    echo "Error creating table: " . mysqli_error($handler);
}

// Create the Ratings table
$createRatingsTable = "
CREATE TABLE IF NOT EXISTS Ratings (
    RatingID INT AUTO_INCREMENT PRIMARY KEY,
    RecipeID INT,
    UserID INT,
    Rating INT,
    Comment TEXT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)

)";
if (mysqli_query($handler, $createRatingsTable)) {
    echo "Table Ratings created successfully";
} else {
    echo "Error creating table: " . mysqli_error($handler);
}

// Create the SavedRecipe table
$createUserFavoritesTable = "
CREATE TABLE IF NOT EXISTS UserFavorites (
    UserID INT,
    RecipeID INT,
    DateSaved TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (UserID, RecipeID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID)
)";
if (mysqli_query($handler, $createUserFavoritesTable)) {
    echo "Table UserFavorites created successfully";
} else {
    echo "Error creating table: " . mysqli_error($handler);
}

// // Create the Categories table
// $createCategoriesTable = "
// CREATE TABLE IF NOT EXISTS Categories (
//     CategoryID INT AUTO_INCREMENT PRIMARY KEY,
//     CategoryName VARCHAR(255) NOT NULL
// )";
// if (mysqli_query($handler, $createCategoriesTable)) {
//     echo "Table Categories created successfully";
// } else {
//     echo "Error creating table: " . mysqli_error($handler);
// }

// // Create the RecipeCategories table
// $createRecipeCategoriesTable = "
// CREATE TABLE IF NOT EXISTS RecipeCategories (
//     RecipeID INT,
//     CategoryID INT,
//     PRIMARY KEY (RecipeID, CategoryID),
//     FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID),
//     FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
// )";
// if (mysqli_query($handler, $createRecipeCategoriesTable)) {
//     echo "Table RecipeCategories created successfully";
// } else {
//     echo "Error creating table: " . mysqli_error($handler);
// }

// // Create the UserIngredients table
// $createUserIngredientsTable = "
// CREATE TABLE IF NOT EXISTS UserIngredients (
//     UserID INT,
//     IngredientName VARCHAR(255) NOT NULL,
//     RecipeID INT,
//     PRIMARY KEY (UserID, IngredientName),
//     FOREIGN KEY (UserID) REFERENCES Users(UserID),
//     FOREIGN KEY (RecipeID) REFERENCES Recipes(RecipeID)
// )";
// if (mysqli_query($handler, $createUserIngredientsTable)) {
//     echo "Table UserIngredients created successfully";
// } else {
//     echo "Error creating table: " . mysqli_error($handler);
// }

mysqli_close($handler);
?>
