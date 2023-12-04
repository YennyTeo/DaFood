<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home - DaFood</title>
  <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="guesthome.css"> 
</head>

<body>

  <header>
    <h1>DaFood</h1>
  </header>

  <div class="content-container">
    <h2>Welcome, Guest</h2>
    <br>
    <div class="content-text">Please input your ingredients</div>
      <form action="guestsearchresult.php" method="GET" class="ingredient-input">
          <input style="width: 500px; border-radius: 15px;" type="text" name="search" placeholder="Enter your ingredients" />
          <div class="flavor-options">
              <label><input type="checkbox" name="flavor[]" value="sweet">Sweet</label>
              <label><input type="checkbox" name="flavor[]" value="sour">Sour</label>
              <label><input type="checkbox" name="flavor[]" value="spicy">Spicy</label>
              <label><input type="checkbox" name="flavor[]" value="savory">Savory</label>
          </div>
          <button type="submit" class="search-button">Search</button>
      </form>
  </div>


</body>

</html>
