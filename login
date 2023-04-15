<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="Projectstyle.css" />
  <title>Login</title>
</head>

<body class="Login-body">
  <div class="hold">
    <div class="banner">
      <header>𝐏𝐨𝐤é𝐝𝐞𝐱 𝕯𝖊𝖓</header>
    </div>
    <div class="home_link">
      <nav>
        <a href="index.html">Home</a>
      </nav>
    </div>
  </div>

  <div class="container">
    <div class="content">
      <div class="text">
        <h2>Welcome <span>to 𝐏𝐨𝐤é𝐝𝐞𝐱 𝕯𝖊𝖓 -</span></h2>
        <p>
          The ultimate online haven for aspiring Pokemon trainers! Join our thriving community
          for exclusive gaming news, reviews, forums, and more. Level up your
          Pokemon knowledge with us!
        </p>
        <h1>𝔊𝔬𝔱𝔱𝔞 ℭ𝔞𝔱𝔠𝔥 ’𝔈𝔪 𝔄𝔩𝔩!</h1>
      </div>
      <div class="social-icons">
        <a href="#"><i class="bx bxl-steam"></i></a>
        <a href="#"><i class="bx bxl-twitch"></i></a>
        <a href="#"><i class="bx bxl-discord-alt"></i></a>
        <a href="#"><i class="bx bxl-unity"></i></a>
      </div>
    </div>
    <div class="logform">
      <div class="form-box login">
        <form action="#">
          <h2>Sign in</h2>
          <div class="input-box">
            <span class="icon"><i class="bx bxs-envelope"></i></span>
            <input id="email" type="email" required />
            <label for="Email">Email</label>
          </div>
          <div class="input-box">
            <span class="icon"><i class="bx bxs-lock-alt"></i></span>
            <input id="password" type="password" required />
            <label for="Password">Password</label>
          </div>
          <div class="rember-forgot">
            <label for="check"><input type="checkbox" />Remember me</label>
            <a href="#">Forgot password</a>
          </div>

          <button type="submit" class="btn" onclick="getInfo()">Sign in</button>

          <div class="log-register">
            <p>
              Don't have an account?
              <a href="#" class="register-link">Sign up</a>
            </p>
          </div>
        </form>
      </div>
      <div class="form-box register">
        <form action="#">
          <h2>Sign up</h2>
          <div class="input-box">
            <span class="icon"><i class='bx bxs-user'></i></i></span>
            <input id="newName" type="text" required />
            <label for="Name">Name</label>
          </div>
          <div class="input-box">
            <span class="icon"><i class="bx bxs-envelope"></i></span>
            <input id='newEmail' type="email" required />
            <label for="Email">Email</label>
          </div>
          <div class="input-box">
            <span class="icon"><i class="bx bxs-lock-alt"></i></span>
            <input id="newPassword" type="password" required />
            <label for="Password">Password</label>
          </div>
          <div class="rember-forgot">
            <label for="check"><input type="checkbox" />I Agree to the Terms & Conditions.</label>

          </div>

          <button type="submit" class="btn" onclick="registerUser()">Sign up</button>

          <div class="log-register">
            <p>
              Already have an account?
              <a href="#" class="login-link">Sign in</a>
            </p>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script src="logscript.js"></script>
</body>

</html>
