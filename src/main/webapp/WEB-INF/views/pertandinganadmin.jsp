<%@ page import="java.util.ArrayList" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pertandingan Admin Page</title>
        <link rel="stylesheet" type="text/css" href="/css/pertandinganadmin.css">
        <style> 
        </style>
    </head>
    <% ArrayList<String> resident= new ArrayList<String>();
        resident.add("Tia");
        resident.add("Suhaib");
        resident.add("Yong");%>
    <% ArrayList<String> location= new ArrayList<String>();
        location.add("Taman Jelita");
        location.add("Taman U");
        location.add("Taman Wang");%>
    <% ArrayList<Double> water= new ArrayList<Double>();
        water.add(121.0);
        water.add(225.5);
        water.add(203.5);%>
    <% ArrayList<Double> electric= new ArrayList<Double>();
        electric.add(121.0);
        electric.add(432.0);
        electric.add(213.2);%>
    <% ArrayList<Double> recycle= new ArrayList<Double>();
        recycle.add(5401.0);
        recycle.add(21.0);
        recycle.add(68.0);%>
    <% ArrayList<Double> carbonReductionRate= new ArrayList<Double>();
        carbonReductionRate.add(79.0);
        carbonReductionRate.add(19.0);
        carbonReductionRate.add(23.0);%>
    <body>
        <jsp:include page="header.jsp"/>
            <div class="main-container">
                <jsp:include page="userSideBar.jsp"/>
                
                <div class="container">
                <div class="title">
                    <h2><U>Pertandingan Kalender Rendah Karbon Iskandar Puteri</U></h2>
                </div>
                    <div class="subhead>">
                        <h4><p>Select top winners  for Pertandingan Kalendar Rendah Karbon Iskandar Puteri</p></h4>
                    </div>
                  
                        <div class="content-box">
                            <h3>Overview</h3>
                            <hr>
                            <ui>
                                <p><li>Pertandingan ini bertujuan untuk bagi memberikan galakan dan juga motivasi kepada penduduk Majlis Bandaraya Iskandar Puteri, MBIP untuk membudayakan gaya hidup rendah karbon. Melalui pertandingan pengurangan penggunaan air (m3), elektrik (kWh) dan juga jumlah kitar semula (kg), ianya dapat membantu dunia, khususnya MBIP dalam usaha mengurangkan penghasilan karbon.</li>
                                <li>Tempoh daftar maklumat di bit.ly/mbiprendahkarbon bermula dari sekarang sehingga 31 Jan 2024</li></p>
                            </ui>
                        </div>
                        <div class="search-bar" style="display: flex; align-items: center; margin-top: 1rem;">
                            <img style="margin-right: 0.5rem;" src="/asset/filter.png" alt="filterimg">
                            <input style="border-radius: 0.4rem;" type="text" placeholder="Search...">
                        </div>
                        
                    <div class="infotable">
  
                    
                        <table>
                            <tr>
                              <th>Residents</th>
                              <th>Location</th>
                              <th>Water consumption</th>
                              <th>Electricity consumption</th>
                              <th>Amount recycling</th>
                              <th>Carbon Reduction Rate</th>
    
                            </tr>
                            <tr >

                                <td><%= resident.get(0) %></td>
                                <td><%= location.get(0) %></td>
                                <td><%= water.get(0) %></td>
                                <td><%= electric.get(0) %></td>
                                <td><%= recycle.get(0) %></td>
                                <td><%= carbonReductionRate.get(0) %></td>

                              </tr>
                            <tr >

                              <td><%= resident.get(1) %></td>
                              <td><%= location.get(1) %></td>
                              <td><%= water.get(1) %></td>
                              <td><%= electric.get(1) %></td>
                              <td><%= recycle.get(1) %></td>
                              <td><%= carbonReductionRate.get(1) %></td>

                            </tr>
                            <tr >

                                <td><%= resident.get(2) %></td>
                                <td><%= location.get(2) %></td>
                                <td><%= water.get(2) %></td>
                                <td><%= electric.get(2) %></td>
                                <td><%= recycle.get(2) %></td>
                                <td><%= carbonReductionRate.get(2) %></td>
                              </tr>
                          </table>
                        </div>
                        <div><button onclick="navigateToPage()">Select Winner</button></div>
    
                    </div>

                </div>
            </div>
    
            <script>
                function navigateToPage() {
                    var name = '<%= request.getParameter("name") %>';
            window.location.href = 'http://localhost:8080/pertandinganadmin2?name=' + name;
                }
            </script>
        </body>
</html>