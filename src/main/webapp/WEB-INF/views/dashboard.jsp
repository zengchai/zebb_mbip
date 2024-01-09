<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/css/editprofile.css">
        <link rel="stylesheet" href="/css/general.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="/css/dashboard.css">

        <title>Home</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="main-container">
            <jsp:include page="userSideBar.jsp" />
    
            <!-- Main Content Section -->
            <div class='main-content-container'>
                <div class="body-container">

                    <div class="main-title">
                        Dashboard
                    </div>
                    <div class= "graphBox">
                        <div class="box" style="height: 350px; width: 350px" >
                            <canvas id="doughnutChart"></canvas>
                        </div>
                    </div>
                    
                </div>
        </div>
    </div>
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="/js/DashboardChart/doughnutChart.js"></script>
    <script src="/js/DashboardChart/lineChart.js"></script>
    </html>
