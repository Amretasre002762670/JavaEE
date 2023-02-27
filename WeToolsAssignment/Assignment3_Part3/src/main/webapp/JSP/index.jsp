<%-- 
    Document   : index
    Created on : Feb 13, 2023, 8:23:10 PM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Form</title>
        <style>
            body {
                text-align: center;
                .container {
                    display:flex;
                }
                .button_container {
                    padding: 10px;
                }
                .element_container {
                    padding: 10px;
                }
            }
        </style>
    </head>
    <body>
        <h1>User Form</h1>
        <div class='container'>
            <form action="userController" method="POST">
                <div class='element_container'>
                    <label>Enter your First Name:</label>
                    <input type="text" name="firstname" />
                </div>
                <div class='element_container'>
                    <label>Enter your Last Name:</label>
                    <input type="text" name="lastname" />
                </div>
                <div class='element_container'>
                    <label>Enter your Date of Birth:</label>
                    <input type="text" name="dob" />
                </div>
                <div class='element_container'>
                    <label>Enter your Designation:</label>
                    <input type="text" name="designation" />
                </div>
                <div class='button_container'>
                    <input type="submit" value="Add" />
                </div>

                <!-- Hidden element to check if the page is loaded for the first time -->
                <input type="hidden" name="index" value="formSubmit" />

            </form>
        </div>

    </body>
</html>
