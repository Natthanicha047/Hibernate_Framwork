<%-- 
    Document   : books
    Created on : Nov 6, 2016, 6:11:09 PM
    Author     : ladye_000
--%>

<%@page import="book.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div style="background-color: #D8F0F8; width:100%;"> 
    <br>
    <a href="SearchController">Search Book By Title/</a>
    <a href="SearchByNameController">Search Book By Name/</a>
    <a href="addbook.jsp">Add new book/</a>
    <a href="ListController">List of books</a>
    <br><br>
    </div> 
    
    <center>
        <body>
            <div style="background-color: #EFF9FC; width:100%;"> 
                <br>
                <h2 align = 'center'>Books Search Form By Title</h2>
                <form name="searchForm" action="SearchController">
                    Enter Book Title : <input type="text" name="searchValue" value="" >
                    <input type="submit" value="Find Books Details" name="searchButton" />
                </form>

                <%
                    try {
                        // Create a session object if it is already not  created.
                        Books acc = (Books) session.getAttribute("searchResult");
                        if (acc != null) {
                %>
                <br>
                <table bgcolor = '#FDFEFF' border="1">
                    <tbody>
                        <tr>
                            <td bgcolor = '#FFF7B7'>Books ISBN</td>
                            <td bgcolor = '#FFFEF7'><% out.println(acc.getIsbn()); %></td>
                        </tr>

                        <tr>
                            <td bgcolor = '#FFF7B7'>Books Title</td>
                            <td bgcolor = '#FFFEF7'><% out.println(acc.getTitle()); %></td>
                        </tr>

                        <tr>
                            <td bgcolor = '#FFF7B7'>Books Price</td>
                            <td bgcolor = '#FFFEF7'><% out.println(acc.getPrice()); %></td>
                        </tr>

                    </tbody>
                </table>

                <%
                        }
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
<br><br>
        </body>
    </center>
</html>
