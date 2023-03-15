<%-- 
    Document   : AddMovies
    Created on : Mar 6, 2023, 10:56:33 PM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Movies</title>
    </head>
    <style>
        body {
            text-align: center;
        }
        .container {
            display: flex;
            justify-content: center;
            padding: 20px;
        }
        .button_container {
            padding: 10px;
        }
    </style>
    <body>
        <h1>Enter the Details to add to DB</h1>
        <form action="addmovie.htm">
            <div class="container">
                <table>
                    <tr class="row">
                        <th>Key</th>
                        <th>Value</th>
                    </tr>
                    <tr class="row">
                        <td>
                            Enter Movie Name:
                        </td>
                        <td>
                            <input type="text" name="title" />
                        </td>
                    </tr>
                    <tr class="row">
                        <td>
                            Enter Movie Actor:
                        </td>
                        <td>
                            <input type="text" name="actor" />
                        </td>
                    </tr>
                    <tr class="row">
                        <td>
                            Enter Movie Actress:
                        </td>
                        <td>
                            <input type="text" name="actress" />
                        </td>
                    </tr>
                    <tr class="row">
                        <td>
                            Enter Movie Genre:
                        </td>
                        <td>
                            <input type="text" name="genre" />
                        </td>
                    </tr>
                    <tr class="row">
                        <td>
                            Enter Movie Release Year:
                        </td>
                        <td>
                            <input type="text" name="year" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="button_container"> 
                <input type="submit" value="Add Movies" />
                <!--<input type="hidden" name="index" value="formSubmit" />-->
            </div>
            
        </form>
    </body>
</html>

