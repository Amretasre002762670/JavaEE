<%-- 
    Document   : addMovies
    Created on : Feb 17, 2023, 2:25:39 AM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Movies</title>
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
            .link {
                padding: 10px;
            }
            a {
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Add Movies to the Database</h1>

        <form action="addMoviesController" method="post">
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
                <input type="hidden" name="index" value="formSubmit" />
            </div>
            <div class="link">
                <a href="/Assignment3_Part6/movieController"> <-- Go Back To Main Page </a>
            </div>
        </form>

    </body>
</html>
