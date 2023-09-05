<%@ page import="org.hibernate.Session" %>
<%@ page import="org.movie.databaseconnection.FactoryProvider" %>
<%@ page import="org.movie.entity.Movie" %>


<html>
<head>
  <title></title>
</head>
<body>
<%
   String movieId = request.getParameter("move_id");
%>
<%
   Session session1 = FactoryProvider.getFactory();
   int movie_id_data = Integer.parseInt(movieId);
   Movie mov = session1.get(Movie.class , movie_id_data);
%>

<div class="movieName">
  <h1>Download <%= mov.getMovieName()%>:  (2023) Dual Audio [Hindi ORG-English] WEB-DL || 1080p [2.3GB] || 720p [1.1GB] || 480p [400MB] || ESubs</h1>
</div>
<p class="movieDecs">
  Download <%= mov.getMovieName()%>: (2023) Dual Audio [Hindi ORG-English] WEB-DL in 1080p, 720p, 480p. This is a Hollywood to Hindi Action | Adventure | Horror | Sci-Fi | Thriller based movie. This movie is released in 2023 in the Hindi language. Click on the Download button below to download this movie. This is the Latest Web – DL with Hindi audio.

</p>

<div>
  <img src="../images/<%= mov.getMoveImage()%>">
  <p>Download <%= mov.getMovieName()%>:  (2023) Dual Audio [Hindi ORG-English] WEB-DL || 1080p [2.3GB] || 720p [1.1GB] || 480p [400MB] || ESubs</p>
</div>
<div>
  <h3>Movie Info</h3>

  <p class="storyLine">Get ready for the ultimate adrenaline rush this summer in ‘this film’ a literally larger-than-life thrill ride that supersizes the 2018 blockbuster and takes the action to higher heights and even greater depths with multiple massive Megs and so much more. Dive into uncharted waters with Jason Statham and global action icon Wu Jing as they lead a daring research team on an exploratory dive into the deepest depths of the ocean.</p>
  <img src="../images/<%= mov.getMoveScreen1()%>">
  <img src="../images/<%= mov.getMoveScreen2()%>">
  <img src="../images/<%= mov.getMoveScreen3()%>">
</div>
<div class="download">

</div>
</body>
</html>
