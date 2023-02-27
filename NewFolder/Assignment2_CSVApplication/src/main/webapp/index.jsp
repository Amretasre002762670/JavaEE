<%-- 
    Document   : indx
    Created on : Feb 5, 2023, 9:48:41 AM
    Author     : amretasrerengarajan
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            try {
            String path = request.getParameter("csv_file_path");
            Class.forName("org.relique.jdbc.csv.CsvDriver");
            out.println(path+ " path");
            String[] arrOfStr = path.split(".csv");
//            out.println(arrOfStr[0]);
            
            String url = "jdbc:relique:csv:/Users/amretasrerengarajan/Desktop/";
            
            Connection con = DriverManager.getConnection(url);
            
            Statement stm = con.createStatement();
            
            ResultSet rs = stm.executeQuery("select * from "+ arrOfStr[0]);
            out.println("<table border = '1'>");
            while(rs.next()) {
                out.println("<tr>");
                String col1 = rs.getString(1);
                String col2 = rs.getString(2);
                String col3 = rs.getString(3);
                String col4 = rs.getString(4);
                String col5 = rs.getString(5);
                String col6 = rs.getString(6);
                String col7 = rs.getString(7);
                String col8 = rs.getString(8);
                String col9 = rs.getString(9);
                String col10 = rs.getString(10);
                String col11 = rs.getString(11);
                String col12 = rs.getString(12);
                
                
                out.println("<td>" + col1 + "</td>");
                out.println("<td>" + col2 + "</td>");
                out.println("<td>" + col3 + "</td>");
                out.println("<td>" + col4 + "</td>");
                out.println("<td>" + col5 + "</td>");
                out.println("<td>" + col6 + "</td>");
                out.println("<td>" + col7 + "</td>");
                out.println("<td>" + col8 + "</td>");
                out.println("<td>" + col9 + "</td>");
                out.println("<td>" + col10 + "</td>");
                out.println("<td>" + col11 + "</td>");
                out.println("<td>" + col12 + "</td>");
                out.println("</tr>");
            }
            } catch(ClassNotFoundException ex) {
                out.println("Class Not Found Eception");
            } catch(SQLException ex) {
                out.println(ex);
            }
            
        %>
    </body>
</html>
