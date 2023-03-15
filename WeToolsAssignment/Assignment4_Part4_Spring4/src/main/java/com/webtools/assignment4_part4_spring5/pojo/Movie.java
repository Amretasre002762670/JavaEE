/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.webtools.assignment4_part4_spring5.pojo;

/**
 *
 * @author amretasrerengarajan
 */
public class Movie {
    private String MovieTitle;
    private String MovieActor;
    private String MovieActress;
    private String MovieGenre;
    private int ReleaseYear;

    public String getMovieTitle() {
        return MovieTitle;
    }

    public void setMovieTitle(String MovieTitle) {
        this.MovieTitle = MovieTitle;
    }

    public String getMovieActor() {
        return MovieActor;
    }

    public void setMovieActor(String MovieActor) {
        this.MovieActor = MovieActor;
    }

    public String getMovieActress() {
        return MovieActress;
    }

    public void setMovieActress(String MovieActress) {
        this.MovieActress = MovieActress;
    }

    public String getMovieGenre() {
        return MovieGenre;
    }

    public void setMovieGenre(String MovieGenre) {
        this.MovieGenre = MovieGenre;
    }

    public int getReleaseYear() {
        return ReleaseYear;
    }

    public void setReleaseYear(int ReleaseYear) {
        this.ReleaseYear = ReleaseYear;
    }
}
