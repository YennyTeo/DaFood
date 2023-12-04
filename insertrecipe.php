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
    <link rel="stylesheet" href="insertrecipe.css">
    <script>
        <?php
        if (isset($_SESSION['successMessage'])) {
            echo "var successMessage = '{$_SESSION['successMessage']}';";
            unset($_SESSION['successMessage']); // Clear the success message after displaying it
        } else {
            echo "var successMessage = '';";
        }

        if (isset($_SESSION['errorMessage'])) {
            echo "var errorMessage = '{$_SESSION['errorMessage']}';";
            unset($_SESSION['errorMessage']); // Clear the error message after displaying it
        } else {
            echo "var errorMessage = '';";
        }
        ?>
        if (successMessage !== '') {
            alert(successMessage);
            window.location.href = 'myrecipe.php'; // Redirect after OK is clicked
        } else if (errorMessage !== '') {
            alert(errorMessage);
        }
    </script>
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

    <div class="back-icon" onclick="location.href='myrecipe.php'">
        <img src="icon/back.png" alt="Back to Home">
    </div>

    <div class="content-container">
        <!-- Insert Recipe Content -->
        <div class="insert-recipe-content">
            <h2>Insert New Recipe</h2>

            <!-- Form for inserting recipe details -->
            <form id="insert-recipe-form" method="post" action="processrecipe.php" enctype="multipart/form-data">
                <!-- Recipe Image -->
                <label for="recipe-image">Recipe Image:</label>
                <input type="file" id="recipe-image" name="recipe-image" accept="image/*">

                <!-- Recipe Name -->
                <label for="recipe-name">Recipe Name:</label>
                <input type="text" id="recipe-name" name="recipe-name" required>

                <!-- Description -->
                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" required></textarea>

                <!-- Flavor -->
                <div class="flavor-options">
                    <label>Flavor:</label>
                    <label><input type="checkbox" name="flavor[]" value="sweet"> Sweet</label>
                    <label><input type="checkbox" name="flavor[]" value="sour"> Sour</label>
                    <label><input type="checkbox" name="flavor[]" value="spicy"> Spicy</label>
                    <label><input type="checkbox" name="flavor[]" value="savory"> Savory</label>
                </div>

                <!-- Ingredients -->
                <label for="ingredients">Ingredients:</label>
                <textarea id="ingredients" name="ingredients" rows="50" required></textarea>

                <!-- Instructions -->
                <label for="instructions">Instructions:</label>
                <textarea id="instructions" name="instructions" rows="50" required></textarea>

                <!-- Share Button -->
                <button type="submit" name="submit">Share Recipe</button>
            </form>
        </div>
    </div>

</body>

</html>
