package org.movie.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.movie.databaseconnection.FactoryProvider;
import org.movie.entity.Movie;

import javax.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

public class Operations {


    public static void Add(Movie movie){
        Session session = FactoryProvider.getFactory();
        Transaction tx = session.beginTransaction();
        session.save(movie);
        tx.commit();
        session.close();

    }

    public static List<Movie> fetch(){
        Session session = FactoryProvider.getFactory();
        Transaction tx = session.beginTransaction();
        Query query  = session.createQuery("from Movie");
        List<Movie> list = query.list();
        tx.commit();
        session.close();

        return list;
    }

    public static void imageUploader(Part image) {
        String fileName = image.getSubmittedFileName();
        String uploadPath = "C:/Users/tinke/IdeaProjects/MovieMM/src/main/webapp/images/" + fileName;

        try {
            InputStream is = image.getInputStream();
            FileOutputStream fos = new FileOutputStream(uploadPath);
            byte[] data = new byte[1024]; // You can use a buffer to read/write the data

            int bytesRead;
            while ((bytesRead = is.read(data)) != -1) {
                fos.write(data, 0, bytesRead);
            }

            fos.close();
            is.close();
        } catch (Exception e) {
            e.printStackTrace(); // Print the exception details for debugging
        }
    }


}
