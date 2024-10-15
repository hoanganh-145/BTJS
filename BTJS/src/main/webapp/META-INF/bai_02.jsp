<%-- 
    Document   : bai_02
    Created on : Oct 15, 2024, 3:34:21 PM
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
        <<h1>Diện tích - Chu vi Hình Tròn</h1>
        <hr>
        <form action="bai_01.jsp" method="post">Cho biết họ tên <input type="text" name="hoten" value="" />
            <input type="submit" value="Thi hành" />  
            <input type="submit" value="Tính Toán" />
            <input type="submit" value="Tiếp tục" />
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            double cv, dt;
            if (dai != null && rong != null) {
                double d = Double.parseDouble(dai);
                double r = Double.parseDouble(rong);
                cv = (d + r) * 2;
                dt = d * r;
        %>
        <hr>
        Chu Vi:<%=cv%><br>
        Diện tích:<%=dt%>
        <% } %>
    </body>
</html>