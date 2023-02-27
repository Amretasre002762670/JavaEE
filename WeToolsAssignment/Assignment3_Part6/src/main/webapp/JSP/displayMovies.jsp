<%-- 
    Document   : displayMovies.jsp
    Created on : Feb 17, 2023, 9:05:46 PM
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
        <title>Display Movies</title>
        <style>
            body {
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
            .link {
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Search Result</h1>

        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                           url="jdbc:mysql://localhost:3306/Movies_DB"  
                           user="root"  password="amre1999"/> 


        <%--<c:set var="search_key" value="${requestScope.key}"/>--%> 
        <%--<c:if test="${search_key == 'title'}">--%>  
        <sql:query dataSource="${db}" var="rs">  
            SELECT * from movies_info where ${requestScope.key}= '${requestScope.word}';  
        </sql:query> 

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
        <div class="link">
            <a href="/Assignment3_Part6/movieController"> <-- Go Back To Main Page </a>
        </div>
        <%--</c:if>--%>

    </body>
</html>
