<%-- 
    Document   : index.jsp
    Created on : Feb 6, 2023, 8:12:48 AM
    Author     : amretasrerengarajan
--%>

<%@page import="java.io.FileNotFoundException"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import="org.apache.poi.ss.usermodel.FormulaEvaluator"%>
<%@page import="org.apache.poi.ss.usermodel.Cell"%>
<%@page import="org.apache.poi.ss.usermodel.Row"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.poi.ss.usermodel.Sheet"%>
<%@page import="org.apache.poi.xssf.usermodel.XSSFWorkbook"%>
<%@page import="org.apache.poi.ss.usermodel.Workbook"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>XL Page</title>
    </head>
    <body>
        <%
            try {
                String path = request.getParameter("csv_file_path");

                String excelFilePath = "/Users/amretasrerengarajan/Desktop/" + path;
                FileInputStream inputStream = new FileInputStream(new File(excelFilePath));

                HSSFWorkbook workbook = new HSSFWorkbook(inputStream);
                // creating a Sheet object to retrieve the object
                HSSFSheet firstSheet = workbook.getSheetAt(0);

                FormulaEvaluator formulaEvaluator = workbook.getCreationHelper()
                        .createFormulaEvaluator();
                out.println("<table border=1>");
                for (Row row : firstSheet) // iteration over row using for each loop
                {
                    out.println("<tr>");
                    for (Cell cell : row) // iteration over cell using for each loop
                    {

                        switch (formulaEvaluator.evaluateInCell(cell).getCellType()) {
                            case NUMERIC:   // field that represents numeric cell type
                                // getting the value of the cell as a number
                                out.println("<td>" + cell.getNumericCellValue() + "</td>");
                                break;
                            case STRING:    // field that represents string cell type
                                // getting the value of the cell as a string
                                out.println("<td>" + cell.getStringCellValue() + "</td>");
                                break;
                        }

                    }
                    out.println("</tr>");
                }
                out.println("</table>");
                workbook.close();
                inputStream.close();
            } catch (FileNotFoundException ex) {
                out.println("File Not Found Exception Error");
            }

        %>
    </body>
</html>
