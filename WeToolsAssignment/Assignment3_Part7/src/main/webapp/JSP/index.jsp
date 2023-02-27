<%-- 
    Document   : index
    Created on : Feb 17, 2023, 9:58:24 PM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        <h1>How Many Books Do you Want To Add to the Database?</h1>
        <div>
            <form action="AddBooksController" method="post">
                <span>
                    <input type="text" name="count" />
                </span>
                <span>
                    <input type="submit" value="Submit" />
                    <input type="hidden" name="index" value="formsubmit" />
                </span>
            </form>
        </div>
    </body>
</html>
