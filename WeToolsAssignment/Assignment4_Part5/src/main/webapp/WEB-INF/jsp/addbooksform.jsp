<%-- 
    Document   : addbooksform
    Created on : Mar 7, 2023, 4:28:55 PM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Form</title>
    </head>
    <body>
        <h1>Books Form</h1>
        <form action="addbooks.htm" method="post">
            <table border="1px solid black"> 
                <tr>
                    <th>ISBN:</th>
                    <th>Book Title</th>
                    <th>Authors</th>
                    <th>Price</th>
                </tr>
                <c:forEach var="j" begin="1" end="${requestScope.count}">  
                    <tr>
                        <!--<td>ISBN:</td>-->
                        <td><input type="text" name="isbn" /></td>
                        <td><input type="text" name="title" /></td>
                        <td><input type="text" name="author" /></td>
                        <td><input type="text" name="price" /></td>
                    </tr>
<!--                    <tr>
                        <td><input type="text" name="title" /></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="author" /></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="price" /></td>
                    </tr>-->
                </c:forEach>  
            </table>
            <div>
                <input type="submit" value="Add" />
                <input type="hidden" name="index" value="formsubmit"/>
            </div>
        </form>


    </body>
</html>
