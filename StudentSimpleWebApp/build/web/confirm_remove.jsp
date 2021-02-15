<%-- 
    Document   : confirm_remove
    Created on : Feb 15, 2021, 10:31:36 AM
    Author     : luksorn
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Remove Student</title>
    </head>
    <body>
       <%
            Student std = (Student) session.getAttribute("student");
            
        %>
        <form name="confirmRemove" action="ConfirmRemoveController">
            ID: <%= std.getId() %> </br>
            Name: <%= std.getName() %> </br>
            GPA: <%= std.getGpa() %> </br>
            <input type="submit" value="Delete" name="delete" />
            <input type="submit" value="Cancel" name="cancel" />
            
        </form>
    </body>
</html>
