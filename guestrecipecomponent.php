<?php
if (!function_exists('displayRecipeComponent')) {
    function displayRecipeComponent($recipeID, $recipeName, $recipeDescription, $flavor, $imageURL)
    {
        echo "<div class='recipe-component'>";
        echo "<div class='recipe-image'>";
        echo "<img src='$imageURL' alt='$recipeName'>";
        echo "</div>";
        echo "<div class='recipe-info'>";
        echo "<h3><a href='guestrecipedetail.php?recipeID=$recipeID'>$recipeName</a></h3>";
        echo "<p class='flavor'>Flavor: $flavor</p>";
        echo "<p class='description'>$recipeDescription</p>";
        echo "</div>";
        echo "</div>";
    }
}
?>