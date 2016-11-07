<%-- 
    Document   : addbook
    Created on : Nov 6, 2016, 6:16:23 PM
    Author     : ladye_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <div style="background-color: #FFF06A; width:100%;"> 
        <br>
        <a href="SearchController">Search Book By Title/</a>
        <a href="SearchByNameController">Search Book By Name/</a>
        <a href="addbook.jsp">Add new book/</a>
        <a href="ListController">List of books</a>
        <br><br>
    </div> 

    <center>
        <body>
            <div style="background-color: #FFFBDF; width:100%;"> 
                <br>
                <h1 align = 'center'>Add New Book</h1>                        
                <%
                    String message = request.getParameter("message");
                    if (message != null) {
                        out.println(message);
                    }%>                  
                <form name="formAddBook" action="AddBookController">   
                    <table border = '0' style = 'width: 300px' align = 'center'>
                        <tbody>
                            <tr>
                                <td> &nbsp;Title: </td>
                                <td><input type="text" name="title" value="" /></td>
                            </tr>
                            <tr>
                                <td> &nbsp;ISBN: </td>
                                <td><input type="text" name="isbn" value="" /></td>  
                            </tr>
                            <tr>
                                <td> &nbsp;Publisher Id : </td> 
                                <td><input type="text" name="publisherID" value="" /></td>     
                            </tr>
                            <tr>
                                <td> &nbsp;Category Id :</td> 
                                <td><input type="text" name="categoryID" value="" /></td>    
                            </tr>
                            <tr>
                                <td> &nbsp;Price :</td> 
                                <td><input type="text" name="price" value="" /></td>   
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <input type="submit" value="Submit" name="AddBook" /><br>           
                </form>                  
                <br><br>                  
        </body>
    </center>
</html>
