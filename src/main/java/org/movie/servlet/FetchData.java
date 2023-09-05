package org.movie.servlet;

import org.movie.dao.Operations;
import org.movie.entity.Movie;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class FetchData extends HttpServlet {
         protected void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
             List<Movie> list = Operations.fetch();
             HttpSession session = request.getSession();
             session.setAttribute("data" , list);
             RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
             rd.forward(request , response);
         }
}
