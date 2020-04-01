<%@ page import="java.util.List" %>
<%@ page import="entities.Color" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Colors</title>
</head>
<body>

<%
    List<Color> colorList = (List<Color>) request.getAttribute("colorList");

    if (colorList != null && !colorList.isEmpty()) {

        out.println("<ui>");
        for (Color color : colorList) {
            out.println("<li>" + color.getColorNumber() + " " + color.getName() + "</li>");
        }
        out.println("</ui>");
    } else out.println("<p>There are no colors yet!</p>");
%>

<%--<jsp:useBean id="colorBean" class="controller.ColorsDao"/>

<table border="1" cellpadding="8" cellspacing="0" style="margin: auto">
    <tr>
        <th>Номер</th>
        <th>Цвет</th>
        <th>Установка цвета</th>
    </tr>
        <c:forEach items="${colorList}" var="color">
            <tr>
                <td><%=%></td>
                <td><%=colorBean.getName()%></td>
            </tr>
        </c:forEach>
</table>--%>

</body>
</html>
