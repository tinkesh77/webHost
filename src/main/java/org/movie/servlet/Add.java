package org.movie.servlet;

import org.movie.dao.Operations;
import org.movie.entity.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@MultipartConfig
public class Add extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String movieName = req.getParameter("movieName");
        Part movieImage = req.getPart("movieImage");
        String movieDecs = req.getParameter("MovieDecs");
        String movieTages = req.getParameter("movieTags");
        String movieLink = req.getParameter("movieLink");
        String movieStory = req.getParameter("storyLine");
        Part screen1 = req.getPart("screenshot1");
        Part screen2 = req.getPart("screenshot2");
        Part screen3 = req.getPart("screenshot3");
        Operations.imageUploader(movieImage);
        Operations.imageUploader(screen1);
        Operations.imageUploader(screen2);
        Operations.imageUploader(screen3);


        Movie movie = new Movie();
    //    movie.setMovieId(0);
        movie.setMovieName(movieName);
        movie.setMoveImage(movieImage.getSubmittedFileName());
        movie.setMovieDecs(movieDecs);
        movie.setMovieTags(movieTages);
        movie.setMoveLink(movieLink);
        movie.setStoryLine(movieStory);
        movie.setMoveScreen1(screen1.getSubmittedFileName());
        movie.setMoveScreen2(screen2.getSubmittedFileName());
        movie.setMoveScreen3(screen3.getSubmittedFileName());


         Operations.Add(movie);

    }
}
