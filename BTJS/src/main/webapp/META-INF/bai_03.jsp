<%-- 
    Document   : bai_03
    Created on : Oct 15, 2024, 3:40:31 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
            <form action="bai_03.jsp" method="post"><h1>Diện tích - Chu vi Hình Tròn</h1>
                <h2>Hãy Nhập bán kính: 
                    <input type="number" name="bankinh" value="" />
                </h2>
                <input type="submit" value="Tính toán" />
                <input type="submit" value="Tiếp tục" />
                </tr>
        </table>
        <%
            request.setCharacterEncoding("UTF-8");
            String bankinh = request.getParameter("bankinh");
            double cv, dt;
            if (bankinh != null) {
                double bk = Double.parseDouble(bankinh);
                cv = Math.PI * 2 * bk;
                dt = Math.PI * bk * bk;

        %>
        <hr>
        Chu Vi:<%=cv%><br>
        Diện tích:<%=dt%>
        <% }%>
    </body>
</html>
