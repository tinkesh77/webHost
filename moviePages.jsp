<%@ page import="org.movie.databaseconnection.FactoryProvider" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.movie.entity.Movie" %>
<!DOCTYPE html>
<html class="text-white-50" data-bs-theme="light" lang="en" style="color: #eb1010;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>moviePage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<%
  String movie_id = request.getParameter("movie_id");

    Session session1 = FactoryProvider.getFactory();
    int id = Integer.parseInt(movie_id);
    Movie mov = session1.get(Movie.class , id);

%>

<body class="text-danger" style="color: var(--bs-success-border-subtle);">


<jsp:include page="BasciFiles/NavBar.jsp"/>

<div style="background: #aba1d9;" class="mt-3">
    <div class="container" style="background: #ffff; border-style: ridge;">
        <h1><span style="color: rgb(44, 62, 80);">&nbsp; &nbsp;<%= mov.getMovieName()%>&nbsp; &nbsp; &nbsp;Full Movie</span></h1>
        <div class="container"><img src="images/<%= mov.getMoveImage()%>" style="width: 360px;height: 400px;text-align: left;margin-right: -188px;" width="400" height="500"></div>
        <div class="container">
            <h1><br><span style="color: rgb(44, 62, 80);"><%= mov.getMovieName()%> Full Movie</span><br><br></h1>
            <p><br><span style="color: rgb(101, 101, 101); background-color: initial;">Download&nbsp;</span><strong><span style="color: rgb(101, 101, 101); background-color: initial;"><%= mov.getMovieName()%></span></strong><span style="color: rgb(101, 101, 101); background-color: initial;">&nbsp;English Audio in 480p, 720p &amp; 1080p. This is a Hollywood movie and is available in&nbsp;</span><strong><span style="color: rgb(101, 101, 101); background-color: initial;">720p, 480p &amp; 1080p</span></strong><span style="color: rgb(101, 101, 101); background-color: initial;">&nbsp;qualities. This is one of the best movies based on&nbsp;</span><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Action, Adventure, Horror, Sci-Fi, and Thriller.</span></strong><span style="color: rgb(101, 101, 101); background-color: initial;">&nbsp;This Movie is Not available in Hindi or Dual Audio. This is Web-DL Print with DD5.1 English Audio &amp; Esubs. English Subtitles Added with English Track/Audio. Click on the Download links below to proceed.</span><br><br></p>
            <ul>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Full Name:&nbsp;</span></strong><span style="color: rgb(101, 101, 101);"><%= mov.getMovieName()%></span></li>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Released:&nbsp;</span></strong><span style="color: rgb(101, 101, 101);">2023</span></li>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Duration:&nbsp;</span></strong><span style="color: rgb(101, 101, 101);">1 Hr 55 Min</span></li>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Quality:</span></strong><span style="color: rgb(101, 101, 101);">&nbsp;480p &amp; 720p &amp; 1080p –</span><strong><span style="color: rgb(101, 101, 101); background-color: initial;">&nbsp;Web-DL</span></strong></li>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Size:</span></strong><span style="color: rgb(101, 101, 101);">&nbsp;350MB, 950MB &amp;&nbsp; 2.2GB</span></li>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Subtitles:</span></strong><span style="color: rgb(101, 101, 101);">&nbsp;Yes (</span><strong><span style="color: rgb(101, 101, 101); background-color: initial;">English</span></strong><span style="color: rgb(101, 101, 101);">)</span></li>
                <li><strong><span style="color: rgb(101, 101, 101); background-color: initial;">Language:</span></strong><span style="color: rgb(101, 101, 101);">&nbsp;English</span></li>
            </ul>
        </div>
    </div>
</div>
<div style="margin-top: 40px">
    <jsp:include page="BasciFiles/Footer.jsp"/>
</div>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>