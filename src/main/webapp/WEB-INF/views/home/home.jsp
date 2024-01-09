<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="../css/home.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
    </head>
    <body>
        <c:choose>
		<c:when test="${user.getAuthenticated()}">
			<c:redirect url="editprofile" />
		</c:when>
		<c:otherwise>
			<div class="body-container">
                <div class="login-container">
                    <div class="logintitle">Login</div>
                    <form action="login" method="post"><hr>
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
                <li><a href="/electricitybill">Electricity Bill</a></li>
                <li><a href="/recyclingbill">Recycling Bill</a></li>
                <li><a href="/waterbill">Water Bill</a></li>
                <li><a href="/electricity">Electricity form</a></li>
                <li><a href="/recycling">Recycling form</a></li>
                <li><a href="/water">Water form</a></li>
                <li><a href="/pertandinganadmin">Adminview pertandingan</a></li>
                <li><a href="/timeline">Timeline</a></li>
                <li><a href="/reportviewanalysis">Adminview report analysis</a></li>
                <li><a href="/reportcalculation">Adminview report calculation</a></li>
                <li><a href="/competitionUser">userview pertandingan</a></li>
                <li><a href="/certificate">certificate</a></li>
            </ul>
		</c:otherwise>
	</c:choose>
        
    </body>
</html>