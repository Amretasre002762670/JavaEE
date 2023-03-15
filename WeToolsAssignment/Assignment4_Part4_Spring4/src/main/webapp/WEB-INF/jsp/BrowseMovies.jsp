<%-- 
    Document   : BrowseMovies
    Created on : Mar 7, 2023, 1:42:16 AM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Browse Movies</title>
        <style>
            body {
                text-align: center;
            }
            h3 {
                text-align: center;
            }
            .col-2 {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;

            }
            .movie_table{
                padding: 20px;
            }
            .back_link {
                padding: 10px;
            }
            a {
                font-size: 20px;
            }
            .search {
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>List of Movies</h1>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost:3306/Movies_DB"  
                           user="root"  password="amre1999"/> 

        <sql:query dataSource="${db}" var="rs">  
            SELECT * from movies_info;  
        </sql:query> 

        <div class="container">
<!--            <div class="col-1">
                <form action="browseMoviesController" method="post">
                    <div class="search">
                        <label> Search: </label>
                        <input type="text" name="searchWord" />
                    </div>
                    <div class="search">
                        <label> Choose search method: </label>
                        <select name="searchKey">
                            <option value="title">Movie Title</option>
                            <option value="actor">Movie Actor Name</option>
                            <option value="actress">Movie Actress Name</option>
                            <option value="year">Movie Release Year</option>
                            <option value="genre">Movie Genre</option>
                        </select>
                    </div>
                    <div class="search">
                        <input type="submit" value="Search" />
                        <input type="hidden" name="index" value="formSubmit" />
                    </div>
                </form>

            </div>-->
            <h3>All Movies in DB</h3>
            <div class="col-2">
                <c:forEach var="table" items="${rs.rows}">  
                    <div class="movie_table">
                        <table border="1px solid black">
                            <tr>  
                                <td> Movie Title: </td>
                                <td><c:out value="${table.title}"/></td>  
                            </tr>
                            <tr>  
                                <td> Movie Actor: </td>
                                <td><c:out value="${table.actor}"/></td>  
                            </tr>
                            <tr>  
                                <td> Movie Actress: </td>
                                <td><c:out value="${table.actress}"/></td>  
                            </tr>
                            <tr>  
                                <td> Movie Genre: </td>
                                <td><c:out value="${table.genre}"/></td>  
                            </tr>
                            <tr>  
                                <td> Movie Release Year: </td>
                                <td><c:out value="${table.year}"/></td>  
                            </tr>
                        </table>
                    </div>

                </c:forEach>
            </div>
            <div class="col-3"></div>
        </div>
            <div class="button_container"> 
             <a href="/Assignment4_Part4_Spring5/option.htm"> <-- Back to Home page </a>
            </div>
    </body>
</html>
