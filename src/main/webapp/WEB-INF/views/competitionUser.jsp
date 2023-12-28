<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/competitionUser.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
        <title>Competition User</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="main-container">
            <jsp:include page="userSideBar.jsp" />
    
            <!-- Main Content Section -->
            <div class='main-content-container'>
                <!-- Your main content goes here -->
                <div class="title">
                    <h3 style="margin-left:0px;"><b>Pertandingan Kalendar Rendah Karbon Iskandar Puteri</b></h3>
                </div>

                <div class="overview-container">
                    <h4>Overview</h4>
                    <ul>
                        <li>Pertandingan ini bertujuan bagi memberikan galakan dan juga motivasi kepada penduduk Majlis Bandaraya Iskandar Puteri, MBIP untuk membudayakan gaya hidup rendah karbon. Melalui pertandingan pengurangan penggunaan air (m3), elektrik (kWh) dan juga jumlah kitar semula (kg), ianya dapat membantu dunia, khususnya MBIP dalam usaha mengurangkan penghasilan karbon.</li>
                        <li>Tempoh daftar maklumat di bit.ly/mbiprendahkarbon bermula :Sekarang sehingga 31 Ogos 2022</li>
                    </ul>
                </div>

                <div class="winner-container">
                    <div class="second-winner">
                        <img src="/asset/competitionUserIMG/2nd.png" alt="2nd winner" style="margin-bottom: 10px;">
                        <img src="/asset/headerIMG/userIcon.png" alt="1st winner">
                        <p>Winner 1's Username</p>
                    </div>
                    <div class="first-winner">
                        <img src="/asset/competitionUserIMG/1st.png" alt="1st winner" style="margin-bottom: 10px;">
                        <img src="/asset/headerIMG/userIcon.png" alt="1st winner">
                        <p>Winner 2's Username</p>
                    </div>
                    <div class="third-winner">
                        <img src="/asset/competitionUserIMG/3rd.png" alt="3rd winner" style="margin-bottom: 10px;">
                        <img src="/asset/headerIMG/userIcon.png" alt="1st winner">
                        <p>Winner 3's Username</p>
                    </div>
                </div>

                <div class="winner-details-container">
                    <table class="winner-details-table">
                        <thead>
                            <tr>
                                <th>Residents</th>
                                <th>Locations</th>
                                <th>Water Consumption</th>
                                <th>Electricity Consumption</th>
                                <th>Amount Recycling</th>
                                <th>Carbon Reduction Rate</th>
                            </tr>
                        </thead>
                        <!-- Add dynamic table rows and data here -->
                        <tbody>
                            <tr>
                                <td><img src="/asset/headerIMG/userIcon.png" alt="1st winner">John Doe</td>
                                <td>City A</td>
                                <td>100 gallons</td>
                                <td>200 kWh</td>
                                <td>5 tons</td>
                                <td>20%</td>
                            </tr>
                            <tr>
                                <td><img src="/asset/headerIMG/userIcon.png" alt="2nd winner">John Doe</td>
                                <td>City A</td>
                                <td>100 gallons</td>
                                <td>200 kWh</td>
                                <td>5 tons</td>
                                <td>20%</td>
                            </tr>
                            <tr>
                                <td><img src="/asset/headerIMG/userIcon.png" alt="3rd winner">John Doe</td>
                                <td>City A</td>
                                <td>100 gallons</td>
                                <td>200 kWh</td>
                                <td>5 tons</td>
                                <td>20%</td>
                            </tr>
                            <!-- Add more rows as needed -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    
    </body>
</html>