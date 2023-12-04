<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results - DaFood</title>
    <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="guestsearchresult.css">
</head>

<body>

    <header>
        <h1>DaFood</h1>
    </header>

    <div class="back-icon" onclick="location.href='guesthome.php'">
        <img src="icon/back.png" alt="Back to Home">
    </div>

    <div class="content-container">
        <h2>Search Results</h2>

        <?php
        // Check if the search term is provided in the URL
        if (isset($_GET['search'])) {
            $servername = "127.0.0.1";
            $username = "root";
            $password = "";
            $database = "recipes";

            $handler = mysqli_connect($servername, $username, $password, $database);

            if (!$handler) {
                die("Connection failed: " . mysqli_connect_error());
            }

            // Retrieve and sanitize the search term
            $searchTerm = mysqli_real_escape_string($handler, $_GET['search']);

            // Build a WHERE clause for flavors
            $whereClause = '';

            // Check if flavors are selected
            if (isset($_GET['flavor']) && !empty($_GET['flavor'])) {
                $selectedFlavors = array_map(function($flavor) use ($handler) {
                    return mysqli_real_escape_string($handler, $flavor);
                }, $_GET['flavor']);
                
                $flavorConditions = [];
                
                foreach ($selectedFlavors as $flavor) {
                    $flavorConditions[] = "Flavor = '$flavor'";
                }
                
                $whereClause = " AND (" . implode(" OR ", $flavorConditions) . ")";
                
            }

            // Create the search query with ingredients and flavor conditions
            $searchQuery = "SELECT Recipes.RecipeID, RecipeName, Description, Flavor, Image
                            FROM Recipes
                            WHERE Ingredients LIKE '%$searchTerm%' $whereClause";

            // Add flavor conditions if flavors are selected
            if (!empty($whereClause)) {
                $searchQuery .= " AND Flavor IN ('" . implode("','", $selectedFlavors) . "')";
            }

            // Debugging statement
            // echo "Generated SQL: $searchQuery";

            // Execute the query
            $result = mysqli_query($handler, $searchQuery);

            if ($result && mysqli_num_rows($result) > 0) {
                // Display the search results using the modified recipe component
                while ($row = mysqli_fetch_assoc($result)) {
                    $recipeID = $row['RecipeID'];
                    $recipeName = $row['RecipeName'];
                    $recipeDescription = $row['Description'];
                    $flavor = $row['Flavor'];
                    $image = $row['Image'];

                    // Include the modified recipe component
                    include 'guestrecipecomponent.php';
                    displayRecipeComponent($recipeID, $recipeName, $recipeDescription, $flavor, $image);
                }
            } else {
                echo "No recipes found.";
            }

            // Close the database connection
            mysqli_close($handler);
        } else {
            // If no search term is provided, display a message
            echo "Please enter a search term.";
        }
        ?>


    </div>

</body>

</html>