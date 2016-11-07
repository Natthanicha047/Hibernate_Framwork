<%-- 
    Document   : booklist
    Created on : Nov 6, 2016, 6:09:32 PM
    Author     : ladye_000
--%>

<%@page import="java.util.List"%>
<%@page import="book.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div style="background-color: #D7BDE2; width:100%;"> 
        <br>
        <a href="SearchController">Search Book By Title/</a>
        <a href="SearchByNameController">Search Book By Name/</a>
        <a href="addbook.jsp"">Add new book/</a>
        <a href="ListController">List of books</a>
        <br><br>
    </div>

    <center>
        <body>
            <div style="background-color: #F5EEF8  ; width:100%;"> 
                <br>
                <h2 align = 'center'>Books List</h2>
            <%
                try {
                    List<Books> booksList = (List<Books>) session.getAttribute("listResult");
                    if (booksList != null) {
                        //    out.println("not null");
            %>
            <table bgcolor = '#FFFF99' border="1">
                <tbody>
                    <tr>
                        <td bgcolor = '#FFFFD7'>Book ISBN</td>
                        <td bgcolor = '#FFFFD7'>Title</td>
                        <td bgcolor = '#FFFFD7'>Publisher ID</td>
                        <td bgcolor = '#FFFFD7'>Category ID</td>
                        <td bgcolor = '#FFFFD7'>Price</td>
                    </tr>
                    <%                        for (Books acc : booksList) {
                    %>

                    <tr>
                        <td bgcolor = '#FFFFFD'><% out.println(acc.getIsbn()); %></td>
                        <td bgcolor = '#FFFFFD'><% out.println(acc.getTitle()); %></td>
                        <td bgcolor = '#FFFFFD'><% out.println(acc.getPublisherId()); %></td>
                        <td bgcolor = '#FFFFFD'><% out.println(acc.getCategoryId()); %></td>
                        <td bgcolor = '#FFFFFD'><% out.println(acc.getPrice()); %></td>
                    </tr>

                    <% } %>

                </tbody>
            </table>  

            <%
                    } else {
                        out.println("return null");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("error");
                }
            %>

        </body>
    </center>
</html>
