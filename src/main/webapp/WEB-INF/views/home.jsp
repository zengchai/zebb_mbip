<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/css/home.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
    </head>
    <body>
        <div class="body-container">
            <div class="login-container">
                <div class="logintitle">Login</div>
                <form action="#" method="post"><hr>
                    <div class="input-container">
                    
                  <input type="text" id="username" name="username" placeholder="Username">
                  <input type="password" id="password" name="password" placeholder="Password">
                  <div class="forgotpassword">
                    <a>Forget password?</a>
                  </div>
                  <button id="loginbutton" type="submit">Login</button>
                  <a href="register" id="registerbut">Register</a>
                </div>
                </form>
              </div>
        </div>
        Hello <p>${name}</p>. Welcome to the system!

        <!-- Href links -->
        <ul>
            <li><a href="ElectricityConsumption.jsp">Electricity Consumption</a></li>
            <li><a href="RecyclingActivity.jsp">Recycling Activity</a></li>
            <li><a href="WaterConsumption.jsp">Water Consumption</a></li>
        </ul>
    </body>
</html>