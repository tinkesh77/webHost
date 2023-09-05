package org.movie.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Movie {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int movieId;
    private String movieName;
    private String moveImage;
    private String movieDecs;
    private String movieTags;
    private String moveLink;
    private String storyLine;
    private String moveScreen1;
    private String moveScreen2;
    private String moveScreen3;

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getMoveImage() {
        return moveImage;
    }

    public void setMoveImage(String moveImage) {
        this.moveImage = moveImage;
    }

    public String getMovieDecs() {
        return movieDecs;
    }

    public void setMovieDecs(String movieDecs) {
        this.movieDecs = movieDecs;
    }

    public String getMovieTags() {
        return movieTags;
    }

    public void setMovieTags(String movieTags) {
        this.movieTags = movieTags;
    }

    public String getMoveLink() {
        return moveLink;
    }

    public void setMoveLink(String moveLink) {
        this.moveLink = moveLink;
    }

    public String getStoryLine() {
        return storyLine;
    }

    public void setStoryLine(String storyLine) {
        this.storyLine = storyLine;
    }

    public String getMoveScreen1() {
        return moveScreen1;
    }

    public void setMoveScreen1(String moveScreen1) {
        this.moveScreen1 = moveScreen1;
    }

    public String getMoveScreen2() {
        return moveScreen2;
    }

    public void setMoveScreen2(String moveScreen2) {
        this.moveScreen2 = moveScreen2;
    }

    public String getMoveScreen3() {
        return moveScreen3;
    }

    public void setMoveScreen3(String moveScreen3) {
        this.moveScreen3 = moveScreen3;
    }
}
