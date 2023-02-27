<%-- 
    Document   : success
    Created on : Feb 17, 2023, 2:49:48 AM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.webtools.assignment3_part6.Movies"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
        <style>
            body {
                text-align: center;
            }
            .container {
                display: flex;
                justify-content: center;
                padding: 20px;
            }
            
        </style>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost:3306/Movies_DB"  
                           user="root"  password="amre1999"/> 
        <sql:update dataSource="${db}" var="count">  
            INSERT INTO movies_info VALUES ("${requestScope.Movie.getMovieTitle()}", "${requestScope.Movie.getMovieActor()}", "${requestScope.Movie.getMovieActress()}", "${requestScope.Movie.getMovieGenre()}", "${requestScope.Movie.getReleaseYear()}");  
        </sql:update>

        <h1>Successfully added below Movie Details to database</h1>
        <div class="container">
            <table>
                <tr>
                    <td>Movie Title:</td>
                    <td><c:out value="${requestScope.Movie.getMovieTitle()}" /></td>
                </tr>
                <tr>
                    <td>Movie Actor:</td>
                    <td><c:out value="${requestScope.Movie.getMovieActor()}" /></td>
                </tr>
                <tr>
                    <td>Movie Actress:</td>
                    <td><c:out value="${requestScope.Movie.getMovieActress()}" /></td>
                </tr>
                <tr>
                    <td>Movie Genre:</td>
                    <td><c:out value="${requestScope.Movie.getMovieGenre()}" /></td>
                </tr>
                <tr>
                    <td>Movie Release Year:</td>
                    <td><c:out value="${requestScope.Movie.getReleaseYear()}" /></td>
                </tr>
            </table>
        </div> 
        <div>
            <a href="/Assignment3_Part6/movieController"> <-- Go Back To Main Page </a>
        </div>
    </body>
</html>
