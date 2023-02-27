<%-- 
    Document   : index
    Created on : Feb 17, 2023, 2:12:24 AM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Option</title>
        <style>
            body {
                text-align: center;
                margin: 100px;
            }
            span {
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Select One Option!</h1>
        <div>
            <form action="movieController" method="post">
                <div>
                    <span>
                        <select name="selection">
                            <option value="browse">Browse Movies from the List</option>
                            <option value="add">Add Movies to the List</option>
                        </select>
                    </span>
                    <span>
                        <input type="submit" value="select" />
                    </span>
                    <span>
                        <input type="hidden" name="index" value="formSubmission" />
                    </span>
                </div>
            </form>
        </div>
    </body>
</html>
