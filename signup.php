<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <link rel="icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="shortcut icon" href="icon/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="signup.css">
  <script>
    function submitForm() {
      const usernameInput = document.getElementById('username').value;
      const emailInput = document.getElementById('email').value;
      const passwordInput = document.getElementById('password').value;
      const confirmPasswordInput = document.getElementById('confirmPassword').value;
  
      // Simple validation: Check if any of the required fields is empty
      if (!usernameInput || !emailInput || !passwordInput || !confirmPasswordInput) {
        alert('Please fill in all fields.');
        return;
      }

      // Validate the form data if needed
  
      // Create a FormData object to send the data to the server
      const formData = new FormData();
      formData.append('username', usernameInput);
      formData.append('email', emailInput);
      formData.append('password', passwordInput);
      formData.append('confirmPassword', confirmPasswordInput);
  
      // Send the form data to the server using a simple POST request
      fetch('http://localhost/fyp/database/storeuser.php', {
        method: 'POST',
        body: formData
      })
      .then(response => response.json())
      .then(data => {
        // Handle the response from the server
        console.log(data);
  
        if (data.status === 'success') {
          // Redirect to signin.php for successful signup
          window.location.href = 'signin.php';
        } else {
          // Handle other scenarios (e.g., display an error message)
          console.error('Error:', data.message);
        }
      })
      .catch(error => {
        // Handle errors (e.g., display an error message)
        console.error('Error:', error);
      });
    }
  </script>
</head>

<body>

  <header>
    <h1>DaFood</h1>
  </header>

  <div class="signup-container">
    <div class="signup-text">Create your account</div>

    <!-- Sign Up Form -->
    <form id="signup-form" onsubmit="submitForm(); return false;">
      <!-- Username Input -->
      <input type="text" id="username" name="username" placeholder="Enter your username" class="signup-input" />

      <!-- Email Input -->
      <input type="email" id="email" name="email" placeholder="Enter your email" class="signup-input" />

      <!-- Password Input -->
      <input type="text" id="password" name="password" placeholder="Enter your password" class="signup-input" />

      <!-- Confirm Password Input -->
      <input type="text" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" class="signup-input" />
      <br>
      <!-- Submit Button -->
      <button type="submit" class="signup-button">Sign Up</button>
    </form>

    <!-- Already have an account? Sign In Here -->
    <div class="signin-link">
      <span>Already have an account?</span>
      <a href="signin.php">Sign In Here</a>
    </div>
  </div>

</body>

</html>

