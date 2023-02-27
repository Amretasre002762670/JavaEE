<%-- 
    Document   : view
    Created on : Feb 13, 2023, 7:50:40 PM
    Author     : amretasrerengarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> 
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Form</title>
        <style>
            body {
                text-align: center;
            }
            .container {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
            }
        </style>
    </head>
    <body>
        <h1 margin="10px">View User Info Form</h1>
        <div class="container">
            <table border="1px solid black">
                <tr>
                    <td>First Name:</td>
                    <td>
                        <c:out value="${requestScope.UserDetails.getFirstName()}" />
                    </td>
                    <td>
                        C Tags
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <c:out value="${requestScope.UserDetails.getLastName()}" />
                    </td>
                    <td>
                        C Tags
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth:</td>
                    <td>
                        <c:set var="date" value="${requestScope.UserDetails.getDateOfBirth()}" />  
                        <fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
                        <p><c:out value="${parsedDate}" /></p>  
                    </td>
                    <td>
                        C and fmt tags
                    </td>
                </tr>
                <tr>
                    <c:set var="CurrentTime" value="<%=new java.util.Date()%>" />  
                    <td>Current Time:</td>
                    <td>
                        <fmt:formatDate type="time" value="${CurrentTime}" dateStyle="long" /> 
                    </td>
                    <td>
                        C and fmt tags
                    </td>
                </tr>
                <tr>
                    <c:set var="CurrentDate" value="<%=new java.util.Date()%>" />  
                    <td>Current Date:</td>
                    <td>
                        <fmt:formatDate type="date" value="${CurrentDate}" dateStyle="long" /> 
                    </td>
                    <td>
                        C and fmt tags
                    </td>
                </tr>
                <tr>
                    <c:set var="additional">  
                    <additionalInfo>  
                        <additional>  
                            <name>University</name>  
                            <university>Northeastern</university>  
                        </additional>  
                    </additionalInfo>  
                </c:set>  
                <x:parse xml="${additional}" var="output"/>  
                <td>University</td>:  
                <td><x:out select="$output/additionalInfo/additional/university" /></td>  
                <td>
                    C and x tags
                </td>
                </tr>
                <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                                   url="jdbc:mysql://localhost:3306/Users_Schema"  
                                   user="root"  password="amre1999"/> 
                <sql:update dataSource="${db}" var="count">  
                    INSERT INTO user_info VALUES ("${requestScope.UserDetails.getFirstName()}", "${requestScope.UserDetails.getLastName()}", "${requestScope.UserDetails.getDesignation()}", "Northeastern");  
                </sql:update>
                <sql:query dataSource="${db}" var="rs">  
                    SELECT * from user_info;  
                </sql:query>  
                <c:forEach var="table" items="${rs.rows}">  
                    <tr>  
                        <td>First Name from DB: </td>
                        <td><c:out value="${table.user_first_name}"/></td>  
                        <td>C and SQL tags</td>  
                    </tr>  
                </c:forEach>  
            </table>
        </div>

    </body>
</html>
