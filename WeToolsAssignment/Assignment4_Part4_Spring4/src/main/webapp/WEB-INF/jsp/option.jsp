<%-- 
    Document   : option
    Created on : Mar 6, 2023, 9:15:33 PM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Browse/Add Form</title>
        <style>
            body {
                margin: 20px;
                text-align: center;
            }
            #selectedOption {
                padding: 5px;
            }
            input {
                padding: 5px;
            }
            .select-container {
                margin: 30px;
            }
            .submit-container {
                margin: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Select one Option!</h1>

        <!-- set in controller in command class -->

        <!-- In command Name add the command name from IndexFormController init() -->
        <form action="option.htm">
            <select name="options" id="selectedOption">
                <option value="add">Add Movies to DB</option>
                <option value="browse">Browse Movies in DB</option>
            </select>
            <div class="submit-container">
                <input type="submit" value="SUBMIT"/>
            </div>
        </form>
    </body>
</html>
